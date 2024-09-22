Class {
	#name : 'ORActionRemoveTInheritanceTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> setUpAction [

	action := ORActionRemoveTInheritance new
		       orionModel: orionModel;
		       entity: (orionModel entityNamed: 'Class3') superInheritances anyOne;
		       yourself.
]

{ #category : 'as yet unclassified' }
ORActionRemoveTInheritanceTest >> testEntityWrongType [

	self
		should: [ action entity: FamixStLocalVariable new ]
		raise: IllegalType
]

{ #category : 'as yet unclassified' }
ORActionRemoveTInheritanceTest >> testRelatedEntitiesAreVersioned [

	action run.

	self deny: (orionModel entityNamed: 'Class3') identicalTo: (model entityNamed: 'Class3').
	self deny: (orionModel entityNamed: 'Object') identicalTo: (model entityNamed: 'Object').
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovedFromSubClass [

	action run.

	self deny:
		((orionModel entityNamed: #'Class3') superInheritances
		 anySatisfy: [ :inh | inh superclass name = 'Object']).
	self assert:
		((model entityNamed: #'Class3') superInheritances
		 anySatisfy: [ :inh | inh superclass name = 'Object']).
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovedFromSuperClass [

	action run.

	self deny:
		((orionModel entityNamed: #'Object') subInheritances
		 anySatisfy: [ :inh | inh subclass name = 'Class3']).
	self assert:
		((model entityNamed: #'Object') subInheritances
		 anySatisfy: [ :inh | inh subclass name = 'Class3']).
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovesOneEntity [

	action run.

	self assert: orionModel size equals: model size - 1.
	self
		assert: (orionModel entityNamed: #'Object') subInheritances size
		equals: (model entityNamed: #'Object') subInheritances size - 1
]
