# Why?

I couldn't find a good simple script-built template and I didn't want to install a horrifically clunky IDE or [comically bloated build system](https://i.imgur.com/IlXgLme.png) just to write a simple plugin for my server. I then turned it into this template, for your developing pleasure.

# What do I need

If you can run a bukkit/spigot/paper server, you probably already have what you need. Also ~300MB disk space for the heavy buildtools files, you can delete them after if you don't expect to be recompiling it.

# How do I use it?

Just download it and run `build.bat`, it should generate a jar file in the build directory.

# Things you should do

Make sure you add any additional .java files you make to the javac line in build.bat (inb4 muh auto\*hell, do it yourself if you need it that much, it's not too much to ask to write some text in a file every now and then)

Make sure you update the batch and plugin.yml if you change something that needs to be notified!

Update the `--rev` argument on `BuildTools` in `build.bat` to whatever version of MC you're compiling for. Manually delete `BuildTools\spigot.jar`.

You can also add a line just before `echo done` in `build.bat` that copies/moves your jar file to your server plugins directory, if you want faster testing.

# Addressing the lack of \*sh buildscript

I developed this plugin on Windows because it's what I had access to at the time. If you use Linux, it shouldn't be hard to port the batch script to \*sh.
