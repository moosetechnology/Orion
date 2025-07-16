"
I add a FamixJavaAnnotationInstanceAttribute in a MooseModel
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
	#name : 'ORActionAddJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionAddJava',
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
ORActionAddJavaAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstanceAttribute >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationTypeAttribute: self annotationTypeAttribute.
	entity parentAnnotationInstance: self parentAnnotationInstance.
	entity value: self value.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
