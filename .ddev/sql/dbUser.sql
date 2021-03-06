### CREATE USER IF NOT EXISTS 'db'@'db';
GRANT ALL PRIVILEGES ON *.* TO 'db'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'db'@'db';
GRANT ALL PRIVILEGES ON *.* TO 'db'@'localhost';

CREATE USER IF NOT EXISTS 'ddev'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'ddev'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'ddev'@'db';
GRANT ALL PRIVILEGES ON *.* TO 'ddev'@'localhost';
SET PASSWORD FOR 'ddev'@'%' = PASSWORD('ddev');

CREATE USER IF NOT EXISTS 'ddev'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'ddev'@'localhost';
SET PASSWORD FOR 'ddev'@'localhost' = PASSWORD('ddev');

FLUSH PRIVILEGES;
-- CREATE DATABASE dev_local CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
CREATE DATABASE IF NOT EXISTS dev_local CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
CREATE DATABASE IF NOT EXISTS dev CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
