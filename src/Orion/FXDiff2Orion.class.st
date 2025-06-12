Class {
	#name : 'FXDiff2Orion',
	#superclass : 'Object',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'converting' }
FXDiff2Orion class >> getUsefulChanges: aFamixDiffResult [

	| res |
	res := aFamixDiffResult additions.
	res := res union: aFamixDiffResult removals.
	res := res union: aFamixDiffResult moves.
	"res := res union: aFamixDiffResult renames."
	^ res
]
