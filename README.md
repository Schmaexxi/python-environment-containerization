# How to use
Build the base images
````shell
docker build -f base_image.Dockerfile -t python-base-image .  
docker build -f other_base_image.Dockerfile -t other-base-image .
````
Build the inheriting image
````shell
docker build -f inheriting_image.Dockerfile -t inheriting-image . 
````
Run a container of the inheriting image
````shell
docker run -it inheriting-image bash
````
Inside the container, run 
```shell
pip list
```

