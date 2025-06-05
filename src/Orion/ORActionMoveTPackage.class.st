Class {
	#name : 'ORActionMoveTPackage',
	#superclass : 'ORActionMoveNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTPackage >> createVersionnedEntitySelector [

	^ #newPackage
]

{ #category : 'accessing' }
ORActionMoveTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionMoveTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionMoveTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
