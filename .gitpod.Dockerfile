# You can use `gitpod/workspace-full` as the base image as well.
FROM gitpod/workspace-python

RUN sudo apt-get update && \
    && sudo apt-get install -y ffmpeg libsm6 libxext6 libgl1-mesa-glx \
    && pyenv install 3.10.9 \
    && pyenv global 3.10.9
