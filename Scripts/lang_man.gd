extends Node


@onready var cond_list_: Button = $"../Ui_bottom/cond_list_"
@onready var monst_list: Button = $"../Ui_bottom/monst_arma/monst_list"
@onready var ativar: Button = $"../Select Stuff/Buttons/ativar_mons/ativar"
@onready var desativar: Button = $"../Select Stuff/Buttons/ativar_mons/desativar"
@onready var arma_list: Button = $"../Ui_bottom/monst_arma/arma_list"

@onready var ativar_ar: Button = $"../Select Stuff/Buttons/ativar_weap/ativar_ar"
@onready var desativar_ar: Button = $"../Select Stuff/Buttons/ativar_weap/desativar_ar"
@onready var menu: Button = $"../Ui_top/menu"

@onready var settings: Button = $"../Ui_top/settings"

@onready var filter: LineEdit = $"../Select Stuff/List Mons/filter"
@onready var salvar: Button = $"../Select Stuff/Conditions/leitura/btns_save/salvar"
@onready var carregar: Button = $"../Select Stuff/Conditions/leitura/btns_save/carregar"
@onready var inserir: LineEdit = $"../Select Stuff/Conditions/Inserir"


func _ready() -> void:
	if GameManager.language == "BR":
		cond_list_.text = "Condições"
		monst_list.text = "Monstros"
		ativar.text = "Ativar Todos"
		desativar.text = "Desativar Todos"
		arma_list.text = "Armas"
		ativar_ar.text = "Ativar Todos"
		desativar_ar.text = "Desativar Todos"
		menu.text = "Menu"
		filter.placeholder_text = "Filtro"
		salvar.text = "salvar"
		carregar.text = "carrega"
		inserir.placeholder_text = "Inserir Condição"
	elif GameManager.language == "US":
		cond_list_.text = "Conditions"
		monst_list.text = "Monsters"
		ativar.text = "Activate All"
		desativar.text = "Deactivate All"
		arma_list.text = "Weapons"
		ativar_ar.text = "Activate All"
		desativar_ar.text = "Deactivate All"
		menu.text = "Menu"
		filter.placeholder_text = "Filter"
		salvar.text = "Save"
		carregar.text = "Load"
		inserir.placeholder_text = "Insert condition"
