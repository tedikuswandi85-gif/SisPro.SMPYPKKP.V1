-- SISPRO v7.0 DATABASE SCHEMA

-- 1. Tabel Siswa
CREATE TABLE IF NOT EXISTS students (
    nisn text PRIMARY KEY,
    nama text NOT NULL,
    kelas text,
    no_wa_ortu text
);

-- 2. Tabel Guru
CREATE TABLE IF NOT EXISTS teachers (
    id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
    nama_guru text,
    nip text,
    mapel_utama text
);

-- 3. Tabel Perpustakaan (Inventaris Buku)
CREATE TABLE IF NOT EXISTS books (
    id serial PRIMARY KEY,
    isbn text UNIQUE,
    judul text NOT NULL,
    penulis text,
    kategori text,
    stok int DEFAULT 0
);

-- 4. Tabel Peminjaman Buku
CREATE TABLE IF NOT EXISTS loans (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    buku_id int REFERENCES books(id),
    siswa_nisn text REFERENCES students(nisn),
    tanggal_pinjam date DEFAULT CURRENT_DATE,
    status text DEFAULT 'Dipinjam'
);

-- 5. Tabel Pengumuman
CREATE TABLE IF NOT EXISTS announcements (
    id serial PRIMARY KEY,
    title text,
    content text,
    author text,
    created_at timestamptz DEFAULT now()
);