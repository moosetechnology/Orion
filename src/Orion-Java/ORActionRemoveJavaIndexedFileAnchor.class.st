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
ORActionRemoveJavaIndexedFileAnchor >> correspondingFile [ ^correspondingFile
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> correspondingFile: aValue [ correspondingFile := aValue
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
ORActionRemoveJavaIndexedFileAnchor >> fileName [ ^fileName
]

{ #category : 'accessing' }
ORActionRemoveJavaIndexedFileAnchor >> fileName: aValue [ fileName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaIndexedFileAnchor >> run [

	super run.
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
