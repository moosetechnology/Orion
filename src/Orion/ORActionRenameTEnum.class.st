Class {
	#name : 'ORActionRenameTEnum',
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
ORActionRenameTEnum >> createVersionnedEntitySelector [

	^ #newEnum
]

{ #category : 'accessing' }
ORActionRenameTEnum >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTEnum >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnum >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTEnum >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTEnum >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRenameTEnum >> typeContainer: aValue [ typeContainer := aValue
]
