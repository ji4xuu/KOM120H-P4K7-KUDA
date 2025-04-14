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
    4. Kegiatan Diikuti (status, detail, kursi)  
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
git clone https://github.com/username/kuda.git
cd kuda
mkdir build && cd build
cmake ..
make
```

Database SQLite (`kuda.db`) akan otomatis dibuat di folder `data/` saat pertama dijalankan.

## Struktur Direktori

```
kuda/
├── CMakeLists.txt
├── README.md
├── data/
│   └── kuda.db
└── src/
    ├── main.cpp
    ├── db.h
    ├── db.cpp
    ├── menu.h
    ├── menu.cpp
    ├── auth.h
    ├── auth.cpp
    ├── admin.h
    ├── admin.cpp
    ├── workshop.h
    ├── workshop.cpp
    └── models/
        ├── user.h
        ├── admin_model.h
        ├── workshop_model.h
        ├── training_model.h
        └── registration_model.h
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

