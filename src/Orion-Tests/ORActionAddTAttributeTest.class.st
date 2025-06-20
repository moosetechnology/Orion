Class {
	#name : 'ORActionAddTAttributeTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTAttributeTest >> setUpAction [

	action := ORActionAddTAttribute new
		          orionModel: modelV2;
		          name: 'attributeTest';
		          parentType: nil;
		          isStub: true;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTAttributeTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allAttributes size.
	action run.
	self assert: modelV2 allAttributes size equals: initialCount + 1
]

{ #category : 'testing' }
ORActionAddTAttributeTest >> testCopiesPrimitiveProperties [

	| att |
	self assert: (modelV2 entityNamed: 'attributeTest') isNil.

	action run.

	att := modelV2 entityNamed: 'attributeTest'.

	self assert: att isNotNil.
	self assert: att isStub
]

{ #category : 'testing' }
ORActionAddTAttributeTest >> testCreatesVersionOfAssociatedEntities [

	| att |

	action run.

	att := modelV2 entityNamed: 'Class4.anAttribute'.

	self assert: att parentType identicalTo: (modelV2 entityNamed: #Class4).
	self deny:   att parentType identicalTo: (modelV1 entityNamed: #Class4).

	self assert: att declaredType identicalTo: (modelV2 entityNamed: #Class3).
	self assert: (modelV2 entityNamed: #Class3) typedEntities size equals: 1.
	self
		assert: (modelV2 entityNamed: #Class3) typedEntities anyOne
		identicalTo: att.
	self assert: (modelV1 entityNamed: #Class3) typedEntities size equals: 0.

	self assert: ((modelV2 entityNamed: #Class4) attributes includes: att).
	self deny:   ((modelV1 entityNamed: #Class4) attributes includes: att).

]

{ #category : 'tests' }
ORActionAddTAttributeTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'attributeTest'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
