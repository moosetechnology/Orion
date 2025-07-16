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
ORActionAddJavaConcretization >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> concreteEntity [ ^concreteEntity
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> concreteEntity: aValue [ concreteEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> genericEntity [ ^genericEntity
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> genericEntity: aValue [ genericEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> parameterConcretizations [ ^parameterConcretizations
]

{ #category : 'accessing' }
ORActionAddJavaConcretization >> parameterConcretizations: aValue [ parameterConcretizations := aValue
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
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity parameterConcretizations: self parameterConcretizations.
	entity genericEntity: self genericEntity.
	entity concreteEntity: self concreteEntity.
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
