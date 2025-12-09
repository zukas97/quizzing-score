extends Node2D

var win: PackedScene = load("res://ctrl_window.tscn")
var ctrl_win
var left_score: int
var right_score: int
var left_err: int
var right_err: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#ctrl_win = win.instantiate()
	#get_tree().get_root().add_child.call_deferred(ctrl_win)
	#$Window.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	# set score
	$CanvasLayer/bottom_left/score.set_text(str(left_score))
	$CanvasLayer/bottom_right/score.set_text(str(right_score))
	
	# set errors
	$CanvasLayer/left_errors.set_text(str(left_err))
	$CanvasLayer/right_errors.set_text(str(right_err))
	
	# subtract 5 for errors


func _on_window_button(button: int) -> void:
	match button:
		#left score
		0:
			left_score += 10
		#right score
		1:
			right_score += 10
		#left err
		2:
			left_err += 1
			if left_err >= 5:
				left_score -=5
		#right err
		3:
			right_err += 1
			if right_err >= 5:
				right_score -=5
		


func _on_window_left_name_set(name: String) -> void:
	$CanvasLayer/left_name.set_text(name)

func _on_window_right_name_set(name: String) -> void:
	$CanvasLayer/right_name.set_text(name)

func _on_window_left_score_set(score: int) -> void:
	left_score = score

func _on_window_right_score_set(score: int) -> void:
	right_score = score


func _on_window_right_err_set(errors: int) -> void:
	right_err = errors
	pass # Replace with function body.


func _on_window_left_err_set(errors: int) -> void:
	left_err = errors
	pass # Replace with function body.
