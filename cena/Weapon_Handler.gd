extends Node

@onready var settings_btn: Button = $"../Ui_top/settings"
@onready var node_2d: Node = $".."

@onready var disable_tempereds: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Disable Tempereds"
@onready var only_tempered: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Tempered"
@onready var only_arch_tempered: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Arch-Tempered"
@onready var only_apex: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Apex"
@onready var only_hyper: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Hyper"
@onready var only_afflicted: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Afflicted"
@onready var only_zenith: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Zenith"
@onready var only_musou: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Musou"
@onready var enable_capture: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Enable capture"
@onready var only_deviant: CheckBox = $"../Select Stuff/Sett/ScrollContainer/VBoxContainer/Only Deviant"


func _ready() -> void:
	if GameManager.current_game != null:
		match GameManager.current_game.name:
			"Monster Hunter 1 (JP)","Monster Hunter 1 (US)","Monster Hunter G","Monster Hunter Freedom":
				settings_btn.hide()
				node_2d.disable_tempered = true
			"Monster Hunter 2", "Monster Hunter Freedom", "Monster Hunter Freedom 2", "Monster Hunter Freedom Unite", "Monster Hunter Portable 3", "Monster Hunter 3", "Monster Hunter 3 Ultimate", "Monster Hunter Outlanders":

				settings_btn.show()
				enable_capture.show()
				only_tempered.hide()
				disable_tempereds.hide()
				only_arch_tempered.hide()
				only_afflicted.hide()
				only_zenith.hide()
				only_musou.hide()
				only_apex.hide()
				only_hyper.hide()
				only_deviant.hide()
				node_2d.disable_tempered = true
			"Monster Hunter 4", "Monster Hunter 4 Ultimate":

				settings_btn.show()
				enable_capture.show()
				only_tempered.hide()
				disable_tempereds.hide()
				only_arch_tempered.hide()
				only_afflicted.hide()
				only_zenith.hide()
				only_musou.hide()
				only_apex.show()
				only_hyper.hide()
				only_deviant.hide()
				node_2d.disable_tempered = true
			"Monster Hunter Generations Ultimate":

				settings_btn.show()
				enable_capture.show()
				only_tempered.hide()
				disable_tempereds.hide()
				only_arch_tempered.hide()
				only_afflicted.hide()
				only_zenith.hide()
				only_musou.hide()
				only_apex.hide()
				only_hyper.show()
				only_deviant.show()
				node_2d.disable_tempered = true
			"Monster Hunter Generations":

				settings_btn.show()
				enable_capture.show()
				only_tempered.hide()
				disable_tempereds.hide()
				only_arch_tempered.hide()
				only_afflicted.hide()
				only_zenith.hide()
				only_musou.hide()
				only_apex.hide()
				only_hyper.hide()
				only_deviant.show()
				node_2d.disable_tempered = true
			"Monster Hunter World", "Monster Hunter World Iceborne", "Monster Hunter Wilds":

				settings_btn.show()
				enable_capture.show()
				only_tempered.show()
				disable_tempereds.show()
				only_arch_tempered.show()
				only_afflicted.hide()
				only_zenith.hide()
				only_musou.hide()
				only_apex.hide()
				only_deviant.hide()
				only_hyper.hide()
				node_2d.disable_tempered = false
			"Monster Hunter Rise", "Monster Hunter Rise Sunbreak":

				settings_btn.show()
				enable_capture.show()
				only_tempered.hide()
				disable_tempereds.hide()
				only_arch_tempered.hide()
				only_afflicted.show()
				only_zenith.hide()
				only_musou.hide()
				only_apex.hide()
				only_hyper.hide()
				only_deviant.hide()
				node_2d.disable_tempered = true
			"Monster Hunter Frontier":

				settings_btn.show()
				enable_capture.show()
				only_tempered.hide()
				disable_tempereds.hide()
				only_arch_tempered.hide()
				only_afflicted.hide()
				only_zenith.show()
				only_musou.show()
				only_apex.hide()
				only_hyper.hide()
				only_deviant.hide()
				node_2d.disable_tempered = true
			"Custom":

				settings_btn.show()
				enable_capture.show()
				only_tempered.show()
				disable_tempereds.show()
				only_arch_tempered.show()
				only_afflicted.show()
				only_zenith.show()
				only_musou.show()
				only_apex.show()
				only_hyper.show()
				node_2d.disable_tempered = false
			_:
				settings_btn.hide()
