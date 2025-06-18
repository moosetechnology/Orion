"
I rename a new FamixTImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`parentBehaviouralEntity`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionRenameTImplicitVariable',
	#superclass : 'ORActionRenameTNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTImplicitVariable >> createVersionnedEntitySelector [

	^ #newImplicitVariable
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
