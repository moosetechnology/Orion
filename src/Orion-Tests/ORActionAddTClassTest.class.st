Class {
	#name : 'ORActionAddTClassTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTClassTest >> setUpAction [

	action := ORActionAddTClass new
		          orionModel: modelV2;
		          name: 'classTest';
		          typeContainer: nil;
		          isStub: true;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTClassTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allClasses size. action run. self assert: (modelV2 allClasses size) equals: (initialCount + 1).
]

{ #category : 'as yet unclassified' }
ORActionAddTClassTest >> testCopiesPrimitiveProperties [

	| class |
	self assert: (modelV2 entityNamed: 'classTest') equals: nil.

	action run.

	class := modelV2 entityNamed: 'classTest'.

	self assert: class isStub
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

{ #category : 'tests' }
ORActionAddTClassTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'classTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
