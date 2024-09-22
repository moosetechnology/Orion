Class {
	#name : 'BaselineOfOrion',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfOrion',
	#package : 'BaselineOfOrion'
}

{ #category : 'baselines' }
BaselineOfOrion >> baseline: spec [
	<baseline>
	spec for: #'common' do: [
		spec 
			package: 'Orion';
			package: 'Orion-Tests' ]
]
