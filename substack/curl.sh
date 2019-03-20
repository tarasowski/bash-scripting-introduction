#!/bin/bash
# Author: Dimitri Tarasowski
# Date created: 21/03/2019

# protocols
# the language that compuser program speak to each other
# Examples: HTTP, HTTP, SMTP, IMAP, FTP; SSH; SSL
# All of the service have different ports, except FTP listening 21 and it's opening other ports

# ports
# Each computer can have many services. A port is a number between 1 and 65535 that differentiates among the services on a system 
# each service can have it's own ports such as HTTP port 80, so you know this the HTTP
# if you need to open ports, you need admin priveleges to open them

# customary ports
# Any service can listen on any port, but there are customary ports for many protocols:
# 21 - ftp, 22 - ssh, 25 - smtp, 80 - http, 443 - https, 3306 - mysql, 5432 - postgresql, 5984 - couchdb, 6667 - irc

# port and permissions
# by default, systems can only listen to ports below 1024 as the root user

# servers
# Sometimes when people say "server" they mean a computer program that listens for incoming connections.
# Other times when people say "server" they mean a comper that is configured to run server programs. Any computer can be a server.

# clients
# Clients are compuer program that connect to servers. 
# Initiate a connection. Any computer can be a server

# peers to peer
# Aside from server and clients, there is a third role in a compuer networks: peer
# In a peer to peer network, clients estabish connections directly to toher clients. Nodes in the network are symmetric with no fixed central server.

#netcat allows a plain session with servers
nc -l 1024 # we establish a connection, making the compuer a server that listens for incoming request


#start server
nc -l 5000

#connect to server in other terminal
nc localhost 5000

# type something


# http
# hyper transfer protocol
# how web server and web browser communicate
# http request begin with a VERB. here are some things each VERB is used for: GET (fetch a document), POST (submit a form), HEAD (fetch metadata about a document), PUT - upload a file

# http headers
# Headers have a key followed by a colon followed by a values:
# key : value (pairs)

nc substack.net 80 # domain
GET /favicon.ico HTTP/1.0 #protocol
Host: substack.net # header

# http post
# Froms in html are often delivered with a POST:

#POST /from HTTP/1.1 # protocol
#Host: localhost # header
#Content-Length: 51 # refers to the string title=what.... # header
#Content-Type: application/x-www-form-urlencoded # need to send to the server as another meta data # header
#
#title=whatever&date=1224345&body=beep%20boop%21

# we have used netcat to make request, but this is pretty difficult to make requests to the http servers
# curl
# You can also send http request with the curl command

# issues a GET request to substack.net and prints the body
curl -s http://substack.net

# to see just the headers, use `-I`:
curl -sI http://substack.net

# The `-s` gets rid of progress output

# curl : issuing a POST
# Use `-X`to set the http verb (POST) and `-d` to set form parameters: 
curl -X POST http://localhost:5000 -d title=whatever \
-d date=1234534534 -d body='beep beep!'

# curl: headers
# curl -H cool:beans
