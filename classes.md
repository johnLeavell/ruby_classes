# Welcome

This is a continuation from a previous lession [defining our own classes](https://learn.firstdraft.com/lessons/78)
Here is a list of topics you should be fimilar with based on that assignment
- class
- objects
- methods
    - class methods
    - instance methods
- attributes
    - attr accessor
    - self 
        - if theres an instance varialbe and  method of the same name, self will reference the method.
- Inheritence
- Initizlier



## Brief intro 

## Sumary of the importance of classes in Ruby

### Classes stand as foundational pillars, playing a piviotal role in shaping the structure and origaniztion of code.  Understanding the importance of classes is the key to unlocking the power of object-orient programming (OOP) in Ruby.

## What is a class?
    - Think of a class as a blueprint or template.  It defines the structure and behavior that its instances(objects) will have.  When you create an object from a class, you're said to be creating an instance of that class.  Each instance has its own sets of attirbutes and perform actions defined by the class.

## What is an object?
     - An object is a self contained unit that reperesnts a real-world entity or concept.  Objects have both attribues (characteristics or data) and methods(actions or behaviors). In Ruby objects are instances of classes. Product based off a blueprint.

- initialize method
    - the initialize method is a constructor for creating instances.  It's a specical method that gets called when you create a new instance (object) of a class.  Its primary purpose is to set up or initialize the initial state of the object.  Think of it as the method that prepares an object for use by assiging values to its attrivutes or performing any necessary setup.

    - Look at it as a birth certifiate of an object.  When a new object is created from a class, the 'initialize' method is automatically called.  It's resonsible ofr setting the initial values of teh object's attributes, ensurig that the object starts its life ina a well-defined state.

    - It's essentially the first task an object perfroms as it comes into existence

- instance variables
    - is like a container that holds information specific to an individual object created from a class.  It's a way for objects to store and remember data, ensuring that each instanceof a class can have its own unique sets of values for those variables.

- class methods
    - methods that are defined on the class itself, rather than on instances of the class.  These methods are called on the class, not on individual objects created from the class.

    - think of class methods like skills or abilitites that belong to the entire group(class) rather than specific memebers (instances).  While instance methods operate on indiviual objects, class methods operate on the class as a whole.  

## Example

```
class Person
  attr_accessor :first_name
  attr_accessor :last_name

  def Person.parse(last_comma_first)
    last_first_array = last_comma_first.split(",")
    the_last_name = last_first_array.at(0).strip
    the_first_name = last_first_array.at(1).strip
    
    a_new_person = Person.new
    a_new_person.first_name = the_first_name
    a_new_person.last_name = the_last_name
    
    return a_new_person
  end
end

a_person = Person.parse("Betina, Raghu")
pp a_person.first_name
pp a_person.last_name
```

In the example below we 
- Created Class named dog
- Setup initializer
    - can take default values on the arguments *(note) name is a parameter value, @name is an istance variable
    - attribute accessor provides a way to access instance variable outside the class, like a method returnig the value of the instance variable
    - initializer parameters require values in order to be instantiaceted
- A class has been created but you do not have a dog yet
- Outside of the class we will create dog instances

```
    class Dog
        def initialize(name, breed)
            @name = name
            @breed = breed
        end
        
        # this is an example of using default values 
        # we can call bark in two ways
        # defualt value is used if no argument is passed to it
        # we can create a custom sound by passing it in as a value
        # puts bark -> would return "Woof!"
        # puts bark("meow") -> would return "meow"
        def bark(sound = "Woof!")
            puts sound
        end

        def name_breed
            puts "Name: #{@name}, Breed: #{@breed}

            # puts "Name: #{@name}, Breed: #{@breed}, this is the same is writing 
            # puts "Name: #{self.name}, Breed: #{self.breed}
        end
    end
```

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
