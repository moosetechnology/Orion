"
I rename a new FamixTClass in a MooseModel
I need the following properties of the new class

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRenameTClass',
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
ORActionRenameTClass >> createVersionnedEntitySelector [

	^ #newClass
]

{ #category : 'accessing' }
ORActionRenameTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRenameTClass >> typeContainer: aValue [ typeContainer := aValue
]
