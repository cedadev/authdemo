# Starts a docker container running the Django auth service
# More info at https://github.com/cedadev/django-auth-service
docker run \
    --rm \
    --name nginxauthservice \
    -p 8080:8080 \
    -v $(pwd)/20-runtime-settings.yaml:/etc/django/settings.d/20-runtime-settings.yaml \
    esgfdeploy/auth-service:latest
