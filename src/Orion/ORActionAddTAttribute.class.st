"
I add a new FamixTAttribute in a MooseModel
I need the following properties of the new attribute

-`parentType`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionAddTAttribute',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentType',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTAttribute >> createVersionnedEntitySelector [

	^ #newAttribute
]

{ #category : 'accessing' }
ORActionAddTAttribute >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTAttribute >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTAttribute >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTAttribute >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTAttribute >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionAddTAttribute >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTAttribute >> run [

	super run.

	self setFamixProperty: #parentType on: newEntity to: self parentType. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
