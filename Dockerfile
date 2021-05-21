FROM ubuntu:latest
RUN apt update
RUN apt install -y git
RUN apt install -y python3-pip
RUN pip3 install flask
RUN git clone https://github.com/HSE-NN-SE/heroku_flask_app-ImOsMa
RUN cd heroku_flask_app-ImOsMa
ENV FLASK_APP=heroku_flask_app-ImOsMa/js_example
CMD python3 -m flask run —host=0.0.0.0
