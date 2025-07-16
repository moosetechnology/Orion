"
I remove a FamixJavaIndexedFileAnchor in a MooseModel
I need the following properties of the  indexedfileanchor

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`element`
-`endPos`
-`startPos`
-`correspondingFile`
-`encoding`
-`fileName`
"
Class {
	#name : 'ORActionRemoveJavaIndexedFileAnchor',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'element',
		'endPos',
		'startPos',
		'correspondingFile',
		'encoding',
		'fileName'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> correspondingFile [ ^correspondingFile
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> correspondingFile: aValue [ correspondingFile := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaIndexedFileAnchor >> createVersionnedEntitySelector [ ^ #newIndexedFileAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> element: aValue [ element := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> encoding [ ^encoding
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> encoding: aValue [ encoding := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> endPos [ ^endPos
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> endPos: aValue [ endPos := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> fileName [ ^fileName
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> fileName: aValue [ fileName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaIndexedFileAnchor >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity element: nil.
	entity endPos: nil.
	entity startPos: nil.
	entity correspondingFile: nil.
	entity encoding: nil.
	entity fileName: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> startPos [ ^startPos
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> startPos: aValue [ startPos := aValue
]
