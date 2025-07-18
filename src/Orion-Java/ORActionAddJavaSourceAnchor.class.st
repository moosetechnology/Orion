"
I add a FamixJavaSourceAnchor in a MooseModel
I need the following properties of the  sourceanchor

-`element`
"
Class {
	#name : 'ORActionAddJavaSourceAnchor',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'element'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaSourceAnchor >> createVersionnedEntitySelector [

	^#newSourceAnchor 
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionAddJavaSourceAnchor >> element: aValue [ element := aValue
]

{ #category : 'method execution' }
ORActionAddJavaSourceAnchor >> run [

	super run.
	entity element: self element.

	^entity.
]
