extends StaticBody2D



# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	#primer piso
	crear_nodos(0,448, "res://Niveles/Piso1.tscn")
	crear_nodos(704,448, "res://Niveles/Piso1.tscn")
	
	#segundo piso
	crear_nodos(704,320, "res://Niveles/Piso2.tscn")
	crear_nodos(1408,320, "res://Niveles/Piso2.tscn")
	
	#tercer piso
	crear_nodos(704,192, "res://Niveles/Piso3.tscn")
	crear_nodos(1408,192, "res://Niveles/Piso3.tscn")
	
	#crear_nodos(800,416, "res://Niveles/Piso1.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var repetir : int = 704
	self.position.x -= 2
	var valorx : int
	
	
	
	#crear_nodos(500,352, "res://Niveles/Piso1.tscn")
	#if int(self.position.x) % 704 == 0:
		#valorx = -1*int(self.position.x)
		#crear_nodos( -valorx , 416, "res://Niveles/Piso1.tscn")
		#print("algo")
		#crear_nodos(repetir,446, "res://Niveles/Piso1.tscn")
	

#funcion para crer obstaculo y piso del nivel, tiene 3 parametros , x e y para ubicar el objeto y la direccion donde se encuentra la escena
func crear_nodos(x,y,direccion_nodo):
	var obs : StaticBody2D = null
	var direccion_obs : String = direccion_nodo
	obs = load(direccion_nodo).instance()
	obs.position = Vector2(x,y)
	add_child(obs)
	pass


