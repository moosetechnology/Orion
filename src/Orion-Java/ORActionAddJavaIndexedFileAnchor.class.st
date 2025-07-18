"
I add a FamixJavaIndexedFileAnchor in a MooseModel
I need the following properties of the  indexedfileanchor

-`element`
-`endPos`
-`startPos`
-`correspondingFile`
-`encoding`
-`fileName`
"
Class {
	#name : 'ORActionAddJavaIndexedFileAnchor',
	#superclass : 'ORActionAddJava',
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
ORActionAddJavaIndexedFileAnchor >> correspondingFile [ ^correspondingFile
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> correspondingFile: aValue [ correspondingFile := aValue
]

{ #category : 'method execution' }
ORActionAddJavaIndexedFileAnchor >> createVersionnedEntitySelector [

	^#newIndexedFileAnchor 
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> element: aValue [ element := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> encoding [ ^encoding
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> encoding: aValue [ encoding := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> endPos [ ^endPos
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> endPos: aValue [ endPos := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> fileName [ ^fileName
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> fileName: aValue [ fileName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaIndexedFileAnchor >> run [

	super run.
	entity mooseModel: self mooseModel.
	entity element: self element.
	entity endPos: self endPos.
	entity startPos: self startPos.
	entity correspondingFile: self correspondingFile.
	entity encoding: self encoding.
	entity fileName: self fileName.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> startPos [ ^startPos
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> startPos: aValue [ startPos := aValue
]
