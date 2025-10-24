#!/bin/bash
for ((a = 1; a < 100; a++)); do
	echo $a x povedane
done
#
#
#
echo -e "\na teraz vypíšem súbory v adresári /tmp\n"
for file in /tmp/*; do
	echo -e "našiel som $file"
done
#




