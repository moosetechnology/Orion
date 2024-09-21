Class {
	#name : 'ORActionAddMethodTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Actions-Tests-Add',
	#package : 'Orion-Actions-Tests',
	#tag : 'Add'
}

{ #category : 'testing' }
ORActionAddMethodTest >> setUpAction [

	action := ORActionAddMethod new
		orionModel: orionModel;
		name: 'newMethod';
		isStub: false ;
		isClassSide: true ;
		signature: 'newMethod(...)' ;
		parentType: (orionModel entityNamed: #Class4) ;
		declaredType: (orionModel entityNamed: #Class3) ;
		yourself.

]

{ #category : 'testing' }
ORActionAddMethodTest >> testAddsOneEntity [

	| mth |

	self assert: (orionModel entityNamed: 'Class4.newMethod(...)') isNil.

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self assert: (orionModel includes: mth).
	self deny: (model includes: mth).

	self deny: mth isStub.
	self assert: mth isClassSide.
	self assert: mth signature equals: 'newMethod(...)'.

	self assert: mth parentPackage equals: nil.

	self assert: mth parentType identicalTo: (orionModel entityNamed: #Class4).
	self deny:   mth parentType identicalTo: (model entityNamed: #Class4).

	self assert: mth declaredType identicalTo: (orionModel entityNamed: #Class3).
	self deny:   mth declaredType identicalTo: (model entityNamed: #Class3).

	self assert: ((orionModel entityNamed: #Class4) methods includes: mth).
	self deny:   ((model entityNamed: #Class4) methods includes: mth).

]

{ #category : 'testing' }
ORActionAddMethodTest >> testCopiesPrimitiveProperties [

	| mth |

	self assert: (orionModel entityNamed: 'Class4.newMethod(...)') isNil.

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self deny: mth isStub.
	self assert: mth isClassSide.
	self assert: mth signature equals: 'newMethod(...)'.

	self assert: mth parentPackage equals: nil.

]

{ #category : 'testing' }
ORActionAddMethodTest >> testCreatesVersionOfAssociatedEntities [

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
ORActionAddMethodTest >> testEntityIsVersioned [

	| mth |

	action run.

	mth := orionModel entityNamed: 'Class4.newMethod(...)'.

	self assert: mth notNil.
	self assert: (orionModel includes: mth).
	self deny: (model includes: mth).

]
