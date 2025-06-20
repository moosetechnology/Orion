Class {
	#name : 'ORActionAddTMethodTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTMethodTest >> setUpAction [

	action := ORActionAddTMethod new
		          orionModel: modelV2;
		          name: 'methodTest';
		          parentType: nil;
		          signature: 'methodTest';
		          declaredType: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTMethodTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allMethods size. action run. self assert: (modelV2 allMethods size) equals: (initialCount + 1).
]

{ #category : 'testing' }
ORActionAddTMethodTest >> testCopiesPrimitiveProperties [

	| mth |
	self assert: (modelV2 entityNamed: 'methodTest') isNil.

	action run.

	mth := modelV2 entityNamed: 'methodTest'.

	self assert: mth notNil.
	self deny: mth isStub.
	self assert: mth signature equals: 'methodTest'
]

{ #category : 'testing' }
ORActionAddTMethodTest >> testCreatesVersionOfAssociatedEntities [

	| mth |

	action run.

	mth := modelV2 entityNamed: 'Class4.newMethod(...)'.

	self assert: mth parentType identicalTo: (modelV2 entityNamed: #Class4).
	self deny:   mth parentType identicalTo: (modelV1 entityNamed: #Class4).

	self assert: mth declaredType identicalTo: (modelV2 entityNamed: #Class3).
	self deny:   mth declaredType identicalTo: (modelV1 entityNamed: #Class3).

	self assert: ((modelV2 entityNamed: #Class4) methods includes: mth).
	self deny:   ((modelV1 entityNamed: #Class4) methods includes: mth).

]

{ #category : 'tests' }
ORActionAddTMethodTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'methodTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
