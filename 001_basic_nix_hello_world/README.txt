A basic demo for working with nix packages.

Based on info provided by this talk:

    Adventures with the purely functional OS NixOS
    https://youtu.be/4tuqI8V_cZw

Slides for the talk, over here:

    http://hanstolpo.github.io/TalksAndStuff/slides/2017-07-10-Adventures_with_the_purely_functional_OS_Nixos.html

Run these commands to test the setup:

    # Go under a nix sub-shell, and also set up all of our needed build dependencies
    nix-shell

    # Extract source code for the "hello" project, under a sub-directory
    unpackPhase

    # Change into the subdirectory
    cd hello-2.6

    # Build the project:

    ./configure
    make

    # Run the binary:
    src/hello

This should give you this output:

    Hello, world!

You can exit the nix sub-shell by running this command on the terminal:

    exit
