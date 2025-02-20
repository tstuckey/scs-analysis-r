# Repository For R-based Images for Analysis

### Build images for both architectures
```sh
docker build --platform=linux/amd64,linux/arm64 -t artifact_registry:tag .
```
### Push the images 
```sh
docker push artifact_registry:tag
```