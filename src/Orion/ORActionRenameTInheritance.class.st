Class {
	#name : 'ORActionRenameTInheritance',
	#superclass : 'ORActionRename',
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
ORActionRenameTInheritance >> createVersionnedEntitySelector [

	^ #newInheritance
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionRenameTInheritance >> superclass: aValue [ superclass := aValue
]
