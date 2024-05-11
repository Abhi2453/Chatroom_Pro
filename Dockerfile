# Using Ubuntu runtime as a parent image
FROM ubuntu:focal

# Set the working directory in the container
WORKDIR /opt

# Copy the source files
COPY src src

RUN apt-get update && \
    apt-get install -y build-essential

# Compile the server
RUN g++ -o server src/server.cpp -lpthread

# Expose the server port 
EXPOSE 10000

# Command to run the chatroom server
CMD ["./server"]
