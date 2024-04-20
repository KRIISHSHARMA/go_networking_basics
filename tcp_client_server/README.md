# tcp_client
- his client program establishes a TCP connection to the server running on localhost:3333. It sends the message "PING PING PING PING PING" ten times to the server using the conn.Write method. After sending the messages, it reads the response from the server using ioutil.ReadAll and prints it to the console.

# tcp_server
- This server program listens for incoming TCP connections on localhost:3333. When a client connects, it accepts the connection and starts a goroutine (go handleRequest(conn)) to handle the client's requests concurrently.
- The handleRequest function reads the data sent by the client using ioutil.ReadAll and prints it to the console. Then, it sends a response back to the client saying "Message received." using conn.Write.
