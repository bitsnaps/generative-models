# You can use `gitpod/workspace-full` as the base image as well.
FROM gitpod/workspace-full

ENV DOCKER_BUILDKIT=1
RUN mkdir -p /home/gitpod/.docker/cli-plugins
RUN wget https://github.com/docker/buildx/releases/download/v0.6.1/buildx-v0.6.1.linux-amd64 -O /home/gitpod/.docker/cli-plugins/docker-buildx
RUN chmod a+x /home/gitpod/.docker/cli-plugins/docker-buildx

RUN sudo apt-get update && \
    && sudo apt-get install -y ffmpeg libsm6 libtext6 libxext6 libgl1 libgl1-mesa-glx libgl1-mesa-dev \
    && sudo apt-get install -y python3-opencv

RUN pyenv install 3.10.9 \
    && pyenv global 3.10.9
