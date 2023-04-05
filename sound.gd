## Music & sound effect player and manager
extends Node

## Play a given audio stream instance, respecting the player's setting for playing sound effects.
## Returns true if the sfx played, otherwise returns false.
func play_sfx(sfx) -> bool:
	if Global.play_sfx:
		if sfx != null and sfx.has_method("play"):
			sfx.play()
			return true
		else:
			print_debug("Failed to play sound effect %s, doesn't have play() method" % sfx)
			return false
	else:
		return false

## Play a given audio stream instance, respecting the player's setting for playing.
## Returns true if the music track played, otherwise returns false.
func play_music(music) -> bool:
	if Global.play_music:
		if music != null and music.has_method("play"):
			music.play()
			return true
		else:
			print_debug("Failed to play music %s, doesn't have play() method" % music)
			return false
	else:
		return false
