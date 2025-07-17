"
I remove a FamixJavaSourceAnchor in a MooseModel
I need the following properties of the  sourceanchor

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`element`
"
Class {
	#name : 'ORActionRemoveJavaSourceAnchor',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'element'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> element [ ^element
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceAnchor >> element: aValue [ element := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceAnchor >> run [

	super run.
	entity element: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]
