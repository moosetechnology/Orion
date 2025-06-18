"
I add a new FamixTEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`parentEnum`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionAddTEnumValue',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentEnum',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTEnumValue >> createVersionnedEntitySelector [

	^ #newEnumValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'method execution' }
ORActionAddTEnumValue >> run [

	super run.

	self setFamixProperty: #parentEnum on: newEntity to: self parentEnum. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
