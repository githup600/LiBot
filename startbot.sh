#!/bin/bash
wget --no-check-certificate "http://abrok.eu/stockfish/latest/linux/stockfish_x64_modern.zip" -O chess-engine.zip
wget --no-check-certificate "https://data.stockfishchess.org/nn/nn-938525872610.nnue" -O nn-938525872610.nnue
7z e chess-engine.zip && rm chess-engine.zip && mv stockfish* chess-engine
chmod +x engines/stockfish
chmod +x engines/multivariant_stockfish
chmod +x engines/fairy-sf

### ONLY UNCOMMENT ONE START POINT ###

python heroku_challenges.py         # This start point will accept challenges according to the config.yml

#python heroku_matchmaking.py        # This start point will challenge other bots and decline all challenges. CAUTION!!! Don't run this 24/7, you will get rate limited by lichess.
