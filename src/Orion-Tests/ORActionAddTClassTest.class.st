Class {
	#name : 'ORActionAddTClassTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionAddTClassTest >> setUpAction [

	action := ORActionAddTClass new
		       orionModel: modelV2;
		       name: 'NewClass';
		       isStub: true;
		       parentPackage: (modelV2 entityNamed: #OrionForTest2);
		       yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testAddsCorrectEntity [ 

	action run.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size + 1
]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testCopiesPrimitiveProperties [

	| class |

	self assert: (modelV2 entityNamed: 'NewClass') equals: nil.

	action run.

	class := modelV2 entityNamed: 'NewClass'.

	self assert: class isStub.

]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testCreatesVersionOfAssociatedEntities [

	| class |

	action run.

	class := modelV2 entityNamed: 'NewClass'.

	self assert: class parentPackage identicalTo: (modelV2 entityNamed: #'OrionForTest2').
	self deny:   class parentPackage identicalTo: (modelV1 entityNamed: #'OrionForTest2').

	self assert: ((modelV2 entityNamed: #'OrionForTest2') classes includes: class).
	self deny:   ((modelV1 entityNamed: #'OrionForTest2') classes includes: class).

]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testEntityIsVersioned [

	| class |

	action run.

	class := modelV2 entityNamed: 'NewClass'.

	self assert: class notNil.
	self assert: (modelV2 includes: class).
	self deny: (modelV1 includes: class).

]
