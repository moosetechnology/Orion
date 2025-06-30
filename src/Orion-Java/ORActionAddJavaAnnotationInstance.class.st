"
I add a new FamixJavaAnnotationInstance in a MooseModel
I need the following properties of the new annotationinstance

-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaAnnotationInstance',
	#superclass : 'ORActionAddTAnnotationInstance',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstance >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstance >> run [

	| newEntity |
	newEntity := self orionModel newAnnotationInstance.

	self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstance >> sourceAnchor: aValue [ sourceAnchor := aValue
]
