#!/bin/bash
echo welcome, please read the version numbers!
echo -------
echo 1, 1.16
echo 2, 1.17
echo 3, 1.18
echo 4, 1.19
echo -------
echo please type the number before the minecraft version you want E.G: 1 = 1.16
read version
echo you pick $version!
if [[ $version == 1 ]]
then
   cd ~ && wget https://github.com/Ghost-Cat174/minecraft-server/releases/download/server-bugfix/minecraft.1.16.sh && chmod +x minecraft.1.16.sh && sudo ./minecraft.1.16.sh
elif [[ $version == 2 ]]
  then
     cd ~ && wget https://github.com/Ghost-Cat174/minecraft-server/releases/download/server-bugfix/minecraft.1.17.sh && chmod +x minecraft.1.17.sh && sudo ./minecraft.1.17.sh
  elif [[ $version == 3 ]]
    then
       cd ~ && wget https://github.com/Ghost-Cat174/minecraft-server/releases/download/server-bugfix/minecraft.1.18.sh && chmod +x minecraft.1.18.sh && sudo ./minecraft.1.18.sh  
     elif [[ $version == 4 ]]
       then 
          cd ~ && wget https://github.com/Ghost-Cat174/minecraft-server/releases/download/server-bugfix/minecraft.1.19.sh && chmod +x minecraft.1.19.sh && sudo ./minecraft.1.19.sh
        elif [[ $version -gt 4 ]]
          then
            echo Invalid number!
          fi
