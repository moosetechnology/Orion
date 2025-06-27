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

{ #category : 'as yet unclassified' }
FXDiff2Orion class >> fillActionSlots: orActions from: realChanges [

	1 to: orActions size do: [ :i |
		| action change |
		action := orActions at: i.
		change := realChanges at: i.

		change entity class allInstVarNames do: [ :slot |
			(change entity instVarNamed: slot) ifNotNil: [
				(action class allInstVarNames includes: slot) ifTrue: [
					action instVarNamed: slot put: (change entity instVarNamed: slot) ] ] ] ]
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
	self fillActionSlots: orActions from: realChanges.
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
