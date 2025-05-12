"
I add a new FamixTAccess in an OrionModel.
I need the following properties:
- `accessor`
- `variable`
"
Class {
	#name : 'ORActionAddTAccess',
	#superclass : 'ORActionAdd',
	#instVars : [
		'accessor',
		'variable'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTAccess >> accessor [
	^accessor 
]

{ #category : 'accessing' }
ORActionAddTAccess >> accessor: aValue [
	accessor := aValue
]

{ #category : 'method execution' }
ORActionAddTAccess >> run [
	| newAccess |
	newAccess := self orionModel newAccess.

	self setFamixProperty: #accessor on: newAccess to: self accessor.
	self setFamixProperty: #variable on: newAccess to: self variable.

	newAccess resetMooseName.
	entity := newAccess .
	^entity
]

{ #category : 'accessing' }
ORActionAddTAccess >> variable [
	^variable 
]

{ #category : 'accessing' }
ORActionAddTAccess >> variable: aValue [
	variable := aValue
]
