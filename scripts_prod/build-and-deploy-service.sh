source ../ENV

SERVICE_DIR=$SCRIPTS_DIR/../repositories/sherlock-service
cd "$SERVICE_DIR"

# rm -rf ./sherlock-service
# # MICRONAUT_ENVIRONMENTS=prod ./gradlew dockerBuild Faire dans IDEA
# cp -r ./build/docker/main/layers ./build
# cp ./build/docker/main/Dockerfile ./build
# mv ./build ./sherlock-service
# ssh tbottini@data-iremus.huma-num.fr "rm -rf /home/tbottini/sherlock/sherlock-service"
# scp -r ./sherlock-service tbottini@data-iremus.huma-num.fr:/home/tbottini/sherlock/
ssh tbottini@data-iremus.huma-num.fr "cd /home/tbottini/sherlock/ ; sudo -S docker compose up sherlock -d --build --remove-orphans"
