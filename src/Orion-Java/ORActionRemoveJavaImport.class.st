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
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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
ORActionRemoveJavaImport >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImport >> createVersionnedEntitySelector [ ^ #newImport
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> entityAttributes: aValue [ entityAttributes := aValue
]

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
ORActionRemoveJavaImport >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaImport >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
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
