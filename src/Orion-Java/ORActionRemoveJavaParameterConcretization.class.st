"
I remove a FamixJavaParameterConcretization in a MooseModel
I need the following properties of the  parameterconcretization

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`concretizations`
-`genericParameter`
-`concreteParameter`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaParameterConcretization',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'concretizations',
		'genericParameter',
		'concreteParameter',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> concreteParameter [ ^concreteParameter
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> concreteParameter: aValue [ concreteParameter := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> concretizations [ ^concretizations
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> concretizations: aValue [ concretizations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaParameterConcretization >> createVersionnedEntitySelector [ ^ #newParameterConcretization
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> genericParameter [ ^genericParameter
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> genericParameter: aValue [ genericParameter := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaParameterConcretization >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity concretizations: nil.
	entity genericParameter: nil.
	entity concreteParameter: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
