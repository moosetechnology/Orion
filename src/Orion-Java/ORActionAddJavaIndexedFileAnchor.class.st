"
I add a FamixJavaIndexedFileAnchor in a MooseModel
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
	#name : 'ORActionAddJavaIndexedFileAnchor',
	#superclass : 'ORActionAdd',
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
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> correspondingFile [ ^correspondingFile
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> correspondingFile: aValue [ correspondingFile := aValue
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
ORActionAddJavaIndexedFileAnchor >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> fileName [ ^fileName
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> fileName: aValue [ fileName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaIndexedFileAnchor >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaIndexedFileAnchor >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
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
