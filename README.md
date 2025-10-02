# myconky
A set of Conky widgets for system monitoring. 

This is not my original creation, it is a modification of another config I found...somewhere. It was like three months ago and I lost track of the source. If you recognize it please feel free to tell me so I can add attribution. Also you should know I am not an expert and this may be so stupidly complicated that you give up very quickly. I wasn't happy with it for about two months, committing roughly four hours per week to figuring it out. Your mileage may vary.

Fair warning, if you pull this and try to implement it you'll have to save it in a weird spot or go through and change any of the spots that need a file system address. I initially saved it in ~/.config and not ~/.conky, and then put it inside several folders because I didn't really know what I was doing. (I mean I still don't, but I didn't then, either.) The filepath on my system is ~/.config/conky/myconky/config/ because, like I said, I really had no idea what I was doing.

Conky version used is 1.19.6, I don't know if it will work with a newer version. I'm running this on GNOME 46 in Ubuntu 24.04.3 in a Minisforum UM870 Slim with an AMD processor and an Intel WiFi card if that matters.

This is what it looks like on my system:

<img width="1075" height="681" alt="image" src="https://github.com/user-attachments/assets/5fa18c3d-c930-4467-8005-4a33eab0e17d" />

The blacked out portions are just bits of info I don't really want everyone to know.

If you have any questions and would like a somewhat prompt answer you would be better off commenting on this Reddit post: 

https://www.reddit.com/r/Conkyporn/comments/1nvdqzy/my_conky_setup/?utm_source=share&utm_medium=web3x&utm_name=web3xcss&utm_term=1&utm_content=share_button

I'm far more likely to see that in a reasonable amount of time.

Packages you'll need to install include but are not limited to:
lm-sensors (and all the recommended packages that it tells you to include)
drivetemp (and you'll either have to run the command to turn it on when you start your computer or figure out how to add it to your startup)
smartmontools (and you'll have to tell your computer to run smartctl as sudo without a password) 
