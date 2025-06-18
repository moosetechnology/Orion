"
I move a new FamixTParameter in a MooseModel
I need the following properties of the new parameter

-`parentBehaviouralEntity`
-`isStub`
-`sourceAnchor`
-`declaredType`
"
Class {
	#name : 'ORActionMoveTParameter',
	#superclass : 'ORActionMoveNamedEntity',
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
ORActionMoveTParameter >> createVersionnedEntitySelector [

	^ #newParameter
]

{ #category : 'accessing' }
ORActionMoveTParameter >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionMoveTParameter >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTParameter >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionMoveTParameter >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'accessing' }
ORActionMoveTParameter >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTParameter >> sourceAnchor: aValue [ sourceAnchor := aValue
]
