"
The class that convert the FamixChange given by FamixDiff into ORAction to apply to the model
"
Class {
	#name : 'FXDiff2Orion',
	#superclass : 'Object',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'applying' }
FXDiff2Orion class >> applyORAction: anORActionList onModel: aModel [

	anORActionList do: [ :e | e orionModel: aModel ].
	anORActionList do: [ :e | e run ].
	^ aModel
]

{ #category : 'converting' }
FXDiff2Orion class >> fxChangetoORActionConverter: aFamixDiffResult [

	| visitors realChanges orActions "visitorForVisitors" |
	"visitorForVisitors := FamixChangeSelectorVisitor new."
	realChanges := (self getUsefulChanges: aFamixDiffResult)
		               asOrderedCollection.
	visitors := realChanges collect: [ :e | e selectorForVisitor ].
	"visitors := realChanges collect: [ :e | e accept: visitorForVisitors ]."

	orActions := (1 to: realChanges size) collect: [ :i |
		             (realChanges at: i) entity accept: (visitors at: i) ].
	^ orActions
]

{ #category : 'converting' }
FXDiff2Orion class >> getUsefulChanges: aFamixDiffResult [

	| res |
	res := aFamixDiffResult additions.
	res := res union: aFamixDiffResult removals.
	res := res union: aFamixDiffResult moves.
	"res := res union: aFamixDiffResult renames."
	^ res
]
