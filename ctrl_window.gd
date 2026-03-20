extends Window

signal button(button: int)
signal left_name_set(name: String)
signal right_name_set(name: String)
signal left_score_set(score: int)
signal right_score_set(score: int)
signal left_err_set(errors: int)
signal right_err_set(errors: int)
signal clear
signal left_timeouts_set(timeouts: int)
signal right_timeouts_set(timeouts: int)


func _ready() -> void:
	show()

func _process(_delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	button.emit(0)


func _on_name_left_text_submitted(new_text: String) -> void:
	left_name_set.emit($CanvasLayer/left/name_left.text)
	
func _on_name_right_text_submitted(new_text: String) -> void:
	right_name_set.emit($CanvasLayer/right/name_right.text);

func _on_add_10_right_pressed() -> void:
	button.emit(1)

func _on_set_score_left_text_submitted(new_text: String) -> void:
	left_score_set.emit(int(new_text))

func _on_set_score_right_text_submitted(new_text: String) -> void:
	right_score_set.emit(int(new_text))

func _on_add_error_left_pressed() -> void:
	button.emit(2)

func _on_add_error_right_pressed() -> void:
	button.emit(3)

func _on_clear_pressed() -> void:
	clear.emit()

func _on_right_err_text_submitted(new_text: String) -> void:
	right_err_set.emit(int(new_text))

func _on_left_err_text_submitted(new_text: String) -> void:
	left_err_set.emit(int(new_text))

func _on_timeouts_right_text_submitted(new_text: String) -> void:
	right_timeouts_set.emit(int(new_text))


func _on_timeouts_left_text_submitted(new_text: String) -> void:
	left_timeouts_set.emit(int(new_text))

func _on_add_5_left_pressed() -> void:
	button.emit(4)

func _on_add_5_right_pressed() -> void:
	button.emit(5)


