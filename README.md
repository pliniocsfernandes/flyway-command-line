flyway-command-line
===================

Flyway Command Line for Linux

I'm using [flyway](http://code.google.com/p/flyway/) to organize my projects migrations.

But I could not find a way to install it in my system for use across various projects.

So I made some tweaks in the command line sh for it to work on my system.

Going to keep all organized here in this repository.

Installation
------------

Start by cloning this repository to the folder where you want to "install" flyway.
I keep it in `/opt/flyway`, so:

    sudo git clone git://github.com/pliniocsfernandes/flyway-command-line.git /opt/flyway

Then link it to `/usr/bin` so you can use it from anywhere

	sudo ln -s /opt/flyway/flyway.sh /usr/bin/flyway

Usage
-----

Now you can use it in any project by calling:

	flyway

It will use the default config file if none specified, so I recommend you to keep a config file in each of your projects and using:

	flyway -configFile=config/flyway.properties

Ok, that's it! =D