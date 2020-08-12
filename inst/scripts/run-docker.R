source("./R/utils_Docker.R")
source("./R/utils_DockerCompose.R")
Docker$new()$kill_all_containers()#$remove_dangling_images()

docker <- DockerCompose$new()
docker$restart()
# docker$browse_url("r-flow")
