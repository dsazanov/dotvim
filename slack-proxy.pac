function FindProxyForURL(url, host) {
    
    if (shExpMatch(host, "*.slack-msgs.com")) {        
        // Use SOCK proxy,
        // or fall back to a DIRECT traffic.
        // ssh -D 8000 [user]@[server]
        return "SOCKS evrone:durovotdaikluchi@195.201.140.95:32768; DIRECT";
    }
    
    return "DIRECT";
}
