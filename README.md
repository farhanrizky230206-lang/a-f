# UNDANGAN FARHAN & AMEL — LINK TAMU PERSONAL

Website tunangan dengan animasi siluet pegangan tangan, floral arch emas, ayat QS. Ar-Rum:21, Spotify “Nanti Kita Seperti Ini” — Batas Senja, countdown, dan buku tamu.

## Cara pasang
1. Unggah `index.html`, `buat-link.html`, dan (opsional) `supabase.sql` ke root repository GitHub yang tersambung ke Vercel.
2. Deploy Vercel seperti biasa, lalu buka `https://DOMAIN-KAMU/buat-link.html`.
3. Di halaman pembuat link, masukkan alamat website Vercel dan daftar nama penerima **satu per baris**.
4. Tekan **Buat Link Undangan**, lalu **Salin Link** atau **WhatsApp** untuk setiap nama.

Contoh berdasarkan domain yang terlihat di screenshot sebelumnya:
- Tsaqif & Partner: `https://a-f-three.vercel.app/?to=Tsaqif%20%26%20Partner`
- Khalil & Partner: `https://a-f-three.vercel.app/?to=Khalil%20%26%20Partner`

**Catatan:** Bila domain kamu berubah, gunakan domain yang benar pada halaman pembuat link. Nama Farhan & Amel tidak berubah; hanya sapaan kepada penerima yang berubah. Nama penerima juga tampil di halaman utama setelah cover dibuka. Tamu bisa mengedit isian Nama pada RSVP jika perlu.

## Tanpa halaman pembuat link
Tambahkan `?to=Nama%20Tamu` pada URL utama. Tanda `&` harus diubah menjadi `%26` atau gunakan halaman pembuat link agar ter-encode otomatis.

## WhatsApp preview
Karena `index.html` adalah website statis, *preview kartu link WhatsApp* bisa tetap bertuliskan “Farhan & Amel”; **nama penerima terlihat saat website dibuka**. Untuk preview WhatsApp yang berbeda per penerima diperlukan URL yang benar-benar disajikan secara dinamis pada sisi server.

## Supabase (opsional)
File `supabase.sql` disertakan. Jalankan di SQL Editor Supabase, lalu isi `CONFIG.supabaseUrl` dan `CONFIG.supabaseAnonKey` di `index.html`. Tanpa Supabase, RSVP dan ucapan masih hanya disimpan sebagai pratinjau di browser itu sendiri, belum tersinkronisasi antar tamu. Jangan pernah mengunggah service-role key ke website.

## Spotify
Pengunjung harus menekan Play pada embed Spotify. Pemutaran lagu penuh bergantung pada akses Spotify mereka dan aturan browser.
