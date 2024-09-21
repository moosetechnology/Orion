Class {
	#name : 'ORActionAddAttributeTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Actions-Tests-Add',
	#package : 'Orion-Actions-Tests',
	#tag : 'Add'
}

{ #category : 'testing OrionModel' }
ORActionAddAttributeTest >> setUpAction [

	action := ORActionAddAttribute new
		orionModel: orionModel;
		name: 'anAttribute';
		isStub: true ;
		isClassSide: false ;
		parentType: (orionModel entityNamed: #Class4) ;
		declaredType: (orionModel entityNamed: #Class3) ;
		yourself.
]

{ #category : 'testing' }
ORActionAddAttributeTest >> testAddsOneEntity [

	action run.

	self assert: orionModel size equals: model size + 1.
	self assert: orionModel allAttributes size equals: model allAttributes size + 1.
	self assert: orionModel allClasses size equals: model allClasses size.

]

{ #category : 'testing' }
ORActionAddAttributeTest >> testCopiesPrimitiveProperties [

	| att |

	self assert: (orionModel entityNamed: 'Class4.anAttribute') isNil.

	action run.

	att := orionModel entityNamed: 'Class4.anAttribute'.

	self assert: att isNotNil.
	self assert: att isStub.
	self deny: att isClassSide.

]

{ #category : 'testing' }
ORActionAddAttributeTest >> testCreatesVersionOfAssociatedEntities [

	| att |

	action run.

	att := orionModel entityNamed: 'Class4.anAttribute'.

	self assert: att parentType identicalTo: (orionModel entityNamed: #Class4).
	self deny:   att parentType identicalTo: (model entityNamed: #Class4).

	self assert: att declaredType identicalTo: (orionModel entityNamed: #Class3).
	self assert: (orionModel entityNamed: #Class3) typedEntities size equals: 1.
	self
		assert: (orionModel entityNamed: #Class3) typedEntities anyOne
		identicalTo: att.
	self assert: (model entityNamed: #Class3) typedEntities size equals: 0.

	self assert: ((orionModel entityNamed: #Class4) attributes includes: att).
	self deny:   ((model entityNamed: #Class4) attributes includes: att).

]

{ #category : 'testing' }
ORActionAddAttributeTest >> testEntityIsVersioned [

	| att |

	action run.

	att := orionModel entityNamed: 'Class4.anAttribute'.

	self assert: att notNil.
	self assert: (orionModel includes: att).
	self deny: (model includes: att).

]
