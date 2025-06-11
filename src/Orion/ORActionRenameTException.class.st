Class {
	#name : 'ORActionRenameTException',
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
ORActionRenameTException >> createVersionnedEntitySelector [

	^ #newException
]

{ #category : 'accessing' }
ORActionRenameTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionRenameTException >> typeContainer: aValue [ typeContainer := aValue
]
