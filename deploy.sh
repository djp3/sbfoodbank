#!/bin/bash

echo "*****"
echo "Pushing to github"
echo "*****"
git push github

echo "*****"
echo "Updating production"
echo "*****"
ssh dpatterson@djp3.westmont.edu "cd djp3/ally ;git checkout production;git pull"

echo "*****"
echo "Updating staging"
echo "*****"
ssh dpatterson@djp3.westmont.edu "cd djp3/ally_staging;git checkout staging;git pull"
