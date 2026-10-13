# FARHAN & AMEL — LUXURY SILHOUETTE ENGAGEMENT INVITATION

Tanggal: Jumat, **25 Desember 2026** • Pukul **13.00 WIB**  
Lokasi: **Jl. Pasar Baru, Panyabungan Barat, Sumatera Utara**

## Fitur
- **Animasi siluet pasangan bergandengan tangan** dengan golden floral arch / lengkungan bunga, gaya cream–champagne. Ini adalah ilustrasi siluet simbolis, bukan potret wajah sebenarnya.
- Cover yang dibuka tamu, animasi halus, layout responsive.
- **QS. Ar-Rum ayat 21**: teks Arab, terjemahan Indonesia, dan keterangan sumber.
- Countdown, tombol lokasi Google Maps, galeri dekoratif, dan musik **“Nanti Kita Seperti Ini” — Batas Senja** via Spotify Player.
- Buku tamu / ucapan & RSVP.

## Cara membuka website
Klik dua kali file `index.html` untuk pratinjau. Koneksi internet dibutuhkan untuk Google Fonts, foto latar dekoratif Unsplash, pemutar Spotify, serta Supabase bila dihubungkan.

## Cara unggah ke GitHub dan Vercel
1. Ekstrak ZIP. Masukkan `index.html` ke direktori root repository GitHub yang terhubung ke Vercel.
2. Commit, lalu tunggu proses deploy Vercel.
3. Buka link Vercel melalui HP; tekan tombol **Buka Undangan** pada cover.

## Penting: Buku tamu tersimpan online
Tampilan buku tamu siap pakai tetapi **belum tersambung database**. Tanpa Supabase, data RSVP/ucapan hanya disimpan di perangkat/browser pembuatnya (mode pratinjau), bukan dilihat semua tamu. Untuk mengaktifkan penyimpanan lintas HP:

1. Di Supabase, buat project atau pakai project yang sudah ada.
2. Buka **SQL Editor** dan jalankan file `supabase.sql`.
3. Edit `index.html`, cari pengaturan `CONFIG`, isi `supabaseUrl` dan `supabaseAnonKey` menggunakan publishable key / anon public key. **Jangan** isi service role key atau password database.
4. Deploy ulang. Coba isi ucapan dari dua HP berbeda.

Buku tamu publik tidak memakai login; moderation/pencegahan spam disarankan bila situs disebarkan luas.

## Musik Spotify
Pemutar Spotify dari track **Nanti Kita Seperti Ini — Batas Senja** telah disematkan. Musik memerlukan aksi Play oleh tamu; pemutaran full-track tergantung izin dan akses Spotify masing-masing pengguna. Autoplay lagu penuh **tidak dijamin** oleh Spotify/browser.

## Personalisasi
- Nama penerima di link: `https://domainmu.vercel.app/?to=Nama%20Tamu`
- Nama, tanggal, lokasi, warna: ubah bagian HTML / CONFIG / CSS.
- Siluet sudah berbentuk SVG inline di `index.html`, sehingga tidak membutuhkan file gambar atau aplikasi tambahan.
- Foto di galeri saat ini foto bunga dekoratif, **bukan foto Farhan & Amel**. Untuk foto sendiri, ganti background CSS `.photo-tile.one` dan seterusnya.
