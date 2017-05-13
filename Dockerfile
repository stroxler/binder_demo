FROM library/ubuntu
RUN apt-get update && \
    apt-get install -y build-essential && \
    apt-get install -y python3 python3-dev python3-pip && \
    pip3 install --upgrade pip && \
    pip3 install requests ipython jupyter \
                 numpy scipy pandas h5py \
                 sklearn keras theano \
                 matplotlib ggplot seaborn
RUN useradd -m -s /bin/bash main && usermod -aG sudo main
USER main
WORKDIR /home/main
ENV HOME=/home/main
ADD start-notebook.sh /home/main/start-notebook.sh
EXPOSE 8888/tcp
CMD bash -l
