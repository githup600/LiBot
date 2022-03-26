import os
import platform

import psutil

from lichess_game import Lichess_Game


class Chatter:
    def __init__(self, config: dict) -> None:
        self.cpu = self._get_cpu()
        self.ram_message = self._get_ram()
        self.draw_message = self._get_draw_message(config)

    def react(self, command: str, lichess_game: Lichess_Game) -> str:'
        if command == 'eval':
             f'{(I don't like to said it my oppenent)} '
        elif command == 'name':
            return f'{lichess_game.username} running {lichess_game.engine.id["name"]}'
        elif command == 'ram':
            return self.ram_message
        else:
            return 'Not work this command, working commands: !sf, !eval, !name,'
        
class Chat_Message:
    def __init__(self, chatLine_event: dict) -> None:
        self.username: str = chatLine_event['username']
        self.text: str = chatLine_event['text']
        self.room: str = chatLine_event['room']
