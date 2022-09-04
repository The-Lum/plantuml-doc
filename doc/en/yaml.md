## Display YAML Data

[YAML](https://en.wikipedia.org/wiki/YAML) format is widely used in software.

You can use PlantUML to visualize your data.

To activate this feature, the diagram must:
* begin with ``@startyaml`` keyword
* end with ``@endyaml`` keyword. 

<plantuml>
@startyaml
fruit: Apple
size: Large
color: 
  - Red
  - Green
@endyaml
</plantuml>


## Complex example

<plantuml>
@startyaml
doe: "a deer, a female deer"
ray: "a drop of golden sun"
pi: 3.14159
xmas: true
french-hens: 3
calling-birds: 
	- huey
	- dewey
	- louie
	- fred
xmas-fifth-day: 
	calling-birds: four
	french-hens: 3
	golden-rings: 5
	partridges: 
		count: 1
		location: "a pear tree"
	turtle-doves: two
@endyaml
</plantuml>


## Specific key (with symbols or unicode)
<plantuml>
@startyaml
@fruit: Apple
$size: Large
&color: Red
❤: Heart
‰: Per mille
@endyaml
</plantuml>

*[Ref. [QA-13376](https://forum.plantuml.net/13376/)]*


## Highlight parts

### Normal style
<plantuml>
@startyaml
#highlight "french-hens"
#highlight "xmas-fifth-day" / "partridges"

doe: "a deer, a female deer"
ray: "a drop of golden sun"
pi: 3.14159
xmas: true
french-hens: 3
calling-birds: 
	- huey
	- dewey
	- louie
	- fred
xmas-fifth-day: 
	calling-birds: four
	french-hens: 3
	golden-rings: 5
	partridges: 
		count: 1
		location: "a pear tree"
	turtle-doves: two
@endyaml
</plantuml>


### Customised style 
<plantuml>
@startyaml
<style>
yamlDiagram {
    highlight {
      BackGroundColor red
      FontColor white
      FontStyle italic
    }
}
</style>
#highlight "french-hens"
#highlight "xmas-fifth-day" / "partridges"

doe: "a deer, a female deer"
ray: "a drop of golden sun"
pi: 3.14159
xmas: true
french-hens: 3
calling-birds: 
	- huey
	- dewey
	- louie
	- fred
xmas-fifth-day: 
	calling-birds: four
	french-hens: 3
	golden-rings: 5
	partridges: 
		count: 1
		location: "a pear tree"
	turtle-doves: two
@endyaml
</plantuml>
*[Ref. [QA-13288](https://forum.plantuml.net/13288/the-ability-to-customise-the-highlight-for-json-yaml?show=13378#c13378)]*


## Using (global) style

### Without style *(by default)*
<plantuml>
@startyaml
  -
    name: Mark McGwire
    hr:   65
    avg:  0.278
  -
    name: Sammy Sosa
    hr:   63
    avg:  0.288
@endyaml
</plantuml>


### With style

You can use [style](style-evolution) to change rendering of elements.

<plantuml>
@startyaml
<style>
yamlDiagram {
  node {
    BackGroundColor lightblue
    LineColor lightblue
    FontName Helvetica
    FontColor red
    FontSize 18
    FontStyle bold
    BackGroundColor Khaki
    RoundCorner 0
    LineThickness 2
    LineStyle 10;5
    separator {
      LineThickness 0.5
      LineColor black
      LineStyle 1;5
    }
  }
  arrow {
    BackGroundColor lightblue
    LineColor green
    LineThickness 2
    LineStyle 2;5
  }
}
</style>
  -
    name: Mark McGwire
    hr:   65
    avg:  0.278
  -
    name: Sammy Sosa
    hr:   63
    avg:  0.288
@endyaml
</plantuml>

*[Ref. [QA-13123](https://forum.plantuml.net/13123)]*


