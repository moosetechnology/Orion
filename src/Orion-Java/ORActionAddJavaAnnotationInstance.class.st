"
I add a FamixJavaAnnotationInstance in a MooseModel
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
	#name : 'ORActionAddJavaAnnotationInstance',
	#superclass : 'ORActionAdd',
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
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> annotatedEntity [ ^annotatedEntity
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> annotatedEntity: aValue [ annotatedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> annotationType [ ^annotationType
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> annotationType: aValue [ annotationType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> attributes [ ^attributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> attributes: aValue [ attributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstance >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotatedEntity: self annotatedEntity.
	entity annotationType: self annotationType.
	entity attributes: self attributes.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]
