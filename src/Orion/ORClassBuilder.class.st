Class {
	#name : 'ORClassBuilder',
	#superclass : 'Object',
	#instVars : [
		'superclass',
		'name',
		'slots',
		'package',
		'tag'
	],
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'building' }
ORClassBuilder >> build [

	self validate.

	Smalltalk classInstaller make: [ :builder |
		builder
			superclass: superclass;
			name: name;
			slots: ((slots collect: #name) reject: [ :e | e = 'name' ]);
			package: package;
			tag: tag ]
]

{ #category : 'method execution' }
ORClassBuilder >> createVersionnedEntitySelector [ ^ #newORActionAddTAttribute
]

{ #category : 'accessing' }
ORClassBuilder >> name [ ^name
]

{ #category : 'accessing' }
ORClassBuilder >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORClassBuilder >> package [ ^package
]

{ #category : 'accessing' }
ORClassBuilder >> package: aValue [ package := aValue
]

{ #category : 'accessing' }
ORClassBuilder >> slots [ ^slots
]

{ #category : 'accessing' }
ORClassBuilder >> slots: aValue [ slots := aValue
]

{ #category : 'accessing' }
ORClassBuilder >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORClassBuilder >> superclass: aValue [ superclass := aValue
]

{ #category : 'accessing' }
ORClassBuilder >> tag [ ^tag
]

{ #category : 'accessing' }
ORClassBuilder >> tag: aValue [ tag := aValue
]

{ #category : 'validation' }
ORClassBuilder >> validate [

	name ifNil: [ self error: 'Class name cannot be nil' ].
	superclass ifNil: [ self error: 'Superclass cannot be nil' ].
	package ifNil: [ self error: 'Package cannot be nil' ].
	tag ifNil: [ self error: 'Tag cannot be nil' ].
	slots ifNil: [ slots := #(  ) ]
]
