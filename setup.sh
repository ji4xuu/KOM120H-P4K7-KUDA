#!/bin/bash

# Buat folder utama (jika belum ada)
mkdir -p kuda

# Buat file di root proyek
touch kuda/CMakeLists.txt
touch kuda/README.md

# Buat folder data dan file di dalamnya
mkdir -p kuda/data
touch kuda/data/kuda.db

# Buat folder src
mkdir -p kuda/src

# Buat file di dalam src
touch kuda/src/main.cpp
touch kuda/src/db.h
touch kuda/src/db.cpp
touch kuda/src/menu.h
touch kuda/src/menu.cpp
touch kuda/src/auth.h
touch kuda/src/auth.cpp
touch kuda/src/admin.h
touch kuda/src/admin.cpp
touch kuda/src/workshop.h
touch kuda/src/workshop.cpp

# Buat folder models di dalam src
mkdir -p kuda/src/models

# Buat file di dalam models
touch kuda/src/models/user.h
touch kuda/src/models/admin_model.h
touch kuda/src/models/workshop_model.h
touch kuda/src/models/training_model.h
touch kuda/src/models/registration_model.h

echo "Struktur direktori dan file telah dibuat."
