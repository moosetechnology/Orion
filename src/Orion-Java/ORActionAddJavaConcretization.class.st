"
I add a FamixJavaConcretization in a MooseModel
I need the following properties of the  concretization

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`parameterConcretizations`
-`genericEntity`
-`concreteEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaConcretization',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'triggeringAssociation',
		'typeArgument',
		'typeParameter',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaConcretization >> createVersionnedEntitySelector [

	^#newConcretization 
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaConcretization >> run [

	super run.
	entity triggeringAssociation: self triggeringAssociation .
	entity typeArgument: self typeArgument.
	entity typeParameter: self typeParameter.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> triggeringAssociation [

	^ triggeringAssociation
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> triggeringAssociation: anObject [

	triggeringAssociation := anObject
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> typeArgument [

	^ typeArgument
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> typeArgument: anObject [

	typeArgument := anObject
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> typeParameter [

	^ typeParameter
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> typeParameter: anObject [

	typeParameter := anObject
]
