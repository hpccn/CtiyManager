#!/bin/sh
echo $@ | awk '
{
#printf("\n"$1"\n");
	if (4 > length($1)) {
		printf("./apksign.sh xx.apk\n");
		exit(0);
	} 
	len = length($1);
	suffix = substr($1, length($1) - 3, 4); 
	if (suffix != ".apk") {
		system("echo ./apksign.sh xx.apk\n");
		exit(0);
	}
	filename = substr($1, 1, length($1) - 4); 
	newfile = filename"-platform"suffix;
	printf("signapk ...\n");
	system("java -jar signapk.jar -verbose -keystore hpckey.keystore -signedjar "$1" " android "\n");


	printf("install ...\n");
	system("adb install -r "$1"\n");
}'
