# Creational-DesignPattern-Swift
This Repository includes creational design pattern in swift which includes singleton class , prototype , builder , factory method , abstract factory method with project files & playground , pdf's for reference for the better understanding of concepts.
Below points for Quick Recap :-
UML - Unified Modelling Language -
Standard way to Visualise the design software systems
Class Diagram - statice structure of a system - Used to represent classes , attributes , methods & relationships ( ER diagram)
		Hierarchy - Class name - Attributes - Operations 
		+ means public , # means Protected , - Means Private
		Relationship - Generalization (Parent - child) 
		- Association - Two class need reference (Has A relationship) - Mutiplicity - Bi Directional navigability (Stronger)
		Directed Association ( car driver ex ) 
		Dependency - Car road ex ——> Weaker ( not a association)
		Aggregation - Special form of association (Diamond ) [Own life cycle]
		Composition - Ownership - Stronger form of association (part-of relationship) (car customer ex) [Diamond filled ]
		Realization - Implement Behavior [Triangle] (protocol in swift)
							
Sequence Diagram - Models dynamic Behaviour  - The interaction between objects 
					—— indicates object lifeline , -> indicates message  , rectangle indicates execution occurrence , X indicates lifeline termination 
					arrow line indicates asynchronous message , dotted arrow line indicates async return message
					Message to self - nested arrow


The Singleton - Class has only instance 

The Prototype -
 struct , enum & tuples -> values types gets automatically copied on its item ( Auto cloning of value types) - Value type 
Ref type - classes ( Shallow Copying & Deep copying ) (Two points & shape ex)

The Builder - Separates the construction of complex object from their representation (Workout & Location Service ex)
Ref link - https://medium.com/jeremy-codes/the-builder-pattern-eef3351bcae9

The Factory Method - Decouples the caller from the concrete types it Cretes & promotes loose coupling (only in base class & protocol ) (Canadian Toy & French toy Factory ex)
Ref link- https://swiftcraft.io/swift-solutions-factory-method-pattern/ 

The Abstract Factory Method - Provides Abstracion for creating families of related or dependent objects (Sedan & SUV Ex) 
Ref link : https://medium.com/swiftworld/swift-world-design-patterns-abstract-factory-86f39dc7b63f

