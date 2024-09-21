Extension { #name : 'FMProperty' }

{ #category : '*Orion' }
FMProperty >> hasInverse [
	"For polymorphism with FMRelationSlot"
	^false
]

{ #category : '*Orion' }
FMProperty >> isToMany [
	"For polymorphism with FMRelationSlot"
	^false
]

{ #category : '*Orion' }
FMProperty >> isToOne [
	"For polymorphism with FMRelationSlot"
	^ true
]
