extends Window

signal button(button: int)
signal left_name_set(name: String)
signal right_name_set(name: String)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	button.emit(0)


func _on_name_left_text_submitted(new_text: String) -> void:
	left_name_set.emit($CanvasLayer/left/name_left.text)


func _on_add_10_right_pressed() -> void:
	button.emit(1)