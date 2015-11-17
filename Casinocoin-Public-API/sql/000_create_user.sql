CREATE DATABASE csc_public_api;
CREATE USER 'csc_public'@'%' IDENTIFIED BY 'password';
GRANT ALL ON csc_public_api.* to 'csc_public'@'%';