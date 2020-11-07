extends KinematicBody2D

export (int) var speed # Variable de velocidad

var direction = Vector2()

# Funcion para mover al personaje
func obtener_entradas():
	direction = Vector2()
	
	if Input.is_action_pressed("derecha"): # Mover hacia la derecha
		direction.x += 1
	if Input.is_action_pressed("left"): # Mover hacia la izquierda
		direction.x -= 1
	if Input.is_action_pressed("arriba"): # Mover hacia arriba
		direction.y -= 1
	if Input.is_action_pressed("abajo"): # Mover hacia abajo
		direction.y += 1
	
	direction = direction.normalized() * speed # Mover diagonalmente al personaje sin sumar los valores

func _physics_process(delta):
	obtener_entradas()
	direction = move_and_slide(direction) 
