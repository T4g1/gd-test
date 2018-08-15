extends KinematicBody2D


onready var velocity = Vector2(0, 0)


func _physics_process(delta):
    move_and_slide(velocity)


func _input(event):
    velocity = Vector2()
    if Input.is_action_pressed("ui_right"):
        velocity.x += 1
    if Input.is_action_pressed("ui_left"):
        velocity.x -= 1
    if Input.is_action_pressed("ui_down"):
        velocity.y += 1
    if Input.is_action_pressed("ui_up"):
        velocity.y -= 1

    velocity = velocity.normalized() * 75
