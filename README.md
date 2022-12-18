# Clientada   
<img src='clientadalogo.png'>   

## What the hell does it do?
Ever struggled with local scripts needing DataStore data, and you have to make a server script, set up a remote function, and do so much?   
Clientada solves this, Roblox's first client-side DataStore system.  
It is built off Roblox's DataStore service and utilizes all their functions.    
It uses a key (password, basically) safety system, that can be tailored to your needs.  


## Features   
- Read, write, update, and remove DataStores from the client easily, and safely.   
- A configurable key system, and an option to kick a client if the incorrect key is provide.   
- Full pcall protection on server, no pcalls on client required.   
- Simple, straightforward API, and setup.    

## Pros   
- No more needing to make use of a complicated remote function system to access data from client
- Easy setup and use
- Compatible with OrderedDataStores
- Easily configurable to meet your needs
- _Nearly_ 100% exploiter proof

## FAQ
Will this be compatible with DataStore2?  
> No, and I do not plan on implementing a system to do so. However, anyone is free to make a pull request adding compatibility.   
      
How does the key system work?
> A master key is set in a config module script. That key is a required argument for all functions in Clientada. You have the ability to change the key, and if the client issues a request and the key is not specified or is incorrect, then kick the player.
