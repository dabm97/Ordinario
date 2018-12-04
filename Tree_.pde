int [] x = {4, 12, 9, 23, 6, 91, 2, 54, 37, 6, 1, 5, 78, 87, 25};
int [] newX;
int posnewX;
Node root; //Declarando nodo
Tree Arbol;



void setup() {
  posnewX = 0;
  newX = new int [x.length];
  root = new Node(x[0]); //Inicializar nodo
  Arbol = new Tree(root);
  println(x);
  println("-----------");

  for (int i = 1; i < x.length; i++) {         // Construir arbol
    Arbol.createNode(Arbol.verde[0], x[i]);
  }
  Arbol.acomodar(Arbol.verde[0]);   // Ordenar numeros de "x"
  println(newX);
}

void draw() {
}
