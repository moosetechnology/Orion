"
I remove a FamixJavaConcretization in a MooseModel
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
	#name : 'ORActionRemoveJavaConcretization',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
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
ORActionRemoveJavaConcretization >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaConcretization >> createVersionnedEntitySelector [ ^ #newConcretization
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaConcretization >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
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
