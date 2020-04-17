# Docker Image for Functional Testing

This [Docker Image](https://hub.docker.com/r/dkaoster/nodejs-chrome-selenium) contains the following:

- Debian base
- Google Chrome Stable
- OpenJDK 8
- Node 13

Note: Selenium is not built directly into this image. The recommended method to get selenium onto your testing / CI environment is to use this in conjunction with [selenium download](https://www.npmjs.com/package/selenium-download).

This image builds automatically every week.
