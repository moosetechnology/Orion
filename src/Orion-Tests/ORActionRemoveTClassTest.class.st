Class {
	#name : 'ORActionRemoveTClassTest',
	#superclass : 'ORActionRemoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionRemoveTClassTest >> setUpAction [

	action := ORActionRemoveTClass new
		       orionModel: modelV2;
		       entity: (modelV2 entityNamed: 'Class3');
		       yourself.
]

{ #category : 'as yet unclassified' }
ORActionRemoveTClassTest >> testEntityIsVersioned [

	| class |

	action run.

	class := modelV1 entityNamed: 'Class3'.

	self assert: class isNotNil.
	self assert: (modelV2 entityNamed: 'Class3') isNil.

	self deny: (modelV2 includes: class).
	self assert: (modelV1 includes: class).

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
		((modelV2 entityNamed: #'OrionForTest2') classes
		 anySatisfy: [ :class | class name = 'Class3']).
	self assert:
		((modelV1 entityNamed: #'OrionForTest2') classes
		 anySatisfy: [ :class | class name = 'Class3']).

]

{ #category : 'testing' }
ORActionRemoveTClassTest >> testRemovesOneEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size - 1.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size - 1
]
