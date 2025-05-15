Class {
	#name : 'ORActionAddTAttributeTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing OrionModel' }
ORActionAddTAttributeTest >> setUpAction [

	action := ORActionAddTAttribute new
		orionModel: modelV2;
		name: 'anAttribute';
		isStub: true ;
		parentType: (modelV2 entityNamed: #Class4) ;
		declaredType: (modelV2 entityNamed: #Class3) ;
		yourself.
]

{ #category : 'testing' }
ORActionAddTAttributeTest >> testAddsCorrectEntity [

	action run.

	self assert: modelV2 allAttributes size equals: modelV1 allAttributes size + 1.
	self assert: modelV2 allClasses size equals: modelV1 allClasses size.

]

{ #category : 'testing' }
ORActionAddTAttributeTest >> testCopiesPrimitiveProperties [

	| att |

	self assert: (modelV2 entityNamed: 'Class4.anAttribute') isNil.

	action run.

	att := modelV2 entityNamed: 'Class4.anAttribute'.

	self assert: att isNotNil.
	self assert: att isStub.

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

{ #category : 'testing' }
ORActionAddTAttributeTest >> testEntityIsVersioned [

	| att |

	action run.

	att := modelV2 entityNamed: 'Class4.anAttribute'.

	self assert: att notNil.
	self assert: (modelV2 includes: att).
	self deny: (modelV1 includes: att).

]
