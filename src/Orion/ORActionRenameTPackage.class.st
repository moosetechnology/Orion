"
I rename a new FamixTPackage in a MooseModel
I need the following properties of the new package

-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionRenameTPackage',
	#superclass : 'ORActionRenameTNamedEntity',
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
