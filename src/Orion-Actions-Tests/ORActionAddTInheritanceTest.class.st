Class {
	#name : 'ORActionAddTInheritanceTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Actions-Tests-Add',
	#package : 'Orion-Actions-Tests',
	#tag : 'Add'
}

{ #category : 'testing OrionModel' }
ORActionAddTInheritanceTest >> setUpAction [

	action := ORActionAddTInheritance new
		orionModel: orionModel;
		superclass: (orionModel entityNamed: 'Class1');
		subclass: (orionModel entityNamed: 'Class2').

]

{ #category : 'testing' }
ORActionAddTInheritanceTest >> testAddsOneEntity [

	action run.

	self assert: orionModel size equals: model size + 1.
	self assert: orionModel allInheritanceDefinitions size equals: model allInheritanceDefinitions size + 1.
	self assert: orionModel allClasses size equals: model allClasses size.

]

{ #category : 'testing' }
ORActionAddTInheritanceTest >> testEntityIsVersioned [

	action run.

	self assert: (orionModel entityNamed: 'Class2') superInheritances size equals: 2.
	self
		assertCollection: ((orionModel entityNamed: 'Class2') superInheritances collect: #superclass)
		hasSameElements: { orionModel entityNamed: 'Class1' . orionModel entityNamed: 'Object'}.

	self assert: (orionModel entityNamed: 'Class1') subInheritances size equals: 1.
	self
		assert: (orionModel entityNamed: 'Class1') subInheritances anyOne subclass
		identicalTo: (orionModel entityNamed: 'Class2').

	self assert: (model entityNamed: 'Class2') superInheritances size equals: 1.
	self
		assert: (model entityNamed: 'Class2') superInheritances anyOne superclass
		identicalTo: (model entityNamed: 'Object').
	self assert: (model entityNamed: 'Class1') subInheritances size equals: 0.

]
