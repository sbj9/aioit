#!/bin/bash
content=$(curl -s https://support.microsoft.com/hr-hr/topic/opis-teksta-lorem-ipsum-dolor-sit-amet-koji-se-prikazuje-u-sustavu-pomo%C4%87i-programa-word-bf3b0a9e-8f6b-c2ab-edd9-41c1f9aa2ea0)
lorem_count=$(echo "$content" | sed 's/<[^>]*>//g' | grep -o -i -w "lorem" | wc -l)
echo "Riječ 'lorem' povjavljuje se $lorem_count puta."
