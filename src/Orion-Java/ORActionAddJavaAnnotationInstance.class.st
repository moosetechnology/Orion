Class {
	#name : 'ORActionAddJavaAnnotationInstance',
	#superclass : 'ORActionAddTAnnotationInstance',
	#instVars : [
		'sourceAnchor'
	],
	#category : 'Orion-Java',
	#package : 'Orion-Java'
}

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
