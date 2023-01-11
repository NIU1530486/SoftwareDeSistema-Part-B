#!/bin/bash


funcionsalida() 
{
           echo "*******************************"
           echo "Tìtol: $titulo"
           echo "Any: $any" 
           echo "Duracion: $duracion"  
           echo "Popularidad: $popu"
           echo "Edat Mìnima: $edad" 
           echo "Premis: $premi" 
           echo "Tema: $tema"
           echo "Director: $director"
           echo "Actor: $actor"
           echo "Actiu: $actriz"  
           echo "********************************"
}





echo "Introduce una popularidad"
read num

if [[ $num -ge 0 && $num -le 100 ]];
then 
    sort -t";" -k2 -n $1 > ordenduracion
    lin=`wc -l < $1`
    
    for i in `seq 3 1 $lin`
    do 
       if [ `head -$i ordenduracion | tail -1 | cut -d';' -f8` -ge $num ] 
       then
           titulo=`head -$i ordenduracion|tail -1|cut -d';' -f3` 
           any=`head -$i ordenduracion|tail -1|cut -d';' -f1`
           duracion=`head -$i ordenduracion|tail -1|cut -d';' -f2`
           popu=`head -$i ordenduracion|tail -1|cut -d';' -f8`
           edad=`head -$i ordenduracion|tail -1|cut -d';' -f10`
           premi=`head -$i ordenduracion|tail -1|cut -d';' -f9`
           tema=`head -$i ordenduracion|tail -1|cut -d';' -f4`
           director=`head -$i ordenduracion|tail -1|cut -d';' -f7`
           actor=`head -$i ordenduracion|tail -1|cut -d';' -f5`
           actriz=`head -$i ordenduracion|tail -1|cut -d';' -f6`  
           
           funcionsalida
          
       fi
       
    done
else 
     echo "ERROR,numero no valido"
fi
rm ordenduracion
