# Docker Image for Functional Testing

![Docker Hub Build](https://github.com/dkaoster/nodejs-chrome-selenium/workflows/Docker%20Hub%20Build/badge.svg)

This [Docker Image](https://hub.docker.com/r/dkaoster/nodejs-chrome-selenium) contains the following:

- Debian base
- Google Chrome Stable
- OpenJDK 8
- Node 14

Note: Selenium is not built directly into this image. The recommended method to get selenium onto your testing / CI environment is to use this in conjunction with [selenium download](https://www.npmjs.com/package/selenium-download).

This image builds automatically every week.
