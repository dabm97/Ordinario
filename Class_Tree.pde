class Tree {

  //Atributos
  Node [] verde; //Declarando Array de nodos
  //Constructor

  Tree(Node n) {
    verde = new Node[1];
    verde[0] = n;
  }

  //Métodos

  String checkSide(Node n, int val) {
    String res;

    if (val >= int(n.value)) {
      res = "left";
    } else {
      res = "right";
    }
    return res;
  }



  boolean checkEmpty(Node n, String side) {
    boolean empty = false;
    if (side == "left") {
      if (n.left == null) {
        empty = true;
      }
    }

    if (side == "right") {
      if (n.right == null) {
        empty = true;
      }
    }
    return empty;
  }



  void addLeftChild(Node n) {
    n.left = str(verde.length);
  }



  void addRightChild(Node n) {
    n.right = str(verde.length);
  }



  void createNode(Node n, int val) {
    String lado;
    lado = checkSide(n, val);
    if (lado == "left") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addLeftChild(n);
        Node nuevo;
        nuevo = new Node(verde.length, int(n.id), val);
        verde = (Node []) append(verde, nuevo);
      } else {
        createNode(verde[int(n.left)], val);
      }
    }



    if (lado == "right") {
      boolean vacio;
      vacio = checkEmpty(n, lado);
      if (vacio == true) {
        addRightChild(n);
        Node nuevo;
        nuevo = new Node(verde.length, int(n.id), val);
        verde = (Node []) append(verde, nuevo);
      } else {
        createNode(verde[int(n.right)], val);
      }
    }
  }

  void printData(int i) {
    println(Arbol.verde[i].id);
    println(Arbol.verde[i].parent);
    println(Arbol.verde[i].value);
    println(Arbol.verde[i].left);
    println(Arbol.verde[i].right);
    println(Arbol.verde[i].order);
    println(Arbol.verde[i].orderLeft);
    println(Arbol.verde[i].orderRight);
  }

  void acomodar(Node n) {
    if (n.left != null) {              //revisarHijoIzq
      if (n.orderLeft == true) {                       //revisarOrderLeft
        if (n.order == false) {                                            //revisarOrder
          Ordenar(n);
        }
      } else {
        irIzq(n);
      }
    } else {
      n.orderLeft=true;
    }
    if (n.order==false) {     //revisarOrder
      Ordenar(n);
    }
    if (n.right == null) {    //revisarHijoDch
      n.orderRight=true;
      irArriba(n);
    } 
    if (n.orderRight==false) {                     //revisarOrderRight
      irDch(n);
    }
    if (n.parent!=null) {            //revisarRoot
      irArriba(n);
    }
  }   //FIN

  void irIzq(Node n) {
    n.orderLeft=true;
    acomodar(verde[int(n.left)]);
  }

  void irDch(Node n) {
    n.orderRight=true;
    acomodar(verde[int(n.right)]);
  }

  void Ordenar(Node n) {
    newX[posnewX]=int (n.value);
    n.order= true;
    posnewX++;
  }

  void irArriba(Node n) {
    acomodar(verde[int(n.parent)]);
  }
}
