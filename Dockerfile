FROM sugyan/heroku-python-opencv
RUN mkdir /greenthumb-image-api
WORKDIR /greenthumb-image-api
COPY thumbor.conf /greenthumb-image-api/thumbor.conf
COPY requirements.txt /greenthumb-image-api/requirements.txt
RUN pip install -r requirements.txt
ENV PYTHONPATH "/app/.heroku/opencv/lib/python2.7/site-packages"
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["thumbor"]
