# lilypad-countdown

Have a countdown message in your LilyPad server motd.

This is a very dirty bash script that will edit your lilypad config with a time and send the command `reload` in the screen called exactly `proxy` every second.

## Requirements

* A LilyPad server
* A `proxy.yml` file with a motd 
* A screen called `proxy` where you run your LilyPad proxy in

## Usage

1. Put the `countdown.sh` file in the same directory as your lilypad config
2. Edit the start timer in the `countdown.sh` accordingly (Default starts from 24 hours)
3. Put `&e&l 24:00:00!` in your motd somewhere, the script will replace this with the countdown time.
4. Run the script, Preferably in a screen like so `screen -S countdown ./countdown.sh`

Have fun.
