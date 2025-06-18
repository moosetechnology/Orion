"
The visitor to create the corresponding ORAction for an FamixRenameChange
"
Class {
	#name : 'FamixRenameChangeVisitor',
	#superclass : 'Object',
	#traits : 'FamixTVisitor + FamixJavaTVisitor',
	#classTraits : 'FamixTVisitor classTrait + FamixJavaTVisitor classTrait',
	#category : 'Orion-Visitors',
	#package : 'Orion',
	#tag : 'Visitors'
}

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTAnnotationTypeAttribute: anAnnotationTypeAttribute [  ^ORActionRenameTAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTAttribute: anAttribute [  ^ORActionRenameTAttribute new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTClass: anClass [  ^ORActionRenameTClass new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTEnum: anEnum [  ^ORActionRenameTEnum new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTEnumValue: anEnumValue [  ^ORActionRenameTEnumValue new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTException: anException [  ^ORActionRenameTException new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTImplicitVariable: anImplicitVariable [  ^ORActionRenameTImplicitVariable new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTLocalVariable: anLocalVariable [  ^ORActionRenameTLocalVariable new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTMethod: anMethod [  ^ORActionRenameTMethod new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTPackage: anPackage [  ^ORActionRenameTPackage new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTParameter: anParameter [  ^ORActionRenameTParameter new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTPrimitiveType: anPrimitiveType [  ^ORActionRenameTPrimitiveType new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTType: anType [  ^ORActionRenameTType new.
]

{ #category : 'visiting' }
FamixRenameChangeVisitor >> visitFamixTUnknownVariable: anUnknownVariable [  ^ORActionRenameTUnknownVariable new.
]
