#!/usr/bin/env bash
docker run -p 8888:8888 -v ~:/home/main/hostHOME -it stroxler/notebook ./start-notebook.sh
