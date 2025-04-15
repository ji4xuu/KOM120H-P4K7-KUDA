#!/bin/bash

# Buat file di root proyek
touch CMakeLists.txt


# Buat folder data dan file di dalamnya
mkdir -p data


# Buat folder src dan subfoldernya
mkdir -p src/core
mkdir -p src/models
mkdir -p src/auth
mkdir -p src/menus
mkdir -p src/services

# Buat file di dalam src
touch src/main.cpp

# Buat file di dalam src/core
touch src/core/database.h
touch src/core/database.cpp
touch src/core/utils.h
touch src/core/utils.cpp

# Buat file di dalam src/models
touch src/models/user.h
touch src/models/admin.h
touch src/models/participant.h
touch src/models/workshop.h
touch src/models/training.h
touch src/models/registration.h

# Buat file di dalam src/auth
touch src/auth/auth.h
touch src/auth/auth.cpp

# Buat file di dalam src/menus
touch src/menus/menu.h
touch src/menus/main_menu.h
touch src/menus/admin_menu.h
touch src/menus/participant_menu.h

# Buat file di dalam src/services
touch src/services/admin_service.h
touch src/services/participant_service.h
touch src/services/workshop_service.h

# Buat folder tests dan file di dalamnya
mkdir -p tests
touch tests/test_main.cpp

echo "Struktur direktori dan file telah dibuat di folder kuda."