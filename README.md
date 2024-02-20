# curl-timing

Script to get the total time of each request and average of all request total time.

## How to use

`source main.sh <amount_of_tries> <any curl option>`

Example

`source main.sh 10 www.google.com`

You can link the script with an alias:

*Remember to git clone the repository at $HOME*

`alias curltiming="source $HOME/curl-timing/main.sh"`
