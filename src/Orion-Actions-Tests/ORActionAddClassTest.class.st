Class {
	#name : 'ORActionAddClassTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Actions-Tests',
	#package : 'Orion-Actions-Tests'
}

{ #category : 'testing' }
ORActionAddClassTest >> setUpAction [

	action := ORActionAddClass new
		       orionModel: orionModel;
		       name: 'NewClass';
		       isStub: true;
		       parentPackage: (orionModel entityNamed: #OrionForTest2);
		       yourself.
]

{ #category : 'testing' }
ORActionAddClassTest >> testAddsOneEntity [

	action run.

	self assert: orionModel size equals: model size + 1.
	self
		assert: orionModel allClasses size
		equals: model allClasses size + 1
]

{ #category : 'testing' }
ORActionAddClassTest >> testCopiesPrimitiveProperties [

	| class |

	self assert: (orionModel entityNamed: 'NewClass') equals: nil.

	action run.

	class := orionModel entityNamed: 'NewClass'.

	self assert: class isStub.

]

{ #category : 'testing' }
ORActionAddClassTest >> testCreatesNewVersionOfEntity [

	| class |

	action run.

	class := orionModel entityNamed: 'NewClass'.

	self assert: class notNil.
	self assert: (orionModel includes: class).
	self deny: (model includes: class).

]

{ #category : 'testing' }
ORActionAddClassTest >> testCreatesVersionOfAssociatedEntities [

	| class |

	action run.

	class := orionModel entityNamed: 'NewClass'.

	self assert: class parentPackage identicalTo: (orionModel entityNamed: #'OrionForTest2').
	self deny:   class parentPackage identicalTo: (model entityNamed: #'OrionForTest2').

	self assert: ((orionModel entityNamed: #'OrionForTest2') classes includes: class).
	self deny:   ((model entityNamed: #'OrionForTest2') classes includes: class).

]
