"
I add a FamixTAnnotationInstanceAttribute in a MooseModel
I need the following properties of the  annotationinstanceattribute

-`annotationTypeAttribute`
-`parentAnnotationInstance`
-`value`
"
Class {
	#name : 'ORActionAddTAnnotationInstanceAttribute',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotationTypeAttribute',
		'parentAnnotationInstance',
		'value'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTAnnotationInstanceAttribute class >> run [
	super run.
	entity annotationTypeAttribute: self annotationTypeAttribute.
	entity parentAnnotationInstance: self parentAnnotationInstance.
	entity value: self value.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> annotationTypeAttribute [ ^annotationTypeAttribute
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> annotationTypeAttribute: aValue [ annotationTypeAttribute := aValue
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> parentAnnotationInstance [ ^parentAnnotationInstance
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> parentAnnotationInstance: aValue [ parentAnnotationInstance := aValue
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstanceAttribute >> run [

	super run.
	entity annotationTypeAttribute: self annotationTypeAttribute.
	entity parentAnnotationInstance: self parentAnnotationInstance.
	entity value: self value.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> value [ ^value
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstanceAttribute >> value: aValue [ value := aValue
]
