# Welcome

## Bried intro 

## Sumary of the importance of classes in Ruby

### Classes stand as foundational pillars, playing a piviotal role in shaping the structure and origaniztion of code.  Understanding the importance of classes is the key to unlocking the power of object-orient programming (OOP) in Ruby.

## What is an object?
    - An object is a self contained unit that reperesnts a real-world entity or concept.  Objects have both attribues (characteristics or data) and methods(actions or behaviors). In Ruby objects are instances of classes

## What is a class?
    - Think of a class as a blueprint or template.  It defines the structure and behavior that its instances(objects) will have.  When you create an object from a class, you're said to be creating an instance of that class.  Each instance has its own sets of attirbutes and perform actions defined by the class.

## Example
```
    class Dog
        def initialize(name, breed)
            @name = name
            @breed = breed
        end
    
        def bark
            puts "Woof!"
        end

        def name_breed
            puts "Name: #{@name}, Breed: #{@breed}
        end
    end
```

- initialize method
    - the initialize method is a constructor for creating instances.  It's a specical method that gets called when you create a new instance (object) of a class.  Its primary purpose is to set up or initialize the initial state of the object.  Think of it as the method that prepares an object for use by assiging values to its attrivutes or performing any necessary setup.

    - Look at it as a birth certifiate of an object.  When a new object is created from a class, the 'initialize' method is automatically called.  It's resonsible ofr setting the initial values of teh object's attributes, ensurig that the object starts its life ina a well-defined state.

    - It's essentially the first task an object perfroms as it comes into existence

- instance variables
    - is like a container that holds information specific to an individual object created from a class.  It's a way for objects to store and remember data, ensuring that each instanceof a class can have its own unique sets of values for those variables.

- class methods
    - methods that are defined on the class itself, rather than on instances of the class.  These methods are called on the class, not on individual objects created from the class.

    - think of class methods like skills or abilitites that belong to the entire group(class) rather than specific memebers (instances).  While instance methods operate on indiviual objects, class methods operate on the class as a whole.  

- creating instances (objects) of the Dog class

    ```
        dog1 = Dog.new("Buddy", "Golden Retriver")
        dog2 = Dog.new("Max", "Beagle")
    ```
  

- Calling methods in classes
    
    ```
    dog2.bark 
    -> Woof!

    dog1.name_breed
    -> Name: Buddy, Breed: Golden Retriver
    ```



## Notes from CS50