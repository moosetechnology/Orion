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
	#superclass : 'ORActionAddNamedEntityJava',
	#instVars : [
		'sourceAnchor',
		'annotatedEntity',
		'annotationType',
		'attributes'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
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

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstance >> createVersionnedEntitySelector [

	^#newAnnotationInstance 
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstance >> run [

	super run.
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
