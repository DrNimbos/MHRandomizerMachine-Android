extends Control

@onready var background: Sprite2D = $background
@onready var conditions: Control = $Conditions
@onready var list_mons: Control = $"List Mons"
@onready var list_arm: Control = $"List Arm"
@onready var sett: Control = $Sett
@onready var buttons: Control = $Buttons
@onready var backbutton: Button = $bakc/backbutton
@onready var ativar_mons: Control = $Buttons/ativar_mons
@onready var ativar_weap: Control = $Buttons/ativar_weap
@onready var leitura: Node2D = $Conditions/leitura
@onready var collision_shape_2d: CollisionShape2D = $"../Luna_and_stuff/Area2D/CollisionShape2D"



func _ready() -> void:
	hide()

func change_setting(setting: String):
	match setting:
		"Monster":
			collision_shape_2d.disabled = true
			show()
			backbutton.show()
			list_mons.show()
			list_arm.hide()
			conditions.hide()
			sett.hide()
			ativar_mons.show()
			ativar_weap.hide()
			leitura.hide()
		"Weapon":
			collision_shape_2d.disabled = true
			show()
			backbutton.show()
			list_mons.hide()
			list_arm.show()
			conditions.hide()
			sett.hide()
			ativar_mons.hide()
			ativar_weap.show()
			leitura.hide()
		"Condition":
			collision_shape_2d.disabled = true
			show()
			backbutton.show()
			list_mons.hide()
			list_arm.hide()
			conditions.show()
			sett.hide()
			ativar_mons.hide()
			ativar_weap.hide()
			leitura.show()
		"Config":
			collision_shape_2d.disabled = true
			show()
			backbutton.show()
			list_mons.hide()
			list_arm.hide()
			conditions.hide()
			sett.show()
			ativar_mons.hide()
			ativar_weap.hide()
			leitura.show()
		"Back":
			collision_shape_2d.disabled = false
			list_mons.hide()
			list_arm.hide()
			conditions.hide()
			sett.hide()
			leitura.hide()
			ativar_mons.hide()
			ativar_weap.hide()
			backbutton.show()
			hide()

func _on_button_pressed() -> void:
	change_setting("Back")
	
