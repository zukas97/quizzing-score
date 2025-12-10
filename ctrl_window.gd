extends Window

signal button(button: int)
signal left_name_set(name: String)
signal right_name_set(name: String)
signal left_score_set(score: int)
signal right_score_set(score: int)
signal left_err_set(errors: int)
signal right_err_set(errors: int)


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
	
func _on_name_right_text_submitted(new_text: String) -> void:
	right_name_set.emit($CanvasLayer/right/name_right.text);
	pass # Replace with function body.

func _on_add_10_right_pressed() -> void:
	button.emit(1)

func _on_set_score_left_text_submitted(new_text: String) -> void:
	left_score_set.emit(int(new_text))
	pass

func _on_set_score_right_text_submitted(new_text: String) -> void:
	right_score_set.emit(int(new_text))
	pass # Replace with function body.

func _on_add_error_left_pressed() -> void:
	button.emit(2)
	pass # Replace with function body.

func _on_add_error_right_pressed() -> void:
	button.emit(3)
	pass # Replace with function body.




func _on_right_err_text_submitted(new_text: String) -> void:
	right_err_set.emit(int($CanvasLayer/right/right_err.text))
	pass # Replace with function body.

func _on_left_err_text_submitted(new_text: String) -> void:
	left_err_set.emit(int($CanvasLayer/left/left_err.text))
	pass # Replace with function body.


