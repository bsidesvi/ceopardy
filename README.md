# hacker-jeopardy

This is a permanent-fork from [https://github.com/obilodeau/ceopardy](https://github.com/obilodeau/ceopardy).     
It was a fantastic start but I felt I'd like to iterate on it

## Adding your questions

Game data goes in `data/`. There you should add round files (create a `<NUM>.round`
file) and questions in `Questions.cp`. The format is pretty self explanatory.
Check `data/` for an example.

## Running  

```
virtualenv env
source env/bin/activate
pip install -r requirements.txt
./ceopardy.py
```

Then open [localhost:5000/host](http://localhost:5000/host) and setup the game.    
The player's view ([localhost:5000](http://localhost:5000)) can be opened at any time.    
Nothing will be displayed until the game is started by
the host.

*NOTE*: In order to avoid dataloss due to a crash, hacker-jeopardy is backed by a
database where transactions are pushed when the hosts submit the points. This
has the flipside requiring games to be finalized before a new one can be
started. Make sure that you always push the "Game over" button before
reloading to start a new game.
