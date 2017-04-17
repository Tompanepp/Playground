abstract class Animal {
    protected String name;
}

class Girraffe extends Animal{
  public void setName(String name){
    this.name = name;
  }
}

class Inheritance {
  public static void main(String [] args){
    Girraffe girraffe = new Girraffe();
    girraffe.setName("Giffy");

    System.out.println(girraffe.name);
  }
}
