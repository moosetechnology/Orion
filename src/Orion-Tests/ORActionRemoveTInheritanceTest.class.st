Class {
	#name : 'ORActionRemoveTInheritanceTest',
	#superclass : 'ORActionRemoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRemoveTInheritanceTest >> setUpAction [ action := ORActionRemoveTInheritance new orionModel: modelV2; subclass: nil; superclass: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
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

{ #category : 'tests' }
ORActionRemoveTInheritanceTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allInheritances anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allInheritances size. action run. self assert: (modelV2 allInheritances size) equals: (initialCount - 1).
]

{ #category : 'testing' }
ORActionRemoveTInheritanceTest >> testRemovesOneEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size - 1.
	self
		assert: (modelV2 entityNamed: #'Object') subInheritances size
		equals: (modelV1 entityNamed: #'Object') subInheritances size - 1
]
