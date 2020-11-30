![An grid of images of pizza](https://raw.githubusercontent.com/jeffThompson/CreativeProgramming1/master/Week12_ObjectOrientedProgramming/Images/PizzaGrid.png)

# OBJECT-ORIENTED PROGRAMMING  
**To see more examples in action, see the `Code` folder here or [run them in the `p5.js` Editor](https://editor.p5js.org/jeffThompson/collections/BWqhLoCyE)**

The way we've been coding most of our examples up until now (using individual variables and lists, loops and functions) has worked well, but for more complex projects we'll need a better system. One very common paradigm is called ["object-oriented programming"](https://en.wikipedia.org/wiki/Object-oriented_programming) (or OOP, a [term coined by Alan Kay](https://softwareengineering.stackexchange.com/questions/142327/what-did-they-call-object-oriented-programming-before-alan-kay-invented-the-term), famous for his work on early GUI systems), which lets us define objects with a generic template. We can then create *instances* of that template. Each instance has variables defined in the template (position, size, etc) and actions that can be applied (move position, display onscreen, etc). The power here is that we can abstractly create object templates, create many instances of that object, access them individually or delete them as needed, and even nest classes inside each other!

In Javascript, our template is called a *class*. The class has a name (always uppercase), a *constructor* that defines the variables (called *properties*) for the class, and *methods* which are functions that can be run.

Before we start coding a class, it's helpful to think about this in the real world and pizza makes a great first example!


## PROPERTIES  
If we wanted to create a `Pizza` class, we'd start by identifying the aspects of each pie we'd want to store. These are called *properties* and are really just variables! For example, here are some variables we might want for our `Pizza` class:

* Order number  
* Size (12", 16", etc)  
* If it has been delivered  
* List of toppings  

Some of these values are unique (like the order number) and some may be shared among many pizzas (like the size). We can then use these to define some different pizzas:  

```
orderNumber: 0
size:        16
delivered:   false  
toppings:    [ 'sausage', 'onions' ]
```

And another – this one has no toppings 😭

```
orderNumber: 1
size:        12
delivered:   true  
toppings:    []
```  


## CONSTRUCTOR  
To make our `Pizza` class, it needs a *constructor*. This is kind of like `setup()` in your sketch: it runs once when a new `Pizza` gets created. The main purpose of the constructor is to define the variables our class is going to have.

```javascript
class Pizza {
  constructor(orderNumber, size, toppings) {
    this.orderNumber = orderNumber;
    this.size = size;
    this.toppings = toppings;
    this.delivered = false;
  }
}
```

Note that, for the first three variables, we're passing them in as arguments. That's beccause they'll be unique and we want to define them when the `Pizza` object gets created. The `delivered` variable though is always set to `false`, since the pizza can't be delivered before it's created!

**WHAT IS `THIS`?!?**  
You'll note in the constructor that we use `this.` when creating variables instead of `let`. `this` means a variable that's part of the class instead of one passed as an argument or a global variable. Forgetting `this` is a super-common error in Javascript, so watch your console.


## CREATING A PIZZA  
Remember that a class is a template, not an actual object! So let's go ahead and create the two pizzas we defined above:

```javascript
let pizza1 = new Pizza(0, 16, ['sausage', 'onions']);
let pizza2 = new Pizza(1, 12, []);

```

When creating the `Pizza`, we send the ID number, size, and list of toppings in as arguments. We can access those values, and any others defined in the constrcutor, using *dot syntax*. We've used this before with images, where we can get an image's width or height! For example, we can see if `pizza1` has been delivered like this:

```javascript
console.log(pizza1.delivered);
>> false
```

We can also modify variables this way too:

```javascript
pizza1.delivered = true;
console.log(pizza1.delivered);
>> true
```


## METHODS  
We can also add *methods* to our class. These are functions that can be run on individual instances of the class. We can create any methods we want, but common ones include `update()` to move objects and `display()` to draw them.

For our `Pizza` class, let's create an `addTopping()` function, which will update the list of toppings:

```javascript
addTopping(topping) {
  this.toppings.push(topping);
}
```

A few things to note here! First, even though our method is a function, we don't add the word `function` at the start. Also, we need to remember `this` when accessing a variable in the class. We can use our new method like this:

```javascript
pizza2.addTopping('pepperoni');
console.log(pizza2.toppings);
>> [ 'pepperoni' ]
pizza2.addTopping('green peppers');
console.log(pizza2.toppings);
>> [ 'pepperoni', 'green peppers' ]
```


## NEXT STEPS  
We've seen how object-oriented programming lets us define a class for an object as a template, build a constructor with variables that we can access and update, and how we can add methods. In the code examples included here, we'll look at various ways we can use this idea to make our code cleaner, easier to read and update, and allow us to build super powerful and fun projects that would be difficult or impossible otherwise!

To see more examples in action, see the `Code` folder here or [run them in the `p5.js` Editor](https://editor.p5js.org/jeffThompson/collections/BWqhLoCyE).

