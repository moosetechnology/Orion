Class {
	#name : 'ORActionRemoveTImport',
	#superclass : 'ORActionRemove',
	#instVars : [
		'importedEntity',
		'importingEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionRemoveTImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTImport >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
