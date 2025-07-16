"
I remove a FamixJavaAnnotationInstanceAttribute in a MooseModel
I need the following properties of the  annotationinstanceattribute

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationTypeAttribute`
-`parentAnnotationInstance`
-`value`
"
Class {
	#name : 'ORActionRemoveJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotationTypeAttribute',
		'parentAnnotationInstance',
		'value'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstanceAttribute >> createVersionnedEntitySelector [ ^ #newAnnotationInstanceAttribute
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstanceAttribute >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationTypeAttribute: nil.
	entity parentAnnotationInstance: nil.
	entity value: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
