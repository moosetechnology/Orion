"
I add a FamixJavaParameterConcretization in a MooseModel
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
	#name : 'ORActionAddJavaParameterConcretization',
	#superclass : 'ORActionAdd',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'concretizations',
		'genericParameter',
		'concreteParameter',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> concreteParameter [ ^concreteParameter
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> concreteParameter: aValue [ concreteParameter := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> concretizations [ ^concretizations
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> concretizations: aValue [ concretizations := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> genericParameter [ ^genericParameter
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> genericParameter: aValue [ genericParameter := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaParameterConcretization >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity concretizations: self concretizations.
	entity genericParameter: self genericParameter.
	entity concreteParameter: self concreteParameter.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaParameterConcretization >> sourceAnchor: aValue [ sourceAnchor := aValue
]
