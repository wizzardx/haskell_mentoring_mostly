This exercise is a (directly) copypasted and then modified version of the previous
project:

    ../001_basic_nix_hello_world

With some changes made to it, as per some feedback from Handré over email.

The previous exercise worked fine on my personal dev environment (Debian Sid),
but over here we'll demonstrate running under a NixOS virtual machine.

-------------------------------------
Testing under a NixOS virtual machine
-------------------------------------

First of all, let's setup a virtual machine. Vagrant makes this easy:

    vagrant init nixos/nixos-16.09-x86_64
    vagrant up

Now, SSH into the local NixOS virtual machine:

    vagrant ssh

Change to the directory within the VM, which corresponds to our main project
dir outside of the VM:

    cd /vagrant

Next, test the things under NixOS, exactly like we did in the previous
exercise:

    nix-shell
    unpackPhase
    cd hello-2.6
    ./configure
    make
    src/hello

And you should see the same output as before:

    Hello, world!

Looks like things work just fine under the NixOS VM.

It should be safe to assume that further projects would also compile and work
fine under NixOS, as well as the other platforms supported by Nix.

So for now we're done with the NixOS VM. Let's just tidy things up, before
moving on to the next section:

    exit
    exit
    vagrant destroy
    rm Vagrantfile
    rm -rv .vagrant
    rm -rv hello-2.6

---------------------------
Removing pegging of nixpkgs
---------------------------

Pegging of nixpkgs is mainly useful in a production product, and not really
needed for casual dev, so we'll change a few things.

Firstly, over in shell.nix, change these contents:

    let
      pkgs = import ./pegged-nix.nix ;
    in import ./default.nix {inherit (pkgs) stdenv fetchurl;}

Over to this:

    let
      pkgs = import <nixpkgs> {};
    in pkgs.callPackage ./default.nix {}

Where callPackage is a conveniance function (seen in a few places)

And then we can also remove the peg file:

    rm pegged-nix.nix

And then we can quickly test that things still work:

    nix-shell
    unpackPhase
    cd hello-2.6
    ./configure
    make
    src/hello
    exit
    rm -rv hello-2.6

Extra reading material:

    http://nixos.org/nix/manual/#sec-expression-syntax
    http://nixos.org/nixpkgs/manual/

