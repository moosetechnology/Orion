Class {
	#name : 'ORActionAddTMethodTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionAddTMethodTest >> setUpAction [

	action := ORActionAddTMethod new
		orionModel: modelV2;
		name: 'newMethod';
		isStub: false ;
		signature: 'newMethod(...)' ;
		parentType: (modelV2 entityNamed: #Class4) ;
		declaredType: (modelV2 entityNamed: #Class3) ;
		yourself.

]

{ #category : 'testing' }
ORActionAddTMethodTest >> testAddsOneEntity [

	| mth |

	self assert: (modelV2 entityNamed: 'Class4.newMethod(...)') isNil.

	action run.

	mth := modelV2 entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self assert: (modelV2 includes: mth).
	self deny: (modelV1 includes: mth).

]

{ #category : 'testing' }
ORActionAddTMethodTest >> testCopiesPrimitiveProperties [

	| mth |

	self assert: (modelV2 entityNamed: 'Class4.newMethod(...)') isNil.

	action run.

	mth := modelV2 entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self deny: mth isStub.
	self assert: mth signature equals: 'newMethod(...)'.

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

{ #category : 'testing' }
ORActionAddTMethodTest >> testEntityIsVersioned [

	| mth |

	action run.

	mth := modelV2 entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self assert: (modelV2 includes: mth).
	self deny: (modelV1 includes: mth).

]
