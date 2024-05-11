**Readme for Dockerized Chatroom Server Project**

## Building Docker Image:

1. **Clone Repository:**
   ```
   git clone <repository_url>
   cd <repository_directory>
   ```

2. **Build Docker Image:**
   ```
   docker build -t chatroom-server .
   ```

## Running Server:

3. **Run Docker Container:**
   ```
   docker run -p 10000:10000 --name chatroom-server chatroom-server
   ```

   - The server is now running and accessible on port 10000.

## Running Clients:

4. **Build and Run Client:**
   - Compile and run the client program using your preferred C++ compiler.
   ```
   g++ -o client client.cpp -pthread
   ./client
   ```

   - Enter your name when prompted.
   - Start chatting in the interactive chatroom environment.

## Features:

- **Public Chat:**
  - Communicate with everyone in the chatroom.

- **Private Messaging:**
  - Use the format '@recipient:message' to send private messages.

- **Exiting:**
  - Type '#exit' to leave the chatroom.

## Docker Image Cleanup:

5. **Stop and Remove Docker Container:**
   ```
   docker stop chatroom-server
   docker rm chatroom-server
   ```

## Note:

- **Docker Image:**
  - The Docker image is configured to include all dependencies for the server.

- **Compile Clients:**
  - Compile the client program using a C++ compiler with support for threading.

- **Customization:**
  - Feel free to modify the code to suit your specific requirements.

- **Enjoy Chatting!**
  - Connect, chat, and experience real-time communication in this Dockerized Chatroom Server environment.
