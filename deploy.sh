#!/bin/bash

# Check the Git branch
if [[ $GIT_BRANCH == "origin/dev" ]]; then
     ./build.sh
     docker login -u nandini28 -p dckr_pat_ftPr0gp0_ytYTTJDUhH1KUXiTMk
     docker tag myreactjsimg nandini28/dev
     docker push nandini28/dev
elif [[ $GIT_BRANCH == "origin/main" ]]; then 
     ./build.sh
     docker login -u nandini28 -p dckr_pat_ftPr0gp0_ytYTTJDUhH1KUXiTMk
     docker tag myreactjsimg nandini28/prod
     docker push nandini28/prod
else
    echo "deployment sucess"
fi


    


