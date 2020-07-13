FROM cloudron/base:2.0.0@sha256:f9fea80513aa7c92fe2e7bf3978b54c8ac5222f47a9a32a7f8833edf0eb5a4f4

EXPOSE 3000

RUN mkdir -p /app/data /app/code /app/pkg

WORKDIR /app/data

RUN git clone https://github.com/burtonator/polar-bookshelf . && \
    npm install && \
    npm run-script compile

CMD [ "/app/code/start.sh" ]