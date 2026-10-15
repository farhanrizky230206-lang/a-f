-- Jalankan di Supabase > SQL Editor > New query > Run.
-- Buku tamu undangan Farhan & Amel.
-- Ucapan & nama tamu adalah informasi publik untuk para pengunjung undangan.

create table if not exists public.wishes (
  id bigint generated always as identity primary key,
  guest_name varchar(80) not null check (length(trim(guest_name)) between 2 and 80),
  attendance varchar(20) not null check (attendance in ('Hadir', 'Tidak hadir', 'Masih ragu')),
  message varchar(800) not null default '',
  created_at timestamptz not null default now()
);

create index if not exists wishes_created_at_idx on public.wishes (created_at desc, id desc);

alter table public.wishes enable row level security;

-- Undangan publik: pengunjung hanya boleh melihat dan menambahkan pesan.
-- Tidak ada izin mengubah atau menghapus lewat website publik.
drop policy if exists "Guests can read wishes" on public.wishes;
create policy "Guests can read wishes" on public.wishes for select to anon, authenticated using (true);

drop policy if exists "Guests can leave wishes" on public.wishes;
create policy "Guests can leave wishes" on public.wishes for insert to anon, authenticated
  with check (length(trim(guest_name)) between 2 and 80 and length(message) <= 800);

revoke all on public.wishes from anon, authenticated;
grant select (id, guest_name, attendance, message, created_at) on public.wishes to anon, authenticated;
grant insert (guest_name, attendance, message) on public.wishes to anon, authenticated;
-- Identitas BIGINT membutuhkan hak penggunaan sequence terkait.
grant usage on sequence public.wishes_id_seq to anon, authenticated;

-- Jika perlu menghapus pesan yang tidak pantas, gunakan Supabase > Table Editor
-- dengan hak administrator, bukan dari browser pengunjung.
