#!/bin/sh
#Bash script to unpack apk resources with apktool and decompile the code with fernflower

#Get list of targets
FILES=targets/*.apk
for f in $FILES
do
  apk=${f#*/}
  name=${apk%.*}
  echo "Processing $apk..."

  #Create project folder
  mkdir targets/$name
  #Extract resources
  apktool d targets/$apk -s -f -o targets/$name > targets/$name/apktool.log
  #Build jar file from apk
  dex2jar-2.0/d2j-dex2jar.sh -f targets/$apk -o targets/$name/$name".jar" > targets/$name/dex2jar.log
  #Decompile code
  java -jar fernflower/fernflower.jar targets/$name/$name".jar" targets/$name > targets/$name/decompile.log
  #Unzip fernflower output
  unzip targets/$name/$name".jar" -d targets/$name > targets/$name/unzip.log

  echo "$apk processing complete"
done
