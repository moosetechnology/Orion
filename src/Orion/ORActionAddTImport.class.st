Class {
	#name : 'ORActionAddTImport',
	#superclass : 'ORActionAdd',
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
ORActionAddTImport class >> run [
	super run.
	entity importedEntity: self importedEntity.
	entity importingEntity: self importingEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionAddTImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionAddTImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTImport >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTImport >> run [
	super run.
	entity importedEntity: self importedEntity.
	entity importingEntity: self importingEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
