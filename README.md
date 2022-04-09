# Overview


**LiBot** is a bot for Lichess. Strongly inspired by [ShailChoksi/lichess-bot](https://github.com/ShailChoksi/lichess-bot). It extends its features with a matchmaking mode where the bot automatically challenges other bots with similar ratings.
 The main idea taken from [Torom bot Li](https://github.com/Torom/BotLi) and has been made with the help of my friend.

# Maintenerce 
[Soloboy4](https://lichess.org/@/Soloboy4) and [Endogenetic Bot](https://lichess.org/@/Endogenetic-Bot)

# Heroku

### Chess Engines

- [Stockfish](https://github.com/official-stockfish/Stockfish)
- [Stockfish Multi Variant (dev)](https://github.com/ddugovic/Stockfish)
- [Fairy Sf](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/blob/main/engines/fairy-sf)

### Chess polyglot Opening Books

- [Elo3300](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/raw/main/engines/elo3300.bin) 
- [Lichess-Book](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/raw/main/engines/lichess-book.bin)

### Heroku Buildpack

- [`heroku/python`](https://elements.heroku.com/buildpacks/heroku/heroku-buildpack-python)

### Heroku Stack

- [`heroku-20`](https://devcenter.heroku.com/articles/heroku-20-stack)

## How to install

- [Fork](https://github.com/Lichess-Bot/ToromLI-Bot-Heroku/fork) this repository.
- Edit Config.yml,  __INSERT YOUR TOKEN__ and make the change required accordingly to you. 
- If you want casual matchmaking you have to type true in config yml matchmaking lists.
- 
- Create a [new heroku app](https://dashboard.heroku.com/new-app).
- Go to the `Deploy` tab and click `Connect to GitHub`.
- Click on `search` and then select your fork of this repository.
- Then `Enable Automatic Deploys` and then select the `heroku` branch and Click `Deploy`.
- Once it has been deployed, go to `Settings` tab on heroku and create a variable, set `LICHESS_BOT_TOKEN` as key and your token as value.
- Go to `Resources` tab on heroku and enable `worker (bash startbot.sh)` dynos. (Do note that if you don't see any dynos in the `Resources` tab, then you must wait for about 5 minutes and then refresh your heroku page.)

You're now connected to lichess and awaiting challenges! Your bot is up and ready! You can activate the matchmaking mode in your `startbot.sh` file.

__CAUTION:__ Be careful with matchmaking mode, lichess will rate limit you if you let it run for too long!

## Lichess OAuth
- Create an account for your bot on [Lichess.org](https://lichess.org/signup).
- **NOTE: If you have previously played games on an existing account, you will not be able to use it as a bot account.**
- Once your account has been created and you are logged in, [create a personal OAuth2 token with the "Play games with the bot API" ('bot:play') scope](https://lichess.org/account/oauth/token/create?scopes[]=bot:play&description=lichess-bot) selected and a description added.
- A `token` (e.g. `xxxxxxxxxxxxxxxx`) will be displayed. Store this in the `config.yml` file as the `token` field.
- **NOTE: You won't see this token again on Lichess, so do save it.**

## Setup Engine
Within the file `config.yml`:
- Enter the directory containing the engine executable in the `engine: dir` field.
- Enter the executable name in the `engine: name` field.
- You need to adjust the settings in `engine: uci_options` depending on your system.
- Remember [Line 5](https://github.com/Lichess-Bot/BotLi/blob/c1020fa1ec57f55b669855290620fc36d1eaa79f/config.yml#L5) is put for engines. Now Stockfish engine is putted which play best and fast but only standard. In the case you need Variants you have to put **Stockfish_Multi_Variant_Dev on config yml line 5** or **Fairy_Sf**

## Setup polyglot opening book
To use a polyglot opening book the name of the book and the path to the book must be entered at the end of the config in the section `books`.

Several books can be entered here. In the upper area `eninge: polyglot: books` only the name of the book must be entered. In addition, different books can be used for white, black and chess960. If no specific book is defined, the `standard` book is used.

## Matchmaking mode

You can activate the matchmaking mode in your `startbot.sh` by putting # before [Line 8  on start bot sh](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/blob/8ccd3f387923cff5766a8276924ddf9d43f1d8cc/startbot.sh#L8) and removing # from [Line 10 of start bot sh](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/blob/8ccd3f387923cff5766a8276924ddf9d43f1d8cc/startbot.sh#L10) file.


If you again want to accept Challenge and want to remove match making put # before [Line 8](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/blob/8ccd3f387923cff5766a8276924ddf9d43f1d8cc/startbot.sh#L8) and remove # on [Line 10](https://github.com/Lichess-Bot/Lichess-bot-BotLi-/blob/8ccd3f387923cff5766a8276924ddf9d43f1d8cc/startbot.sh#L10).

__CAUTION:__ Be careful with matchmaking mode, lichess will rate limit you if you let it run for too long!

## Acknowledgements
Thanks to the Lichess team, especially T. Alexander Lystad and Thibault Duplessis for working with the LeelaChessZero team to get this API up. Thanks to the [Niklas Fiekas](https://github.com/niklasf) and his [python-chess](https://github.com/niklasf/python-chess) code which allows engine communication seamlessly. In addition, the idea of this bot is based on [ShailChoksi/lichess-bot](https://github.com/ShailChoksi/lichess-bot) and
 [Torom bot Li ](https://github.com/Torom/BotLi)
## License

**LiBot** is licensed under the AGPLv3 (or any later version at your option). Check out the [LICENSE file](/LICENSE) for the full text. 
