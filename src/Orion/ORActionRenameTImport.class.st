Class {
	#name : 'ORActionRenameTImport',
	#superclass : 'ORActionRename',
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

{ #category : 'method execution' }
ORActionRenameTImport >> createVersionnedEntitySelector [

	^ #newImport
]

{ #category : 'accessing' }
ORActionRenameTImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionRenameTImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionRenameTImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTImport >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
