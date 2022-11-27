# Laravel Build Init Container

This repository contains a Docker Container config file that can be used to generate the assets for a new Laravel Application

## Usage

- Build or pull the image
- Mount bind the directory where you want to init the new laravel application and run the container
  - `docker run -v $pwd:/var/www/html/my-app laravel-build-init` 
