class Animal {
  void CanRun() {
    print("I can run!");
  }

  void CanFly() {
    print("I can fly!");
  }

  void CanSwim() {
    print("I can swim!");
  }
}

class Dog extends Animal {
  void CanRun() {
    print("I am dog I can run!");
  }

  void CanSwim() {
    print("I am dog, I can swim!");
  }
}

class Cat extends Animal implements Dog {
  void CanRun() {
    print("I am cat I can run!");
  }

  void CanSwim() {
    print("I am cat, I can swim!");
  }
}

class Parrot extends Animal {
  void CanFly() {
    print("I am parrot, I can fly!");
  }
}

class Fish extends Animal {
  void CanSwim() {
    print("I am fish, I can swim!");
  }
}

void main(List<String> args) {
  Dog myDog = new Dog();
  myDog.CanRun();
  myDog.CanSwim();
  print("\n");

  Cat myCat = new Cat();
  myCat.CanRun();
  myCat.CanSwim();
  print("\n");

  Parrot myParrot = new Parrot();
  myParrot.CanFly();
  print("\n");
  
  Fish myFish = new Fish();
  myFish.CanSwim();
}
