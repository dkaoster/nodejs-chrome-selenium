FROM debian

# Update Debian and install required dependencies
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y --no-install-recommends wget gnupg curl ca-certificates bzip2 git lsof libncurses5

# Install Google Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
RUN apt-get update
RUN apt-get install -y --no-install-recommends google-chrome-stable

# Install Openjdk 8
RUN sh -c 'echo "deb http://ftp.us.debian.org/debian sid main" >> /etc/apt/sources.list'
RUN apt-get update
RUN apt-get install -y --no-install-recommends openjdk-8-jdk

# Install python2
RUN add-apt-repository universe
RUN apt-get update
RUN apt-get install python2

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y --no-install-recommends nodejs
