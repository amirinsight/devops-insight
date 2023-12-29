# Require image name and tag 
if [ $# -lt 2 ]; then
  echo "Usage: $0 <image-name> <tag>" >&2  
  exit 1
fi

# Set image name and tag
image_name="$1"  
image_tag="$2"

# Create cache 
docker tag "$image_name:$image_tag" "$image_name:cache" >/dev/null

# Build with args
if docker build --tag="$image_name:$image_tag" "$@"; then
  # Delete cache
  docker rmi "$image_name:cache" >/dev/null || true

else 
  # Rollback 
  docker tag "$image_name:cache" "$image_name:$image_tag" >/dev/null
  exit $?
fi

