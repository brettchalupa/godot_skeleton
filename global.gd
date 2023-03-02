extends Node

var play_sfx = true
var play_music = true

const SCENE_MAIN_MENU = "res://main_menu.tscn"

func _ready():
	Engine.max_fps = 60
