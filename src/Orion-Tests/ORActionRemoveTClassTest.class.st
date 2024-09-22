Class {
	#name : 'ORActionRemoveTClassTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionRemoveTClassTest >> setUpAction [

	action := ORActionRemoveTClass new
		       orionModel: orionModel;
		       entity: (orionModel entityNamed: 'Class3');
		       yourself.
]

{ #category : 'as yet unclassified' }
ORActionRemoveTClassTest >> testEntityIsVersioned [

	| class |

	action run.

	class := model entityNamed: 'Class3'.

	self assert: class isNotNil.
	self assert: (orionModel entityNamed: 'Class3') isNil.

	self deny: (orionModel includes: class).
	self assert: (model includes: class).

]

{ #category : 'as yet unclassified' }
ORActionRemoveTClassTest >> testEntityWrongType [

	self
		should: [ action entity: FamixStLocalVariable new ]
		raise: IllegalType
]

{ #category : 'as yet unclassified' }
ORActionRemoveTClassTest >> testRemovedFromParentPackage [

	action run.

	self deny:
		((orionModel entityNamed: #'OrionForTest2') classes
		 anySatisfy: [ :class | class name = 'Class3']).
	self assert:
		((model entityNamed: #'OrionForTest2') classes
		 anySatisfy: [ :class | class name = 'Class3']).

]

{ #category : 'testing' }
ORActionRemoveTClassTest >> testRemovesOneEntity [

	action run.

	self assert: orionModel size equals: model size - 1.
	self
		assert: orionModel allClasses size
		equals: model allClasses size - 1
]
