"
I add a new FamixTAnnotationInstance in an OrionModel.
I need the following properties :
- `annotatedEntity`
- `annotationType`
"
Class {
	#name : 'ORActionAddTAnnotationInstance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'annotatedEntity',
		'annotationType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotatedEntity [
	^annotatedEntity 
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotatedEntity: aValue [
	annotatedEntity := aValue 
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotationType [
	^annotationType 
]

{ #category : 'accessing' }
ORActionAddTAnnotationInstance >> annotationType: aValue [
	annotationType := aValue 
]

{ #category : 'method execution' }
ORActionAddTAnnotationInstance >> run [
	| newAnnotationInstance |
	newAnnotationInstance := self orionModel newAnnotationInstance.

	self setFamixProperty: #annotatedEntity on: newAnnotationInstance to: self annotatedEntity .
	self setFamixProperty: #annotationType on: newAnnotationInstance to: self annotationType .

	newAnnotationInstance resetMooseName.
	entity := newAnnotationInstance .
	^entity
]
