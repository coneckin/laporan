# Laporan Proyek 2 - Coneckin

Laporan Proyek 2 Program Studi Sarjana Terapan Teknik Informatika, Universitas Logistik dan Bisnis Internasional (ULBI) menggunakan LaTeX.

Disusun sesuai dengan kriteria panduan **Software Engineer** pada [Project Instruction](https://ll.my.id/instruction/).

## Struktur Berkas

```
laporan/
├── .github/
│   └── workflows/
│       └── release.yml        # CI/CD otomatis: compile LaTeX & auto release PDF
├── chapters/
│   ├── ringkasan.tex          # Ringkasan eksekutif
│   ├── bab1.tex               # Pendahuluan & profil Software Engineer
│   ├── bab2.tex               # Tinjauan pustaka & landasan teori
│   ├── bab3.tex               # Analisis & perancangan arsitektur
│   ├── bab4.tex               # Implementasi & pengujian (acceptance test)
│   ├── bab5.tex               # Kesimpulan & saran
│   └── lampiran.tex           # Lampiran bukti repositori & CI/CD
├── figures/                   # Diagram arsitektur & tangkapan layar
├── references.bib             # Daftar pustaka (BibTeX IEEE format)
├── main.tex                   # Dokumen induk LaTeX
├── compile-latex.ps1          # Script kompilasi lokal Windows PowerShell
└── README.md
```

## Alur Kerja Otomatisasi (CI/CD)

Setiap perubahan yang di-*push* ke cabang `main` akan:
1. Menjalankan GitHub Actions workflow `release.yml`.
2. Mengompilasi `main.tex` menggunakan TeXLive / `xu-cheng/latex-action`.
3. Menghasilkan tag rilis otomatis `v1.0.<nomor_build>`.
4. Menerbitkan rilis baru di GitHub Releases dengan menyertakan `Laporan-Proyek2-Coneckin.pdf`.
