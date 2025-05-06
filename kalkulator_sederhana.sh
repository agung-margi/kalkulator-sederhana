#!/bin/bash

while true; do
  echo "=== Kalkulator Sederhana ==="
  echo "1. Penjumlahan"
  echo "2. Pengurangan"
  echo "3. Perkalian"
  echo "4. Pembagian"
  echo "5. Keluar"
  echo -n "Pilih operasi (1-5): "
  read operasi

  #keluar
  if [ "$operasi" -eq 5 ]; then
    echo "Keluar dari program."
    break
  fi

  #inputan
  echo -n "Masukkan angka pertama: "
  read angka1
  echo -n "Masukkan angka kedua: "
  read angka2

  #operasi hitungan
  case $operasi in
    1)
      hasil=$((angka1 + angka2))
      echo "Hasil Penjumlahan: $hasil"
      ;;
    2)
      hasil=$((angka1 - angka2))
      echo "Hasil Pengurangan: $hasil"
      ;;
    3)
      hasil=$((angka1 * angka2))
      echo "Hasil Perkalian: $hasil"
      ;;
    4)
      if [ "$angka2" -ne 0 ]; then
        hasil=$(echo "scale=2; $angka1 / $angka2" | bc)
        echo "Hasil Pembagian: $hasil"
      else
        echo "Error: Pembagian dengan nol tidak diperbolehkan."
      fi
      ;;
    *)
      echo "Pilihan tidak valid. Silakan coba lagi."
      ;;
  esac

  echo ""
done
