"
I remove a FamixJavaSourceTextAnchor in a MooseModel
I need the following properties of the  sourcetextanchor

-`element`
-`source`
"
Class {
	#name : 'ORActionRemoveJavaSourceTextAnchor',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'element',
		'source'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> element: aValue [ element := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceTextAnchor >> run [

	super run.
	entity element: nil.
	entity source: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> source [ ^source
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceTextAnchor >> source: aValue [ source := aValue
]
