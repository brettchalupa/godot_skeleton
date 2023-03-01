extends VFlowContainer

func _ready():
	get_children()[0].grab_focus()

	if !OS.has_feature("pc"):
		$FullscreenToggle.hide()

func _on_back_pressed():
	get_tree().change_scene_to_file("res://main_menu.tscn")
