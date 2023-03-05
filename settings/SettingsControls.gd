extends VFlowContainer

func _ready():
	for child in get_children():
		if child.visible:
			child.grab_focus()
			return
