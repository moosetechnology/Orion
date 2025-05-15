"
An ORActionAddTEnumTest is a test class for testing the behavior of ORActionAddTEnum
"
Class {
	#name : 'ORActionAddTEnumTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTEnumTest >> setUpAction [

	action := ORActionAddTEnum new
		       orionModel: modelV2;
		       name: 'NewEnum';
		       isStub: true;
		       typeContainer: (modelV2 entityNamed: #OrionForTest1);
				 "visibility: 'public';"
		       yourself.
]

{ #category : 'tests' }
ORActionAddTEnumTest >> testAddsCorrectEntity [ 

	action run.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size + 1
]

{ #category : 'tests' }
ORActionAddTEnumTest >> testEntityIsVersioned [

	| enum |

	action run.

	enum := modelV2 entityNamed: 'NewEnum'.

	self assert: enum notNil.
	self assert: (modelV2 includes: enum).
	self deny: (modelV1 includes: enum).

]
