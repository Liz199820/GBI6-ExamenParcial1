#Ejercicio 1.10.1

#1. Cambio de directorio  a CSB/unix/sandbox

cd Documents/CSB/unix/sandbox

#2. Comando para saber el tamaño del documento

$ ls -lh ../data/Marra2014_data.fasta

#3. Se creó una copia de Marra2014_data.fasta en sandbox

$ cp ../data/Marra2014_data.fasta my_file.fasta
ls

#4. ¿Agregué comando para contar cuántos contigs se clasifican como isogroup00036?
grep -c isogroup00036 my_file.fasta

#5. Reemplace el delimitador original "dos espacios" por una coma
cat my_file.fasta | tr -s "  " "," | head -n 5

#6. ¿Agregué comando para contar cuántos isogrupos únicos hay en el archivo?
grep ">" my_file.fasta | head -n 5
grep '>' my_file.fasta | cut -d ',' -f 4 | sort | uniq | wc -l

#7. ¿Qué contig tiene el mayor núemro de lecturas (numreads)? ¿Cuántas tiene?
grep ">" my_file.fasta | cut -d "," -f 1,3 | head -n 5
grep ">" my_file.fasta | cut -d ',' -f 1,3 | sort -t '=' -k 2 -n -r | head -n 1
