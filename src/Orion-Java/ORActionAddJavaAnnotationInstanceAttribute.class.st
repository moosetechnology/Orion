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
	#superclass : 'ORActionAddNamedEntityJava',
	#instVars : [
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

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstanceAttribute >> createVersionnedEntitySelector [

	^#newAnnotationInstanceAttribute 
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
