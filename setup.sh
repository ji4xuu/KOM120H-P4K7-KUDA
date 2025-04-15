#!/bin/bash

# Buat file di root proyek
touch CMakeLists.txt


# Buat folder data dan file di dalamnya
#mkdir -p data
mkdir -p src
mkdir -p include
mkdir -p tests

# Buat subfolder include
mkdir -p include/data_structures
mkdir -p include/models

# Buat file di dalam include
touch include/utils.h

# Buat file di dalam include/data_structures
touch include/data_structures/queue.h
touch include/data_structures/stack.h
touch include/data_structures/algorithms.h

# Buat file di dalam include/models
touch include/models/user.h
touch include/models/workshop.h
touch include/models/registration.h

# Buat subfolder src
mkdir -p src/database
mkdir -p src/services
mkdir -p src/menus
mkdir -p src/utils

# Buat file di dalam src
touch src/main.cpp

# Buat file di dalam src/database
touch src/database/database.h
touch src/database/database.cpp

# Buat file di dalam src/services
touch src/services/admin_service.h
touch src/services/participant_service.h
touch src/services/auth_service.h

# Buat file di dalam src/menus
touch src/menus/admin_menu.h
touch src/menus/participant_menu.h

# Buat file di dalam src/utils
touch src/utils/hashing.cpp
touch src/utils/validation.cpp

# Buat file di dalam tests
touch tests/test_queue.cpp
touch tests/test_sorting.cpp

echo "Struktur direktori dan file telah dibuat di folder kuda."