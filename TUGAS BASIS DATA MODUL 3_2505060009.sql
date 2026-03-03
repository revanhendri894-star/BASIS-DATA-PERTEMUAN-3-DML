-- Tugas Modul 3 DBMS
-- NPM: 2505060009

-- 1. Membuat database
CREATE DATABASE IF NOT EXISTS informasi_mahasiswa;
USE informasi_mahasiswa;

-- 2. Membuat tabel data_mahasiswa
CREATE TABLE IF NOT EXISTS data_mahasiswa (
    NPM CHAR(5) NOT NULL PRIMARY KEY,
    NAMA VARCHAR(25) NOT NULL,
    TEMPAT_LAHIR VARCHAR(30) NOT NULL,
    TANGGAL_LAHIR DATE NOT NULL,
    JENIS_KELAMIN ENUM('L', 'P') NOT NULL,
    NO_HP VARCHAR(25) NOT NULL
);

-- 3. Insert data mahasiswa
INSERT INTO data_mahasiswa (NPM, NAMA, TEMPAT_LAHIR, TANGGAL_LAHIR, JENIS_KELAMIN, NO_HP)
VALUES
('25001', 'Emmanuel Revan', 'Bantul', '2006-12-18', 'L', '081234567'),
('25002', 'Emanuel Henji', 'Magelang', '2006-01-12', 'L', '08871234'),
('25003', 'Angger Nafula', 'Magelang', '2005-11-22', 'L', '089456789'),
('25004', 'Kenji Muh', 'Borobudur', '2006-01-01', 'L', '0881235670'),
('25005', 'Raihan A', 'Magelang', '2006-03-06', 'L', '089765432'),
('25006', 'Shinta S', 'Yogyakarta', '2006-05-18', 'P', '088234789');

-- 4. Update data (mengubah nama NPM 25003)
UPDATE data_mahasiswa SET NAMA = 'Angger Naufal' WHERE NPM = '25003';

-- 5. Delete data (menghapus NPM 25004)
DELETE FROM data_mahasiswa WHERE NPM = '25004';

-- 6. Menampilkan data laki-laki (NPM, Nama, No_HP)
SELECT NPM, NAMA, NO_HP FROM data_mahasiswa WHERE JENIS_KELAMIN = 'L';

-- 7. Menampilkan semua data dan semua kolom
SELECT * FROM data_mahasiswa;