"
I add a FamixJavaSourceTextAnchor in a MooseModel
I need the following properties of the  sourcetextanchor

-`element`
-`source`
"
Class {
	#name : 'ORActionAddJavaSourceTextAnchor',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'element',
		'source'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaSourceTextAnchor >> createVersionnedEntitySelector [

	^#newSourceTextAnchor 
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> element: aValue [ element := aValue
]

{ #category : 'method execution' }
ORActionAddJavaSourceTextAnchor >> run [

	super run.
	entity element: self element.
	entity source: self source.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> source [ ^source
]

{ #category : 'accessing' }
ORActionAddJavaSourceTextAnchor >> source: aValue [ source := aValue
]
