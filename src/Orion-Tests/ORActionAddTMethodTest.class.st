Class {
	#name : 'ORActionAddTMethodTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionAddTMethodTest >> setUpAction [

	action := ORActionAddTMethod new
		orionModel: orionModel;
		name: 'newMethod';
		isStub: false ;
		signature: 'newMethod(...)' ;
		parentType: (orionModel entityNamed: #Class4) ;
		declaredType: (orionModel entityNamed: #Class3) ;
		yourself.

]

{ #category : 'testing' }
ORActionAddTMethodTest >> testAddsOneEntity [

	| mth |

	self assert: (orionModel entityNamed: 'Class4.newMethod(...)') isNil.

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self assert: (orionModel includes: mth).
	self deny: (model includes: mth).

]

{ #category : 'testing' }
ORActionAddTMethodTest >> testCopiesPrimitiveProperties [

	| mth |

	self assert: (orionModel entityNamed: 'Class4.newMethod(...)') isNil.

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self deny: mth isStub.
	self assert: mth signature equals: 'newMethod(...)'.

]

{ #category : 'testing' }
ORActionAddTMethodTest >> testCreatesVersionOfAssociatedEntities [

	| mth |

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth parentType identicalTo: (orionModel entityNamed: #Class4).
	self deny:   mth parentType identicalTo: (model entityNamed: #Class4).

	self assert: mth declaredType identicalTo: (orionModel entityNamed: #Class3).
	self deny:   mth declaredType identicalTo: (model entityNamed: #Class3).

	self assert: ((orionModel entityNamed: #Class4) methods includes: mth).
	self deny:   ((model entityNamed: #Class4) methods includes: mth).

]

{ #category : 'testing' }
ORActionAddTMethodTest >> testEntityIsVersioned [

	| mth |

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self assert: (orionModel includes: mth).
	self deny: (model includes: mth).

]
