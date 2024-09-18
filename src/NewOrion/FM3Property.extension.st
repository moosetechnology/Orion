Extension { #name : 'FM3Property' }

{ #category : '*NewOrion' }
FM3Property >> orionPrimitiveGetFrom: anEntity [
	"gets the value of the property (for anEntity) without using Orion's slot"

	self flag: '"on: SlotNotFound" to be removed when we can test for "extension" properties'.

	^[
		(anEntity class slotNamed: self implementingSelector)
			orionPrimitiveRead: anEntity
	]
	on: SlotNotFound
	do: [
		"assuming this property is implemented as an #entityAttributes"
		self getRawFrom: anEntity
	]
]

{ #category : '*NewOrion' }
FM3Property >> orionPrimitiveSetOn: anEntity values: aValue [
	"sets aValue to the property (for anEntity) without using Orion's slot"

	self flag: '"on: SlotNotFound" to be removed when we can test for "extension" properties'.

	[ anEntity setWithoutInverse: self implementingSelector value: aValue ]
	on: SlotNotFound
	do: [
		"assuming this property is implemented as an #entityAttributes"
		self setOn: anEntity rawValue: aValue
	].

]
