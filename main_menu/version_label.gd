## Displays the current version of the game from export.cfg. If no version is
## set, since it's optional, this label gets hidden.
extends Label

func _ready() -> void:
	if Global.version != null:
		text = "v" + Global.version
	else:
		hide()
