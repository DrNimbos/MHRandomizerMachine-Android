extends Node

@onready var condi_hand: Node = $"../../../condi_hand"


@onready var botao_salvar: Button = $btns_save/salvar

@onready var botao_carregar: Button = $btns_save/carregar
@onready var label: Label = $btns_save/Label


const CAMINHO_ARQUIVO := "user://desafios.json"
const TEMPO_FEEDBACK := 1.5

var _timer: Timer
var _texto_salvar := "Salvar"
var _texto_carregar := "Carregar"


func _ready() -> void:
	# guarda os textos originais dos botões
	label.text = ""
	_texto_salvar = botao_salvar.text
	_texto_carregar = botao_carregar.text

	_timer = Timer.new()
	_timer.one_shot = true
	_timer.wait_time = TEMPO_FEEDBACK
	_timer.timeout.connect(_restaurar_textos)
	add_child(_timer)



func _mostrar_feedback(mensagem: String) -> void:
	label.text = mensagem
	_timer.start()


func _restaurar_textos() -> void:
	label.text = ""


func exportar_desafios(desafios: Array[String]) -> bool:
	var arquivo := FileAccess.open(CAMINHO_ARQUIVO, FileAccess.WRITE)
	if arquivo == null:
		push_error("Erro ao salvar: %s" % FileAccess.get_open_error())
		return false
	arquivo.store_string(JSON.stringify(desafios, "\t"))
	arquivo.close()
	return true


func importar_desafios() -> bool:
	if not FileAccess.file_exists(CAMINHO_ARQUIVO):
		return false

	var arquivo := FileAccess.open(CAMINHO_ARQUIVO, FileAccess.READ)
	if arquivo == null:
		push_error("Erro ao abrir arquivo: %s" % FileAccess.get_open_error())
		return false

	var conteudo := arquivo.get_as_text()
	arquivo.close()
	return _processar_json(conteudo)


func _processar_json(conteudo: String) -> bool:
	var json := JSON.new()
	if json.parse(conteudo) == OK and json.data is Array:
		for item in json.data:
			var texto := str(item)
			if texto not in condi_hand.l_condi:
				condi_hand.adicionacond(texto)
		return true
	push_error("Erro ao importar: JSON inválido")
	return false



func _on_salvar_pressed() -> void:
	if exportar_desafios(condi_hand.l_condi):
		_mostrar_feedback("Salvo!")
	else:
		_mostrar_feedback("Erro!")


func _on_carregar_pressed() -> void:
	if importar_desafios():
		_mostrar_feedback("Carregado!")
	else:
		_mostrar_feedback("Nada salvo")
