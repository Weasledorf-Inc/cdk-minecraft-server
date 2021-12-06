FROM openjdk:8

# RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
#     unzip awscliv2.zip \
#     sudo ./aws/install \
#     rm -rf awscliv2.zip

RUN ls -ltra

COPY . /appz

WORKDIR /appz

# RUN aws s3 cp s3://${S3_BUCKET}/
RUN ls -ltra

RUN unzip modpack.zip

RUN chmod +x ServerStart.sh

RUN sed -i 's/eula=false/eula=true/g' eula.txt

CMD  ./ServerStart.sh