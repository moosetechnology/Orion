Class {
	#name : 'ORActionAddTClassTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Actions-Tests-Add',
	#package : 'Orion-Actions-Tests',
	#tag : 'Add'
}

{ #category : 'testing' }
ORActionAddTClassTest >> setUpAction [

	action := ORActionAddTClass new
		       orionModel: orionModel;
		       name: 'NewClass';
		       isStub: true;
		       parentPackage: (orionModel entityNamed: #OrionForTest2);
		       yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testAddsOneEntity [

	action run.

	self assert: orionModel size equals: model size + 1.
	self
		assert: orionModel allClasses size
		equals: model allClasses size + 1
]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testCopiesPrimitiveProperties [

	| class |

	self assert: (orionModel entityNamed: 'NewClass') equals: nil.

	action run.

	class := orionModel entityNamed: 'NewClass'.

	self assert: class isStub.

]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testCreatesVersionOfAssociatedEntities [

	| class |

	action run.

	class := orionModel entityNamed: 'NewClass'.

	self assert: class parentPackage identicalTo: (orionModel entityNamed: #'OrionForTest2').
	self deny:   class parentPackage identicalTo: (model entityNamed: #'OrionForTest2').

	self assert: ((orionModel entityNamed: #'OrionForTest2') classes includes: class).
	self deny:   ((model entityNamed: #'OrionForTest2') classes includes: class).

]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testEntityIsVersioned [

	| class |

	action run.

	class := orionModel entityNamed: 'NewClass'.

	self assert: class notNil.
	self assert: (orionModel includes: class).
	self deny: (model includes: class).

]
