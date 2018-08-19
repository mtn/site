#!/bin/bash

# Resume location, relative to publicdir
# resume="../../resume/resume.pdf"

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo

# Update resume.pdf
# cp $resume .

# Add changes to git.
git add -u

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
