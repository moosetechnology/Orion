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
		       orionModel: modelV2;
		       entity: (modelV2 entityNamed: 'Class3') superInheritances anyOne;
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

	self deny: (modelV2 entityNamed: 'Class3') identicalTo: (modelV1 entityNamed: 'Class3').
	self deny: (modelV2 entityNamed: 'Object') identicalTo: (modelV1 entityNamed: 'Object').
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovedFromSubClass [

	action run.

	self deny:
		((modelV2 entityNamed: #'Class3') superInheritances
		 anySatisfy: [ :inh | inh superclass name = 'Object']).
	self assert:
		((modelV1 entityNamed: #'Class3') superInheritances
		 anySatisfy: [ :inh | inh superclass name = 'Object']).
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovedFromSuperClass [

	action run.

	self deny:
		((modelV2 entityNamed: #'Object') subInheritances
		 anySatisfy: [ :inh | inh subclass name = 'Class3']).
	self assert:
		((modelV1 entityNamed: #'Object') subInheritances
		 anySatisfy: [ :inh | inh subclass name = 'Class3']).
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovesOneEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size - 1.
	self
		assert: (modelV2 entityNamed: #'Object') subInheritances size
		equals: (modelV1 entityNamed: #'Object') subInheritances size - 1
]
