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
	#package : 'Orion-Actions'
}

{ #category : 'as yet unclassified' }
ORActionAddTInheritance class >> description [
	^'add inheritance'
]

{ #category : 'method execution' }
ORActionAddTInheritance >> run [

	| newInheritance |

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
