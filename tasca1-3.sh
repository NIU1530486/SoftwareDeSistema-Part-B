#!/bin/bash

lin=`wc -l < $1`
sort -t';' -k10 -n $1 > pelisorden
for i in `seq 1 1 $lin`
do
   titulo=`head -$i pelisorden|tail -1|cut -d';' -f3` 
   any=`head -$i pelisorden|tail -1|cut -d';' -f1`
   duracion=`head -$i pelisorden|tail -1|cut -d';' -f2`
   popu=`head -$i pelisorden|tail -1|cut -d';' -f8`
   edad=`head -$i pelisorden|tail -1|cut -d';' -f10`
   premi=`head -$i pelisorden|tail -1|cut -d';' -f9`
   tema=`head -$i pelisorden|tail -1|cut -d';' -f4`
   director=`head -$i pelisorden|tail -1|cut -d';' -f7`
   actor=`head -$i pelisorden|tail -1|cut -d';' -f5`
   actriz=`head -$i pelisorden|tail -1|cut -d';' -f6`
   
   echo "*******************************"
   echo "Tìtol: $titulo"
   echo "Any: $any" echo "Duracion: $duracion" echo "Popularidad: $popu"
   echo "Edat Mìnima: $edad" echo "Premis: $premi" echo "Tema: $tema"
   echo "Director: $director"
   echo "Actor: $actor"
   echo "Actiu: $actriz"  
   echo "********************************"
   
   let i=i+1
   
done
 rm pelisorden
