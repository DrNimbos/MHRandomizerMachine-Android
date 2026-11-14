extends Node


@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"
@onready var cond_list_: Button = $"../Ui_bottom/cond_list_"
@onready var monst_list: Button = $"../Ui_bottom/monst_arma/monst_list"
@onready var arma_list: Button = $"../Ui_bottom/monst_arma/arma_list"
@onready var ativar: Button = $"../Select Stuff/Buttons/ativar_mons/ativar"
@onready var desativar: Button = $"../Select Stuff/Buttons/ativar_mons/desativar"
@onready var v_box_container_2: GridContainer = $"../Select Stuff/List Arm/Lista Arma/VBoxContainer2"
@onready var menu: Button = $"../Ui_top/menu"
@onready var monstros: AudioStreamPlayer = $"../Monstros"
@onready var armas: AudioStreamPlayer = $"../Armas"
@onready var config: AudioStreamPlayer = $"../Config"
@onready var condi: AudioStreamPlayer = $"../Condi"
@onready var filter: LineEdit = $"../Select Stuff/List Mons/filter"
@onready var ativar_ar: Button = $"../Select Stuff/Buttons/ativar_weap/ativar_ar"
@onready var desativar_ar: Button = $"../Select Stuff/Buttons/ativar_weap/desativar_ar"
@onready var select_stuff: Control = $"../Select Stuff"




func _on_cond_list__pressed() -> void:
	select_stuff.change_setting("Condition")


func _on_monst_list_pressed() -> void:
	select_stuff.change_setting("Monster")


func _on_arma_list_pressed() -> void:
	select_stuff.change_setting("Weapon")


func marcar_todos(valor: bool):
	for child in v_box_container_2.get_children():
		if child is CheckBox:
			if child.visible:
				child.button_pressed = valor


func _on_ativar_ar_pressed() -> void:
	marcar_todos(true)


func _on_desativar_ar_pressed() -> void:
	marcar_todos(false)


func _on_settings_toggled() -> void:
	select_stuff.change_setting("Config")
