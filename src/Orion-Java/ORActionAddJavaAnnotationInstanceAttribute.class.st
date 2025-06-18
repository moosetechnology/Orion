"
I add a new FamixJavaAnnotationInstanceAttribute in a MooseModel
I need the following properties of the new annotationinstanceattribute

-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaAnnotationInstanceAttribute',
	#superclass : 'ORActionAddTAnnotationInstanceAttribute',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'method execution' }
ORActionAddJavaAnnotationInstanceAttribute >> run [

	| newEntity |
	newEntity := self orionModel newAnnotationInstanceAttribute.

	self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaAnnotationInstanceAttribute >> sourceAnchor: aValue [ sourceAnchor := aValue
]
