# Godot Skeleton

<img alt="Godot Skeleton logo with skull icon above" src="https://user-images.githubusercontent.com/928367/222969593-82cacc81-7867-413f-b45c-69a8e67a2a59.png" width="400">

<img alt="Godot Skeleton logo with skull icon above" src="https://user-images.githubusercontent.com/928367/222971860-a291163b-7c4d-47c9-8260-73a439200768.png" width="800">

[🎮 Check it out in your browser](https://brettchalupa.itch.io/godot-skeleton)
[📺 Watch the demo](https://www.youtube.com/watch?v=kXY98csyvKM)

Template repository for getting started with a new Godot game quickly. Godot Skeleton handles the boring stuff like main menu, pause menu, settings that persist and load from disk, and structuring your project.

[Support the continued development of Godot Skeleton.](https://www.buymeacoffee.com/brettchalupa)

Godot versions supported: 4.0+

## Bugs/Features

- Main Menu, Settings, Gameplay, and Pause scenes
- Mouse, keyboard, and controller support by default
- Sensible defaults
- Convention over configuration
- Easy to change
- Uses the Compatibility renderer by default for maximum compatibility; change the renderer as needed!
- Ship quickly, ship often
- Developed with all platforms in mind
- Minimal yet stylish
- Each scene has its own folder
- Preconfigured exports for Web, Linux, macOS, and Windows
- OS-aware menu options & settings
- Build script for exports (requires Ruby and untested on Windows)
- Automatically upload to itch.io if [butler](https://itch.io/docs/butler/) is installed
- Web builds load slowly in Chrome and Firefox on macOS and don't work in Safari at all; this is an issue with Godot 4.0, [see this issue for more details](https://github.com/godotengine/godot/issues/70691)

## Use It

- Go to https://github.com/brettchalupa/godot_skeleton and click "Use this template"
- Or [download the source](https://github.com/brettchalupa/godot_skeleton/archive/refs/heads/main.zip), unzip it, and you're good to go!

## Set Your Game Up

1. Add a title to your game and change the credits
2. Configure exports
	- Change the bundle identifier for the MacOS export
	- Add or modify based on your game's needs
3. Set up the `[itch]` section in `export.cfg` for your game on itch.io

## Notes

- Don't worry about keeping your game up to date with Godot Skeleton. It's intended to just be a starting point. When you use it again, it may have some improvements!
- Gameplay defaults to a 2D scene, but you can easily change that for your game's needs.
- Keyboard controls:
	- Config I:
		- Directional input: WASD
		- Confirm: J
		- Cancel: K
		- Pause: P
	- Config II:
		- Directional input: Arrows
		- Confirm: Z
		- Cancel: X
		- Pause: Esc
- Joypad controls: Xbox config where bottom button is confirm
- Settings config gets written to the userspace, [see the docs for details on the per-OS location](https://docs.godotengine.org/en/stable/tutorials/io/data_paths.html#accessing-persistent-user-data-user)
- Play sounds with `Sound.play_sfx(audio_stream_instance)` so that it respects the player's settings
- Play music with `Sound.play_music(audio_stream_instance)` so that it respects the player's settings
- Add nodes to the `debug_ui` group to toggle their visibility in debug builds with the <kbd>0</kbd> key

_More to come as I make more games with Godot!_

## Contribute

You're welcome to contribute fixes and improvements to Godot Skeleton. If you find your needs differ widely, fork it and maintain your own template! That way you'll have it for your own future projects.

### Style Guide

Here are my preferences when working on Godot projects and organizing files and nodes.

- Name all files (scripts, scenes, etc.) using snake case - `main_menu`
- Name all nodes in a scene using Pascal case - `MenuOption`
- Use `snake_case` for all GDScript variables and functions
- Use `SCREAMING_SNAKE_CASE` for all constants
- Prefer static typing over dynamic typing

I try to follow these the best I can.

## Template License

Godot Skeleton is dedicated to the public domain. Use it for your own projects with no need for credit or attribution or anything. [View the Unlicense for more details.](https://unlicense.org/)

---

Delete above and fill out your own README!

# Your Game

[describe your game]

## Developing

0. Install Godot 4
1. Clone the repository
2. Open up `project.gdot`

## Build Exports

The `export` script uses Ruby for now (sorry). Run it with:

``` console
./export
```

`godot` must be present in your environment as an executable for the script to work.

If you configure `[itch]` in `export.cfg` with `user` (your handle) and `game` (your game slug) and have [butler](https://itch.io/docs/butler/) installed, your builds will automatically get pushed to itch.io.
