TAG=$(git log --oneline -n 1 |cut -f 1 -d " ")
docker build -t knisterpeter/docker-pip .
docker tag knisterpeter/docker-pip knisterpeter/docker-pip:${TAG}
docker tag knisterpeter/docker-pip knisterpeter/docker-pip:latest
docker push knisterpeter/docker-pip:${TAG}
docker push knisterpeter/docker-pip:latest
