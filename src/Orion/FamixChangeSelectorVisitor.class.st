"
The visitor to create the corresponding visitor for an FamixAddChange
"
Class {
	#name : 'FamixChangeSelectorVisitor',
	#superclass : 'FamixChangeVisitor',
	#category : 'Orion-Visitors',
	#package : 'Orion',
	#tag : 'Visitors'
}

{ #category : 'visiting' }
FamixChangeSelectorVisitor >> visitAddChange: aAddChange [

	^FamixAddChangeVisitor new.
]

{ #category : 'visiting' }
FamixChangeSelectorVisitor >> visitChange: aChange [
	self subclassResponsibility
]

{ #category : 'visiting' }
FamixChangeSelectorVisitor >> visitMoveChange: aMoveChange [

	^FamixMoveChangeVisitor new.
]

{ #category : 'visiting' }
FamixChangeSelectorVisitor >> visitRemovalChange: aRemovalChange [

	^FamixRemoveChangeVisitor new.
]

{ #category : 'visiting' }
FamixChangeSelectorVisitor >> visitRenameChange: aRenameChange [

	^FamixRenameChangeVisitor new.
]
