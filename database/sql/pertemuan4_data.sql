USE praktikum_web_2401020051;

INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik Informatika'),
    ('Teknik Elektro'),
    ('Teknik Perkapalan');

INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020051', 'Abdul Hafidz',
     'abdul@gmail.com', 21, 1),
    ('2401010013', 'Amel Novelia',
     'amel@gmail.com', 20, 2),
    ('2401030005', 'Bayu Dwi Pratama',
     'bayu@gmail.com', 23, 3),
    ('2401090765', 'Data Sementara',
     'sementara@gmail.com', 22, 1);

UPDATE mahasiswa
SET email = 'abdul.hafidz@gmail.com'
WHERE nim = '2401020051';

DELETE FROM mahasiswa
WHERE nim = '2401090765';

SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;
