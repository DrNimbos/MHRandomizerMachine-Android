extends Control

var SELECT_BR = load("res://cena/select_br.tscn")
var SELECT_US = load("res://cena/select.tscn")


func _ready() -> void:
	if GameManager.opened_first_time == false:
		
		var idioma_sistema: String = OS.get_locale_language()
		print(idioma_sistema)
		match idioma_sistema:
			"pt":
				GameManager.set_language("BR")
			"en":
				GameManager.set_language("US")
			_:
				GameManager.set_language("US")
		GameManager.opened_first_time = true
		get_tree().change_scene_to_packed.call_deferred(SELECT_US)
	else:
		pass

func _on_portugues_pressed() -> void:
	GameManager.set_language("BR")
	print(GameManager.language)
	get_tree().change_scene_to_packed(SELECT_US)
	

func _on_english_pressed() -> void:
	GameManager.set_language("US")
	print(GameManager.language)
	get_tree().change_scene_to_packed(SELECT_US)

func _notification(what: int) -> void:
	if what == Node.NOTIFICATION_WM_GO_BACK_REQUEST:
		get_tree().quit()
