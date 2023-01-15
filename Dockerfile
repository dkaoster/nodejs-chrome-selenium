FROM debian:stable

# Update Debian and install required dependencies
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends wget gnupg curl ca-certificates bzip2 git lsof libncurses5 apt-transport-https

# Install Google Chrome
RUN apt-get update
RUN apt-get install -y --no-install-recommends google-chrome-stable

# Install Openjdk 8
RUN sh -c 'echo "deb http://ftp.us.debian.org/debian stretch main" >> /etc/apt/sources.list'
RUN apt-get update
RUN apt-get install -y --no-install-recommends openjdk-8-jdk

# Install Python dev and build-essentials
RUN apt-get install -y --no-install-recommends build-essential

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y --no-install-recommends nodejs
