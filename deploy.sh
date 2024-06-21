#!/bin/bash

# Exit on error
set -e

# Build the project
dotnet publish -c Release -o build

# Navigate to the build output and initialize a new git repository
cd build
git init
git remote add origin https://github.com/Its-AjayRathnam/SampleBlazor.git
git checkout -b gh-pages

# Add and commit all files
git add -A
git commit -m "Deploy to GitHub Pages"

# Force push to the gh-pages branch
git push -f origin gh-pages

# Clean up
cd ..
rm -rf build
