FROM sugyan/heroku-python-opencv
RUN mkdir /greenthumb-image-api
WORKDIR /greenthumb-image-api
COPY requirements.txt /greenthumb-image-api/requirements.txt
COPY thumbor.conf /greenthumb-image-api/thumbor.conf
RUN pip install -r requirements.txt
CMD thumbor -p $PORT -c /greenthumb-image-api/thumbor.conf
