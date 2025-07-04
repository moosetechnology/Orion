"
I remove a FamixJavaAnnotationInstance in a MooseModel
I need the following properties of the  annotationinstance

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotatedEntity`
-`annotationType`
-`attributes`
"
Class {
	#name : 'ORActionRemoveJavaAnnotationInstance',
	#superclass : 'ORActionRemove',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotatedEntity',
		'annotationType',
		'attributes'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> annotatedEntity [ ^annotatedEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> annotatedEntity: aValue [ annotatedEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> annotationType [ ^annotationType
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> annotationType: aValue [ annotationType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstance >> createVersionnedEntitySelector [ ^ #newAnnotationInstance
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstance >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotatedEntity: nil.
	entity annotationType: nil.
	entity attributes: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]
