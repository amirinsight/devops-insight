# DevOps Insight(s) Repository

## Bash Scripts
- [Docker Rebuild](bash-scripts/docker-rebuild.sh) -> [Post link](https://t.me/devopsinsight/13)
### How to
Save it as docker-rebuild.sh and then use it like this:
bash docker-rebuild.sh $image_name $tag —file=/path/to/Dockerfile /build/context/path anything_else

If the script and Dockerfile are in the same directory and build context is . then you can simply use:
`bash docker-rebuild.sh $image_name $ta`
