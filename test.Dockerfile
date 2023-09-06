# Use playwright image as a base
FROM mcr.microsoft.com/playwright:v1.31.0-beta-1676685153000-focal-arm64

# Set the working directory inside the container
WORKDIR /b2b


COPY . .

RUN npm uninstall puppeteer


WORKDIR /b2b/packages/core-components
RUN npm install

# Install top-level dependencies
WORKDIR /b2b
RUN npm install


