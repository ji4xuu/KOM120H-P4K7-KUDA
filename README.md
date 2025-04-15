# KUDA — CLI Workshop & Pelatihan

**KUDA** adalah aplikasi berbasis Command‑Line Interface untuk manajemen workshop dan pelatihan. Dirancang ringan, mudah dikonfigurasi, dan menggunakan SQLite sebagai database embedded.

Contributor :

1. ji4xuu
2. Mutia
3. Kasy
4. Hanifah

## Fitur Utama

- **Role-Based Menu**  
  - **Admin**: Login dengan username & password, verifikasi pendaftaran, kelola jadwal, dan laporan antrean.  
  - **Peserta**: Register & login akun, lihat jadwal, daftar workshop/pelatihan, pantau status pendaftaran.

- **Manajemen Peserta**  
  - Registrasi akun dengan data diri, email, dan password.  
  - Login dan akses menu utama:  
    1. Jadwal Workshop  
    2. Jadwal Pelatihan  
    3. Pendaftaran Workshop  
    4. Kegiatan Diikuti (status dan detail)  
    5. Logout

- **Manajemen Admin**  
  - Proses verifikasi & penolakan pendaftar.  
  - Laporan antrean dan daftar peserta per workshop/pelatihan.  
  - Tambah jadwal workshop/pelatihan dengan detail (judul, tanggal, kuota, tipe, deskripsi).  
  - Tampilkan & sortir daftar kegiatan berdasarkan deadline, topik, atau waktu pelaksanaan.

## Prasyarat

- C++17 compiler (g++, clang++)  
- CMake ≥ 3.10  
- SQLite3 development library

## Instalasi & Build

```bash
[git clone https://github.com/username/kuda.git](https://github.com/ji4xuu/KOM120H-P4K7-KUDA.git)
cd KOM120H-P4K7-KUDA
mkdir build && cd build
cmake ..
make
```

Database SQLite (`kuda.db`) akan otomatis dibuat di folder `data/` saat pertama dijalankan.

## Struktur Direktori

```
KOM120H-P4K7-KUDA/
├── CMakeLists.txt          # Konfigurasi build
├── README.md               # Dokumentasi
├── data/                   # Database & file konfigurasi
│   └── kuda.db             # Database SQLite
├── include/                # Header files
│   ├── data_structures/    # Struktur data khusus
│   │   ├── queue.h         # Queue untuk pendaftaran
│   │   ├── stack.h         # Stack untuk undo
│   │   └── algorithms.h    # Sorting & searching
│   ├── models/             # Model data
│   │   ├── user.h          # Base class User
│   │   ├── workshop.h      # Model Workshop
│   │   └── registration.h  # Model Pendaftaran
│   └── utils.h             # Fungsi utilitas (hashing, input validation)
├── src/                    # Source code
│   ├── main.cpp            # Entry point
│   ├── database/           # Database handler
│   │   ├── database.h
│   │   └── database.cpp
│   ├── services/           # Business logic
│   │   ├── admin_service.h
│   │   ├── participant_service.h
│   │   └── auth_service.h
│   ├── menus/              # UI components
│   │   ├── admin_menu.h
│   │   └── participant_menu.h
│   └── utils/              # Implementasi utilitas
│       ├── hashing.cpp     # Hashing password (BCrypt)
│       └── validation.cpp  # Validasi input
└── tests/                  # Unit tests
    ├── test_queue.cpp
    └── test_sorting.cpp
```

## Penggunaan

```bash
./kuda
```

1. Pilih **Admin** atau **Peserta**  
2. Ikuti prompt untuk register/login  
3. Navigasi menu sesuai role

---

> **Catatan:** Semua perubahan disimpan secara otomatis ke database.  
> Untuk kontribusi, silakan buka _pull request_ di repository utama.

