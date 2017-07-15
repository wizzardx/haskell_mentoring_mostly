Over here, we follow Handré's advice, and work with his slides logic.

I won't go into too much detail on the slide show-specific logic. Instead, I'll
just include some related commentary from Handré':

    ------------------------
    You can adapt Hakyll example environment from the slides to get a Haskell dev environment if you would like to go the Nix route. It places a bunch of useful tools in your environment too.

    You can run a command in the environment by doing

    nix-shell --run command

    Also if you put this at the top of a Haskell file which you made executable then it will load the Nix environment and run the Haskell file in it for you.

    #! /usr/bin/env nix-shell
    #! nix-shell -i runghc

    You can see an example of how I use it here https://github.com/HanStolpo/TalksAndStuff/blob/master/site.hs so I can just go `./site.hs watch` to build my slides and watch them to rebuild.

    If you are going the Nix route it may be useful to setup a shell.nix with everything in that you need to develop
    ------------------------

More specifically, Handré's shell.nix can be found over here:

    https://github.com/HanStolpo/TalksAndStuff/blob/master/shell.nix

I'll be making use of that, as well as Handré's notes, to make a simple
Haskell script that prints "Hello, world!".

To run the example, you can run the script like this:

    ./hello_world.hs

And with this, we now have enough information to be able to do many other
exercises. Files in this project can be used as a basic template for further
work.
