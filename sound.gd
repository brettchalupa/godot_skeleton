extends Node

## Music & sound effect player and manager

## Play a given audio stream instance, respecting the player's setting.
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
