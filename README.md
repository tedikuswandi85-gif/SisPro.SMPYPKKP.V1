\# 🎓 SISPRO v7.0 - Ultimate School Management System



SISPRO adalah sistem administrasi sekolah terintegrasi berbasis web yang dirancang untuk efisiensi pengelolaan data sekolah, kehadiran, nilai, hingga perpustakaan.



\## ✨ Fitur Utama

\- \*\*Role-Based Auth\*\*: Akses berbeda untuk Admin Utama dan Pustakawan.

\- \*\*Dashboard Visual\*\*: Grafik statistik kehadiran dan nilai akademik (Chart.js).

\- \*\*Modul Perpustakaan\*\*: Manajemen inventaris buku dan pelacakan peminjaman.

\- \*\*Manajemen Siswa\*\*: Database terpadu dengan integrasi WhatsApp ke orang tua.

\- \*\*Real-time Database\*\*: Didukung oleh Supabase (PostgreSQL).



\## 🛠️ Cara Setup (Deployment)

1\.  \*\*Database\*\*: Buat proyek di \[Supabase](https://supabase.com/). Jalankan query dari file `database\_setup.sql` di SQL Editor.

2\.  \*\*API Key\*\*: Buka file `index.html` dan ganti konstanta `SB\_URL` serta `SB\_KEY` dengan API Key dari proyek Supabase Anda.

3\.  \*\*Authentication\*\*: Daftarkan akun di menu \*\*Authentication\*\* di Supabase (Contoh: `admin@sekolah.id` dan `pustaka@sekolah.id`).

4\.  \*\*GitHub Pages\*\*: Unggah semua file ke GitHub dan aktifkan \*\*GitHub Pages\*\* di menu Settings repositori.



\## 🔑 Hak Akses

\- \*\*Administrator\*\*: Memiliki akses penuh ke semua modul.

\- \*\*Pustakawan\*\*: Memiliki akses terbatas hanya ke Dashboard dan Perpustakaan (dideteksi melalui email yang mengandung kata 'pustaka').

