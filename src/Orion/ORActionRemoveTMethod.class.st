"
I remove a new FamixTMethod in a MooseModel
I need the following properties of the new method

-`parentType`
-`signature`
-`declaredType`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveTMethod',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'parentType',
		'signature',
		'declaredType',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTMethod >> createVersionnedEntitySelector [

	^ #newMethod
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> parentType [ ^parentType
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> parentType: aValue [ parentType := aValue
]

{ #category : 'method execution' }
ORActionRemoveTMethod >> run [

	self setFamixProperty: #parentType on: entity to: nil. self setFamixProperty: #signature on: entity to: nil. self setFamixProperty: #declaredType on: entity to: nil. self setFamixProperty: #isStub on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTMethod >> sourceAnchor: aValue [ sourceAnchor := aValue
]
