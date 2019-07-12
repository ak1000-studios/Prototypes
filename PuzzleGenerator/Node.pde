class Node{
    private float x;
    private float y;
    private float radius = 40;

    public Node(float x, float y){
        this.x = x;
        this.y = y;
    }

    public Node(PVector vector){
        x = vector.x;
        y = vector.y;        
    }
    
    public float getX(){
      return x;
    }

    public float getY(){
      return y;
    }

    public void display(){
        ellipse(x,y,radius,radius);
    }




}
