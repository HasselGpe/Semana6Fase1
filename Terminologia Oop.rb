
# Terminología Oop

# Programación orientada a objetos (OOP)

# Objetivos Académicos
# Comprender la terminología de OOP.
# Actividades
# Para este ejercicio hay que juntarse en equipos.

# De los términos siguientes explica en 2 o 3 oraciones cada concepto. Y 
# ejemplifícalo con: dibujos, pseudo-código o código.

# Inheritance
# Composition
# Encapsulation
# Duck Typing
# The Law of Demeter (ej.)
# Overriding Methods (and using super)
# Modules
# Scope
# Private vs Public Methods
# Instance vs Class methods and variables
# Polymorphism
# Separation of Concerns
# Recursos Externos
# Practical Object Oriented Programming in Ruby (POODR)
####################################################################################################################################################################################################################################
# #1º Inheritance
# Herencia
# Herencia es cuando una clase hereda un comportamiento desde otra clase. La clase que está heredando comportamiento se le denomina subclase y la clase que le hereda ese comportamiento se llama superclase.

# Una ventaja de la herencia es que las clases que en una jerarquía están en un nivel inferior, heredan las características de las clases de niveles superiores; y además, pueden añadir sus propias características.

# Por ejemplo, todos los gatos y perros son mamíferos. Si todos los mamíferos respiran, la clase gato y la clase perro heredan de la clase mamífero esta característica de respirar...

# # superclase 

class Mammal
  def breath
    puts 'inspirar, espirar'
  end
end

# el símbolo < indica que 'Cat' es una subclase de Mammal

class Cat < Mammal
  def meow
    puts 'Miaaaaaaaaaaau'
  end
end

# el símbolo < indica que 'Dog' es una subclase de Mammal

class Dog < Mammal
  def bark
    puts 'Guauu Guauu'
  end
end

catty = Cat.new
doggy = Dog.new
catty.breath
catty.meow
doggy.breath
doggy.bark
# En el ejemplo anterior podemos ver otra ventaja de la herencia, que es el poder extraer comportamientos comunes (breath) desde clases que comparten ese comportamiento (Cat y Dog) y moverlo a una superclase (Mammal). Esta es una manera de mantener la lógica en un sólo lugar.