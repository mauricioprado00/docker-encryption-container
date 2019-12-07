# Build image
```
docker build --tag=mauricioprado00/encryptor server/
```

# Encrypt content

encrypt custom content in current working directory
```
docker run --name=backup -ti -v $(pwd):/encrypt mauricioprado00/encryptor:latest
```

save custom content image
```
docker commit backup customcontent
docker rm backup
```

# Decrypt content in image

```
docker run --rm -ti -v /tmp/decrypted:/decrypted customcontent
```

# Upload image to docker
```
docker image tag customcontent mauricioprado00/encryptor:customcontent
docker push mauricioprado00/encryptor:customcontent
```

# Save image in file

```
docker image save customcontent > customcontent.docker-image
```

# Load Image from file

```
cat customcontent.dim | docker image load
```