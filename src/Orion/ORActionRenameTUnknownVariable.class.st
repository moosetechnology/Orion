"
I rename a new FamixTUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRenameTUnknownVariable',
	#superclass : 'ORActionRenameTNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTUnknownVariable >> createVersionnedEntitySelector [

	^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionRenameTUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
