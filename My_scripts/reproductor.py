import pygame
import os
from random import shuffle as shf
import sys

class Glob:
    Play = ()
    Music = ()
    if len(sys.argv) == 1: info = ""
    else : 
        if sys.argv[1][0:11] == "/home/yago/":
            info = sys.argv[1]
        else:
            info = "/home/yago/" + sys.argv[1]

class Music_reproductor():

    def __init__(self, playlisst):

        self.playlist = playlisst

    def create_playlisst():
        pass

    def play(self):
        pygame.mixer.music.load(self.playlist[0])
        pygame.mixer.music.play()

    def stop():
        pygame.mixer.music.stop()

    def pause():
        pygame.mixer.music.pause()

    def unpause():
        pygame.mixer.music.unpause()




class Archive_search():

    def search():
        pass

    def get_info():
        if Glob.info != "":
            info = Glob.info
        else:
            info = "/home/yago/Music/" + str(input("Enter a directory(from Music): "))
        os.chdir(info) #it permits to chenge the current dir
        onlyfiles = [f for f in os.listdir(info) if os.path.isfile(os.path.join(info, f))]
        return(onlyfiles)


class Comumication():

    def ask():
        command=input('Please enter a command: ')
        if isinstance(command,str) and command !='':
            Comumication.execute(command)
            return True
        else:
            return None

    def execute(command):
        if command in ( "quit","q"):
            quit()

        if command == "play":
            Glob.Music.play()
            return

        if command[0:2] == "pl":
            eval("Glob.Play"+"."+ command[3:len(command)])
            return

        try:
            eval('Music_reproductor.'+command+'()')
        except:
            print('Command not found')
            Comumication.ask()


class playlist():

    def __init__(self,playlist=[]):
        self.playlist=playlist

    def get_playlist(self):
        return(self.playlist)

    def create_playlist(self):
        song_list=Archive_search.get_info()
        for item in song_list:
            pos = 0
            self.playlist.insert(pos, item)
            pos += 1

        Glob.playlist = str(self)

    def shuffle(self):
        shf(self.playlist)
    
    def pprint(self):
        print(self.get_playlist())

def start ():
    Glob.Play=playlist()
    Glob.Play.create_playlist()
    Glob.Play.pprint()
    Glob.Music = Music_reproductor(Glob.Play.playlist)
    pygame.init()
    pygame.mixer.init()
    while 1:
        a = Comumication.ask()
        if a == None:
            quit()


if __name__ == "__main__":
    start()
