"
I remove a FamixJavaImplicitVariable in a MooseModel
I need the following properties of the  implicitvariable

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`parentBehaviouralEntity`
-`incomingAccesses`
-`isStub`
-`declaredType`
"
Class {
	#name : 'ORActionRemoveJavaImplicitVariable',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'parentBehaviouralEntity',
		'incomingAccesses',
		'isStub',
		'declaredType'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImplicitVariable >> createVersionnedEntitySelector [ ^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaImplicitVariable >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.
	entity parentBehaviouralEntity: nil.
	entity incomingAccesses: nil.
	entity isStub: nil.
	entity declaredType: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
