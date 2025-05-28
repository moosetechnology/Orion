Class {
	#name : 'ORActionMoveTImport',
	#superclass : 'ORActionMove',
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
ORActionMoveTImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionMoveTImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionMoveTImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTImport >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
