# laporan — Laporan Proyek 2 Coneckin (LaTeX)

Repositori sumber LaTeX untuk **Laporan Akhir Proyek 2 Coneckin** dengan kompilasi dan rilis PDF otomatis melalui GitHub Actions.

- **Unduh PDF Terbaru:** https://github.com/coneckin/laporan/releases/latest/download/laporan-coneckin.pdf
- **Semua Rilis:** https://github.com/coneckin/laporan/releases

## Struktur Repositori

```text
laporan/
├── .github/workflows/release-pdf.yml   # Auto-compile LaTeX & auto-release PDF (v1.0.x)
├── config/metadata.tex                 # Judul, identitas penulis, NIM, & dosen pembimbing
├── bab/
│   ├── halaman-depan.tex               # Cover, Abstrak ID/EN, Kata Pengantar
│   ├── bab1-pendahuluan.tex            # Latar belakang, rumusan masalah, tujuan, ruang lingkup
│   ├── bab2-tinjauan-pustaka.tex       # Captive portal, Hybrid CRUD, AES-GCM, Croot.js, CI/CD
│   ├── bab3-analisis-perancangan.tex   # Arsitektur, rancangan CRUD, keamanan, & CI/CD
│   ├── bab4-implementasi-pengujian.tex # Hasil implementasi, 128 tes (>95% coverage), & verifikasi live
│   └── bab5-penutup.tex                # Kesimpulan & saran
├── images/                             # Folder gambar bukti & logo
├── main.tex                            # Dokumen utama LaTeX
└── referensi.bib                       # Daftar pustaka BibTeX
```

## Cara Penggunaan

1. Lengkapi data kelompok dan dosen pembimbing pada `config/metadata.tex`.
2. Tambahkan tangkapan layar bukti ke folder `images/` dan aktifkan blok gambar pada `bab/bab4-implementasi-pengujian.tex`.
3. `git commit` dan `git push origin main` — GitHub Actions akan otomatis mengompilasi `main.tex` menjadi `laporan-coneckin.pdf` dan menerbitkannya ke GitHub Releases dengan tag berurutan (`v1.0.x`).
