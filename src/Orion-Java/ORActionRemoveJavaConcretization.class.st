"
I remove a FamixJavaConcretization in a MooseModel
I need the following properties of the  concretization

-`parameterConcretizations`
-`genericEntity`
-`concreteEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRemoveJavaConcretization',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'parameterConcretizations',
		'genericEntity',
		'concreteEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> parameterConcretizations [ ^parameterConcretizations
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> parameterConcretizations: aValue [ parameterConcretizations := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaConcretization >> run [

	super run.
	entity parameterConcretizations: nil.
	entity genericEntity: nil.
	entity concreteEntity: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
