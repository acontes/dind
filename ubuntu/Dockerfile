FROM ubuntu:latest
MAINTAINER amitsaha.in@gmail.com

# Install docker
RUN apt-get update
RUN apt-get install -y \
		ca-certificates \
		curl \
		openssl \
                openssh-server openssh-client \
                docker.io docker-compose \
                dmsetup


# Install the magic wrapper.
ADD ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Define additional metadata for our image.
VOLUME /var/lib/docker
EXPOSE 22
CMD ["wrapdocker"]
