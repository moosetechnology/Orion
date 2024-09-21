Class {
	#name : 'ORSlotReadTest',
	#superclass : 'TestCase',
	#category : 'Orion-Tests-Core',
	#package : 'Orion-Tests',
	#tag : 'Core'
}

{ #category : 'tests' }
ORSlotReadTest >> testAddWithoutInverseValue [

	| cmt mth |
	cmt := FamixStComment new.
	mth := FamixStMethod new.

	self assert: cmt commentedEntity equals: nil.
	self assert: mth comments size equals: 0.

	mth addWithoutInverse: #comments value: cmt.

	self assert: cmt commentedEntity equals: nil.
	self assert: mth comments size equals: 1.
	self assert: mth comments anyOne equals: cmt.

]

{ #category : 'tests' }
ORSlotReadTest >> testSetWithoutInverseValue [

	| cmt mth |
	cmt := FamixStComment new.
	mth := FamixStMethod new.

	self assert: cmt commentedEntity isNil.
	self assert: mth comments size equals: 0.

	cmt setWithoutInverse: #commentedEntity value: mth.

	self assert: cmt commentedEntity equals: mth.
	self assert: mth comments size equals: 0.

]

{ #category : 'tests' }
ORSlotReadTest >> testSettingOneToOne [

	| anc mth |
	anc := FamixStSourceAnchor new.
	mth := FamixStMethod new.

	self assert: mth sourceAnchor isNil.
	self assert: anc element isNil.

	mth sourceAnchor: anc.

	self assert: mth sourceAnchor equals: anc.
	self assert: anc element equals: mth.

]
