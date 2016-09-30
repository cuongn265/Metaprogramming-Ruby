# Metaprogramming Ruby
#### Object Model
#### Methods
#### Block
+ Blocks are not objects -> Proc are
+ Block contain both the code and a set of binding.
+ When a block is defined. It grabs the bindings that exist at that moment(not in the method) and carries them.

##### Scope
+ The previous bindings will be replaced by a new set when enter a new scope
+ Whenever the program changes scope, binding set will be replaced except instance variables of a method which call another method on the same object
