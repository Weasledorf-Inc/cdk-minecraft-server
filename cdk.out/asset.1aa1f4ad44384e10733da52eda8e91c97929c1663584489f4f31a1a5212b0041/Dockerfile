FROM openjdk:8

COPY . /app

WORKDIR /app

RUN ls -ltra

RUN unzip modpack.zip

RUN chmod +x ServerStart.sh

RUN sed -i 's/eula=false/eula=true/g' eula.txt

CMD  ./ServerStart.sh