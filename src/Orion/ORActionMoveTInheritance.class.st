Class {
	#name : 'ORActionMoveTInheritance',
	#superclass : 'ORActionMove',
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

{ #category : 'method execution' }
ORActionMoveTInheritance >> createVersionnedEntitySelector [

	^ #newInheritance
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionMoveTInheritance >> superclass: aValue [ superclass := aValue
]
