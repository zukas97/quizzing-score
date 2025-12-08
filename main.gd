extends Node2D

var win: PackedScene = load("res://ctrl_window.tscn")
var ctrl_win
var left_score: int
var right_score: int
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#ctrl_win = win.instantiate()
	#get_tree().get_root().add_child.call_deferred(ctrl_win)
	#$Window.show()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_window_button(button: int) -> void:
	match button:
		#left score
		0:
			left_score += 10
			$CanvasLayer/bottom_left/score.set_text(str(left_score))
		#right score
		1:
			right_score += 10
			$CanvasLayer/bottom_right/score.set_text(str(right_score))
		


func _on_window_left_name_set(name: String) -> void:
	$CanvasLayer/left_name.set_text(name)

func _on_window_right_name_set(name: String) -> void:
	$CanvasLayer/right_name.set_text(name)
