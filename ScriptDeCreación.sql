CREATE DATABASE IF NOT EXISTS Users;
USE Users;

CREATE TABLE IF NOT EXISTS access_type (
    access_type_id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    description VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS users (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    user_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    salt VARCHAR(255),
    x_access_type_id BIGINT NOT NULL,
    -- f2a_enabled VARCHAR(255),
    -- f2a_secret VARCHAR(255)
    CONSTRAINT fk_access_type FOREIGN KEY (x_access_type_id) REFERENCES access_type(access_type_id)
)AUTO_INCREMENT = 1;
CREATE TABLE IF NOT EXISTS users_media (
	media_id BIGINT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    x_user_id BIGINT NOT NULL,
    media_reference VARCHAR(255) NOT NULL,
    CONSTRAINT fk_user_id FOREIGN KEY (x_user_id) REFERENCES users(user_id)
);




