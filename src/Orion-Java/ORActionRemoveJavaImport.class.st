"
I remove a FamixJavaImport in a MooseModel
I need the following properties of the  import

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`importedEntity`
-`importingEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaImport',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'importedEntity',
		'importingEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImport >> run [

	super run.
	entity importedEntity: nil.
	entity importingEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
