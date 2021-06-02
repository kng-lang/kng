

Animal : interface {
    Eyes : pub fn U8,
    Legs : pub fn U8
}


Human : packed type {
}


Human.{
    Eyes : pub fn (^this){
        2;
    }
    Legs : pub fn (^this){
        2;
    }
}




test_animal : fn (animal : ^Animal){
    animal.eyes;
    animal.legs;
}

main : pub fn {

    // to pass an interface, we need to pass by pointer,
    // as an interface has unknown size at compile time

    animal : Animal = Human();

    test_animal(^animal);

}