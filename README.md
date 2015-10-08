![logo](resource/png/logo.png)

# Kulu [![GitHub license](https://img.shields.io/badge/license-MIT-lightgrey.svg)](https://raw.githubusercontent.com/jwmann/kulu/master/LICENSE) [![GitHub release](https://img.shields.io/github/release/jwmann/kulu.svg)](https://github.com/jwmann/kulu/releases) [![travis-ci](https://travis-ci.org/jwmann/kulu.svg)](https://travis-ci.org/jwmann/kulu)

###### A better audio output switcher for OS X

## TL;DR
Kulu helps users to switch between audio outputs by user-defined shortcuts.

## A little background

I use 2 audio outputs on my Mac, my speakers, and my headphones. When
I'd receive a Skype call or the situation didn't allow loud noises, I
would need to quickly switch my audio output to my headphones and then back
to my speakers after the call was over.

Initially I was using the [SoundSource](https://rogueamoeba.com/legacy/) app made by [RogueAmoeba](https://rogueamoeba.com/)
to switch the output from a drop down menu in the top bar.
Eventually, that became quite tedious by constantly having to grab my mouse, find the icon amidst all the others, click, find the output I want within the list and then click again.

I decided to create an Applescript to handle this task. Essentially the Applescript was bound to a workflow, which was bound to a key binding.
This allowed me to press `Cmd + F12` to toggle between my audio outputs. The only drawback was that the code executed slugglishly, sometimes taking up to 5 seconds to switch.
It also had trouble detecting the key binding for some reason.

After a few months using the Applescript method, I discovered an app called [Kawa](https://github.com/noraesae/kawa). 
You should check it out if you haven't but essentially this is an open-source app that allows you to switch your keyboard inputs via keyboard bindings.
I found this concept so similar to my output issue, with a proper native app framework already in place as well a proper testing suite already configured. I felt compelled to fork this project and modify it to work with audio outputs instead of keyboard inputs.

All original code credit to [noraesae](https://github.com/noraesae) and his [Kawa](https://github.com/noraesae/kawa) app.

## Demo

[![demo](https://cloud.githubusercontent.com/assets/1013641/9109734/d73505e4-3c72-11e5-9c71-49cdf4a484da.gif)](http://vimeo.com/135542587)

For better quality, there is a
[video version of this demo](http://vimeo.com/135542587) on Vimeo.

## Install

The prebuilt binaries can be found in [Releases](https://github.com/jwmann/kulu/releases).

Unzip `Kulu.zip` and move `Kulu.app` to `Applications`.

## Preferences

Preferences can be found in a preference window. The window can be opened by
clicking the menubar icon of Kulu or launching Kulu again.

* General Stuff
  * **`Show Menubar Icon`**  
    Show the icon of Kulu in the OS X menubar. When you click the icon, a
    preference window will be opened. If this option is unset, the icon will be
    hidden and the preference window can be opened when launching Kulu again.
  * **`Launch Kulu on startup`**  
    Add Kulu to startup items.
* Shortcut
  * **`Use an advanced method to switch input sources`**  
    There is a known problem when programminly switching between complex input
    sources such as [CJK](https://en.wikipedia.org/wiki/CJK_characters)
    layouts. This option enables a workaround to fix the problem. In other words,
    if you find no problem using Kulu, please ignore this option. To use this
    option, the global shortcut of `Select next source in Input menu` should be
    set to `Alt+Command+Space`, which may be set by default. Unless the
    shortcut is set correctly and Kulu works as intended, you can check if the
    shortcut is set correctly in `System Preferences > Keyboard > Shortcuts >
    Input Sources`.

## Development

We use [Carthage](https://github.com/Carthage/Carthage) as a dependency manager.
You can find the latest releases of Carthage [here](https://github.com/Carthage/Carthage/releases),
or just install it with [Homebrew](http://brew.sh).

```bash
$ brew update
$ brew install carthage
```

To clone the Git repository of Kulu and install dependencies:

```bash
$ git clone git@github.com:jwmann/kulu.git
$ carthage bootstrap
```

To open the Xcode project of Kulu:

```
$ open kulu.xcodeproj
```

You can surely open the project from Xcode.

Kulu can be built with the `Product` menu in Xcode as other Xcode projects
are built. If you prefer using command line, just run the build script.

```
$ ./build.sh
```

It will build the project and export `Kulu.app` to the project root.

## Help!

The application is quite simple and this README contains quite most of it. When
you have a problem using Kulu, I would recommend reading this README again,
carefully.

* [Install](#install)
* [Preferences](#preferences)
* [Development](#development)

If there's still a problem, please upload it as an issue on
[Issues](https://github.com/jwmann/kulu/issues).

## License

Kulu is released under the [MIT License](LICENSE).
