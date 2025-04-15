PRAGMA foreign_keys = ON;

CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    email TEXT UNIQUE NOT NULL,
    name TEXT NOT NULL,
    password_hash TEXT NOT NULL,
    role TEXT CHECK(role IN ('admin','participant')) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    description TEXT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    registration_start DATE NOT NULL,
    registration_end DATE NOT NULL,
    quota INTEGER NOT NULL CHECK(quota >= 0),
    is_paid BOOLEAN NOT NULL,
    type TEXT CHECK(type IN ('workshop','training')) NOT NULL,
    status TEXT CHECK(status IN ('open','closed')) DEFAULT 'open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CHECK (
        start_date <= end_date
        AND registration_start <= registration_end
        AND registration_end <= start_date
    )
);

CREATE TABLE workshop_details (
    event_id INTEGER PRIMARY KEY,
    speaker TEXT NOT NULL,
    location TEXT NOT NULL,
    FOREIGN KEY(event_id) REFERENCES events(id) ON DELETE CASCADE
);

CREATE TABLE training_details (
    event_id INTEGER PRIMARY KEY,
    material_link TEXT NOT NULL,
    duration INTEGER NOT NULL CHECK(duration > 0),
    FOREIGN KEY(event_id) REFERENCES events(id) ON DELETE CASCADE
);

CREATE TABLE registrations (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER NOT NULL,
    event_id INTEGER NOT NULL,
    status TEXT CHECK(status IN ('pending','confirmed','rejected')) DEFAULT 'pending',
    payment_status TEXT CHECK(payment_status IN ('paid','unpaid')) DEFAULT 'unpaid',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY(event_id) REFERENCES events(id) ON DELETE CASCADE,
    UNIQUE(user_id, event_id)
);

CREATE TABLE verification_queue (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    registration_id INTEGER NOT NULL,
    admin_id INTEGER NOT NULL,
    action TEXT CHECK(action IN ('approve','reject')) NOT NULL,
    processed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(registration_id) REFERENCES registrations(id) ON DELETE CASCADE,
    FOREIGN KEY(admin_id) REFERENCES users(id) ON DELETE CASCADE
);
