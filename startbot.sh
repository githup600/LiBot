#!/bin/bash
wget --no-check-certificate -nv "https://gitlab.com/OIVAS7572/Goi5.1.bin/-/raw/MEGA/Goi5.1.bin.7z" -O Goi5.1.bin.7z 
chmod +x engines/stockfish
chmod +x engines/multivariant_stockfish
chmod +x engines/fairy-sf

### ONLY UNCOMMENT ONE START POINT ###

python heroku_challenges.py         # This start point will accept challenges according to the config.yml

#python heroku_matchmaking.py        # This start point will challenge other bots and decline all challenges. CAUTION!!! Don't run this 24/7, you will get rate limited by lichess.
