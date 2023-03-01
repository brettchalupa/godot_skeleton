extends VFlowContainer

@export var gameplay_scene:PackedScene
@export var settings_scene:PackedScene

func _ready():
	$Start.grab_focus()
	
	if !OS.has_feature("pc"):
		$Quit.hide()

func _on_quit_pressed():
	get_tree().quit()

func _on_settings_pressed():
	get_tree().change_scene_to_packed(settings_scene)

func _on_start_pressed():
	get_tree().change_scene_to_packed(gameplay_scene)
