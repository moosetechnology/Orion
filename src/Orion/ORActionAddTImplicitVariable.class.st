"
I add a new FamixTImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`parentBehaviouralEntity`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionAddTImplicitVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTImplicitVariable >> createVersionnedEntitySelector [

	^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTImplicitVariable >> run [

	super run.

	self setFamixProperty: #parentBehaviouralEntity on: newEntity to: self parentBehaviouralEntity. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
