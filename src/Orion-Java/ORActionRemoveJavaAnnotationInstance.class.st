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
	#superclass : 'ORActionRemoveJava',
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

{ #category : 'method execution' }
ORActionRemoveJavaAnnotationInstance >> run [

	super run.
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
