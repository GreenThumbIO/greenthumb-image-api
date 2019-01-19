FROM sugyan/heroku-python-opencv
RUN mkdir /greenthumb-image-api
WORKDIR /greenthumb-image-api
COPY requirements.txt /greenthumb-image-api/requirements.txt
RUN pip install -r requirements.txt
