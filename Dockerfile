## This Dockerfile containst the terraform and tholoas application
FROM ubuntu

Maintainer kgopi1

RUN apt-get update

RUN apt-get install wget curl unzip -y

RUN wget -q https://releases.hashicorp.com/terraform/0.11.6/terraform_0.11.6_linux_amd64.zip && wget -q https://github.com/mhlias/tholos/releases/download/v.1.0.0/tholos_linux_amd64.zip

RUN unzip terraform_0.11.6_linux_amd64.zip && mv terraform /bin/terraform && unzip tholos_linux_amd64.zip && mv /release/tholos /bin/tholos

RUN rm -rf terraform_0.11.6_linux_amd64.zip tholos_linux_amd64.zip
