#!/usr/bin/awk

# 

{
	avgt += $2;
}

# January and February
$1 ~ /[0-9]{4}0[1-2][0-9]{2}/ {
	winteravgt += $2;
	winternum += 1;
}

# December
$1 ~ /[0-9]{4}12[0-9]{2}/ {
	winteravgt += $2;
	winternum += 1;	
}

# June, July, August
$1 ~ /[0-9]{4}0[6-8][0-9]{2}/ {
	summeravgt += $2;
	summernum += 1;
}


END {
	print("Average yearly temperature is", avgt/NR, "for", NR, "records.");
	print("Average winter temperature is", winteravgt/winternum, "for", winternum, "records.");
	print("Average summer temperature is", summeravgt/summernum, "for", summernum, "records.");
}