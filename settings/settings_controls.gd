extends VFlowContainer

func _ready() -> void:
	for child in get_children():
		if child.visible:
			child.grab_focus()
			return
