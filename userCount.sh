#!bin/bash

for user in $(cut -d: -f1 /etc/passwd); do
    if [ -d /home/$user ]; then
       du -sh -BM /home/$user
    fi
done
