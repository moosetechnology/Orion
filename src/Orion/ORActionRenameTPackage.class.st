Class {
	#name : 'ORActionRenameTPackage',
	#superclass : 'ORActionRenameNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRenameTPackage >> createVersionnedEntitySelector [

	^ #newPackage
]

{ #category : 'accessing' }
ORActionRenameTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionRenameTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionRenameTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
