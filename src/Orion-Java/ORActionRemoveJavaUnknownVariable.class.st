"
I remove a FamixJavaUnknownVariable in a MooseModel
I need the following properties of the  unknownvariable

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`incomingAccesses`
-`isStub`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveJavaUnknownVariable',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'incomingAccesses',
		'isStub',
		'declaredType'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaUnknownVariable >> createVersionnedEntitySelector [ ^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaUnknownVariable >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
