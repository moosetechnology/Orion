Class {
	#name : 'ORActionRemoveTInheritance',
	#superclass : 'ORActionRemove',
	#instVars : [
		'subclass',
		'superclass',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionRemoveTInheritance >> superclass: aValue [ superclass := aValue
]
