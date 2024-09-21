"
I add a new FamixTInheritance association in an OrionModel.
I need the following properties of the new inheritance
- the `superclass`
- the `subclass`
"
Class {
	#name : 'ORActionAddTInheritance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'superclass',
		'subclass'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'as yet unclassified' }
ORActionAddTInheritance class >> description [
	^'add inheritance'
]

{ #category : 'method execution' }
ORActionAddTInheritance >> run [

	| newInheritance |
	newInheritance := self orionModel newInheritance.

	self setFamixProperty: #superclass on: newInheritance to: self superclass.
	self setFamixProperty: #subclass on: newInheritance to: self subclass.

	entity := newInheritance.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTInheritance >> subclass [
	^ subclass
]

{ #category : 'accessing' }
ORActionAddTInheritance >> subclass: aValue [
	subclass := aValue
]

{ #category : 'accessing' }
ORActionAddTInheritance >> superclass [
	^ superclass
]

{ #category : 'accessing' }
ORActionAddTInheritance >> superclass: aValue [
	superclass := aValue
]
