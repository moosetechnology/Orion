"
I remove a new FamixTEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`parentEnum`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveTEnumValue',
	#superclass : 'ORActionRemoveNamedEntity',
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
ORActionRemoveTEnumValue >> createVersionnedEntitySelector [

	^ #newEnumValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> parentEnum [ ^parentEnum
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> parentEnum: aValue [ parentEnum := aValue
]

{ #category : 'method execution' }
ORActionRemoveTEnumValue >> run [

	self setFamixProperty: #parentEnum on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTEnumValue >> sourceAnchor: aValue [ sourceAnchor := aValue
]
