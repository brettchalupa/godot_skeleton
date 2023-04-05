extends VFlowContainer

func _ready() -> void:
	focus()
	
	if !OS.has_feature("pc"):
		$Quit.hide()

func focus() -> void:
	get_children()[0].grab_focus()

func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_main_menu_pressed() -> void:
	var root = get_tree().get_root().get_tree()
	root.paused = false
	root.change_scene_to_file(Global.SCENE_MAIN_MENU)
