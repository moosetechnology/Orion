Class {
	#name : 'ORSlotReadTest',
	#superclass : 'TestCase',
	#category : 'NewOrionTest',
	#package : 'NewOrionTest'
}

{ #category : 'tests' }
ORSlotReadTest >> testSettingOneToMany [

	| cmt mth |
	cmt := FamixStComment new.
	mth := FamixStMethod new.

	self assert: mth comments isEmpty.
	self assert: cmt commentedEntity isNil.

	cmt commentedEntity: mth.

	self assert: cmt commentedEntity equals: mth.
	self assert: mth comments size equals: 1.
	self assert: mth comments anyOne equals: cmt.

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
