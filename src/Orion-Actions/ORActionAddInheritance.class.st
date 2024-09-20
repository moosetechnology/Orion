"
A ORActionAddInheritance is a generated class useful to Orion. It corresponds to an action that can be performed on a type of model element. See OrionGenerator in Moose/Orion on SmalltalkHub for more information.
"
Class {
	#name : 'ORActionAddInheritance',
	#superclass : 'ORActionAddLink',
	#instVars : [
		'superclass',
		'subclass'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'as yet unclassified' }
ORActionAddInheritance class >> description [
	^'add inheritance'
]

{ #category : 'method execution' }
ORActionAddInheritance >> run [

	| newInheritance |
	super run.
	newInheritance := self orionModel newInheritance.

	self superclass
		ifNotNil: [ :superClass |
			self setOn: newInheritance bidirectionalProperty: #superclass value: superClass ].

	self subclass
		ifNotNil: [ :subClass |
			self setOn: newInheritance bidirectionalProperty: #subclass value: subClass ].

	entity := newInheritance.
	^ entity
]

{ #category : 'accessing' }
ORActionAddInheritance >> subclass [
	^ subclass
]

{ #category : 'accessing' }
ORActionAddInheritance >> subclass: aValue [
	subclass := aValue
]

{ #category : 'accessing' }
ORActionAddInheritance >> superclass [
	^ superclass
]

{ #category : 'accessing' }
ORActionAddInheritance >> superclass: aValue [
	superclass := aValue
]
