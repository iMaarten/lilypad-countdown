# lilypad-countdown

Have a countdown message in your LilyPad server motd.
This is just a bash script that will edit your lilypad config with a time and reload the proxy every second.

## Usage

1. Put the 'countdown.sh' file in the same directory as your lilypad config
2. Edit the start timer in the 'countdown.sh' accordingly (Default starts from 24 hours)
3. Put 'in:&e&l 24:00:00!' in your motd somewhere, the script will replace this.
4. Run the script, Preferably in a screen like so 'screen -S countdown ./countdown.sh'

