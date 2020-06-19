#### About

**Dante** is a free SOCKS server and a SOCKS client, implementing RFC 1928 and related standards. It is a flexible product that can be used to provide convenient and secure network connectivity.

#### Based on

- Alpine Linux
- Dante 1.4.2

#### Description

There are several files:

1. [sockd.conf](https://github.com/tkiv/dante-socks5/blob/master/sockd.conf) - modified config for Dante server (default port 1080).
   If needed you can modify it or change by your own config file.
2. [sockd.conf.default](https://github.com/tkiv/dante-socks5/blob/master/sockd.conf.default) - default Dante example config. 
3. [users.list](https://github.com/tkiv/dante-socks5/blob/master/users.list) - list of users and passwords who will access proxy which will be create after running the container.
   By default have 2 lines. PLEASE modify by own users.
4. [create_users_from_file.sh](https://github.com/tkiv/dante-socks5/blob/master/create_users_from_file.sh) - script create users described in [users.list](https://github.com/tkiv/dante-socks5/blob/master/users.list)
5. [create_users_interactive.sh](https://github.com/tkiv/dante-socks5/blob/master/create_users_interactive.sh) - script for interactive creation users inside running container

#### Usage

1. Pull docker image 

   ```
   docker push tkiv/dante-socks5
   ```

2. Modify [users.list](https://github.com/tkiv/dante-socks5/blob/master/users.list) 

   ```
   cat users.list
   
   user1:pass1
   user2:pass2
   ```

3. Run the container (you could change port for proxy, for example 11111:1080)

   ```
   docker run -it -d -p 1080:1080 --name tkdante tkiv/dante-socks5 .
   ```

4. You can create new users into running container

   ```
   docker exec -it tkdante /scripts/create_users_interactive.sh
   ```

#### Author

Igor Tkachenko