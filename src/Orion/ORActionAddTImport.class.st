"
I add a new FamixTImport in a MooseModel
I need the following properties of the new import

-`importedEntity`
-`importingEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTImport',
	#superclass : 'ORActionAdd',
	#instVars : [
		'importedEntity',
		'importingEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTImport >> createVersionnedEntitySelector [

	^ #newImport
]

{ #category : 'accessing' }
ORActionAddTImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionAddTImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionAddTImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionAddTImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTImport >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTImport >> run [

	super run.

	self setFamixProperty: #importedEntity on: newEntity to: self importedEntity. self setFamixProperty: #importingEntity on: newEntity to: self importingEntity. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
