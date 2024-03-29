FROM debian:stable

# Update Debian and install required dependencies
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends wget gnupg curl ca-certificates bzip2 git lsof libncurses5 apt-transport-https

# Install Google Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
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
