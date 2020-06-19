### About

**Dante** is a free SOCKS server and a SOCKS client, implementing RFC 1928 and related standards. It is a flexible product that can be used to provide convenient and secure network connectivity.

### Based on

- Alpine Linux
- Dante 1.4.2

### Usage

1. Pull docker image 

   ```
   docker pull tkiv/dante-socks5
   ```

2. Run the container (you could change port for proxy, for example 11111:1080)

   ```
   docker run -it -d -p 1080:1080 --restart always --name tkdante tkiv/dante-socks5
   ```

3. Add users for proxy

   ```
   docker exec -it tkdante /scripts/addusers.sh
   ```

   

### Author

Igor Tkachenko
