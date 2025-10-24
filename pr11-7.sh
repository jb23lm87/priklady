#!/bin/bash
#počítadlo výskytu
COUNTER=0
#hľadaný reťazec
HLADAJ=root
#file read
for LINE in $(cat /etc/group); do
   RES=$(echo $LINE | grep -e $HLADAJ)
   if [ "$RES" != "" ]; then
      echo "$LINE contains: $HLADAJ"
      ((COUNTER++))
   fi
done
echo -e "\n\tNapočítal som $COUNTER riadkov.\n"
echo
#
#ale krajšie je to takto ...
#
COUNTER=0
#hľadaný reťazec
HLADAJ=root
while IFS= read -r line; do
   if [[ "$line" == *"$HLADAJ"* ]]; then
      echo "$line contains: $HLADAJ"
      ((COUNTER++))
   fi
done </etc/group

echo -e "\n\tNapočítal som $COUNTER riadkov.\n"
