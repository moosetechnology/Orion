"
I rename a new FamixTType in a MooseModel
I need the following properties of the new type

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRenameTType',
	#superclass : 'ORActionRenameTNamedEntity',
	#instVars : [
		'typeContainer',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTType >> createVersionnedEntitySelector [

	^ #newType
]

{ #category : 'accessing' }
ORActionRenameTType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTType >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRenameTType >> typeContainer: aValue [ typeContainer := aValue
]
