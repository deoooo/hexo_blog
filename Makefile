NAME=aa864451000/hexo-blog
TAG = master

build:
	echo building ${NAME}:${TAG}
	docker build -t ${NAME}:${TAG} .
	docker push "${NAME}:${TAG}"
