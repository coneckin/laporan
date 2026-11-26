# Script Kompilasi Dokumen LaTeX Laporan Proyek 2
# Jalankan di terminal PowerShell: .\compile-latex.ps1

$DocName = "main"
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host " Mengkompilasi Laporan Proyek 2 (LaTeX)... " -ForegroundColor Cyan
Write-Host "==========================================" -ForegroundColor Cyan

pdflatex -interaction=nonstopmode $DocName.tex
bibtex $DocName
pdflatex -interaction=nonstopmode $DocName.tex
pdflatex -interaction=nonstopmode $DocName.tex

if (Test-Path "$DocName.pdf") {
    Copy-Item "$DocName.pdf" "Laporan-Proyek2-Coneckin.pdf" -Force
    Write-Host "[OK] Berhasil menghasilkan Laporan-Proyek2-Coneckin.pdf" -ForegroundColor Green
} else {
    Write-Host "[FAIL] Gagal menghasilkan PDF. Periksa $DocName.log" -ForegroundColor Red
}
