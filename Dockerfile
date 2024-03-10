FROM oven/bun:latest

# working directory
WORKDIR /usr/src/app

# copy the package.json and bun.lock files
COPY package.json .
COPY bun.lockb .
COPY . .
# install the dependencies
RUN bun install

# expose the port
EXPOSE 3000/tcp
# start the server
CMD ["bun", "start"]

