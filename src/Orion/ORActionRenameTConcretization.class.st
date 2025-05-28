Class {
	#name : 'ORActionRenameTConcretization',
	#superclass : 'ORActionRename',
	#instVars : [
		'genericEntity',
		'concreteEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameTConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
