## A begin for this wiki...

*(in order to be on the top of the TOC... ;-)*


## For starting

You can read : [the start page](start).


## Issues: *"If you see something, say something"*

For that, you can go the [issues page](issues).


## Improve Documentation

Contribute by:
* by improving the English PlantUML documentation
* by translating the English pages
* by adding new topics...
* helping with the huge categorized list of [Undocumented plantuml features](https://github.com/plantuml/plantuml/issues/261) (100-200 tasks gathered from the forum) that needs your help!
* here is the page, on **this wiki**, for follow [Undocumented PlantUML features in order to document](undocumented)

Here's how to start:
* go to the [TOC](http://alphadoc.plantuml.com/toc/) or mini-TOC (below)
* select your preferred wiki syntax
* select your language *(if you want to translate)*
* and select a topic.


## Wiki Mini TOC

This section lists all pages in a categorized listing, whereas [Wiki TOC](http://alphadoc.plantuml.com/toc/markdown/en) also lists all subsections.

### This Documentation Wiki
- [Start](start)
- [A Begin for This Wiki](a_begin_for_this_wiki)
- [Menu translation](menu)
- [formatting](formatting)
- [syntax-asciidoc](syntax-asciidoc)
- [syntax-dokuwiki](syntax-dokuwiki)
- [syntax-markdown](syntax-markdown)
- [poll-about-wiki-syntax](poll-about-wiki-syntax)

### Intro
- [Index](index)
- [Quick Start](starting)
- [FAQ](faq)
- [PlantUML Language Reference Guide](http://plantuml.com/guide)
- [Running with Other Tools](https://plantuml.com/running)
- [What is a Software Modeling Tool](what-is-a-software-modeling-tool)

### Diagrams

The default header/footer (or StartTag/EndTag) are `@startuml`/`@enduml`.

| Diagram | Diagram Issues | Header | Keyword | Sub-diagram Keyword |
| ------- | -------------- | ------ | ------- | ------------------- |
| [Activity](activity-diagram-beta)|[Activity Issues](activity-diagram-issues)||||
| [Activity - Specification and Description Language (SDL)](activity-diagram-beta#vmm58ifz7wd3k362kj5w)|||||
| [Activity-legacy](activity-diagram-legacy) [[#FF6600#deprecated]]|||||
| [Archimate](archimate-diagram)|||||
| [Business Process Modeling Notation (BPMN)](bpmn)||@startbpm|||
| [Board or User Story Maps\n(🚧 *under construction*)](board-diagram)||@startboard||``&#123;&#123;board``|
| [Class](class-diagram)| [Class Issues](class-diagram-issues)||||
| [Component](component-diagram)|[Deployment Issue](deployment-diagram-issues)||||
| [Deployment](deployment-diagram)|[Deployment Issue](deployment-diagram-issues)||||
| [Gantt project planning](gantt-diagram)||@startgantt||``&#123;&#123;gantt``|
| [Information Engineering (IE) / Entity Relationship (ER)](ie-diagram)|||||
| [JSON\n(🆕 functionality)](json)|[JSON Issues](json-issues)|@startjson||``&#123;&#123;json``|
| [MindMap](mindmap-diagram)||@startmindmap||``&#123;&#123;mindmap``|
| [Network (nwdiag)](nwdiag)|[Network Issue](nwdiag-issues)|@startnwdiag|nwdiag {\n}||
| [Object](object-diagram)|||||
| [Problem diagram](problem-diagram)|||||
| [Sequence](sequence-diagram)|||||
| [State](state-diagram)|[State Issue](state-diagram-issues)||||
| [Timing](timing-diagram)|||||
| [Use-Case](use-case-diagram)|[Deployment Issue](deployment-diagram-issues)||||
| [Work Breakdown Structure (WBS)](wbs-diagram)||@startwbs||``&#123;&#123;wbs``|
| [Wireframe (SALT)](salt) || @startsalt | salt\n{\n} ||
| [Wire or Block Diagram\n(🆕 *beta version to test*)](wire-diagram) ||@startwire ||``&#123;&#123;wire [[#00CC00#Version 1.2021.01]]``|
| [YAML\n(🆕 functionality)](yaml)||@startyaml||``&#123;&#123;yaml [[#00CC00#Version 1.2021.01]]``|

### Other Diagrams/Games

| Diagram | Header | Keyword | Sub-diagram Keyword | Command |
| ------- | ------ | ------- | ------- | ------- |
| [Creole](creole) |@startcreole||||
| [ditaa](ditaa)   |@startditaa|ditaa||(--no-separation, --no-shadows, scale=<scale>) |
| [Dot](dot)       |@startdot|digraph <graph_name>{\n}|||
| [Math](ascii-math) |@startmath|`<math>...</math>`|||
| [LaTeX](ascii-math) |@startlatex|`<latex>...</latex>`|||
| [Oregon Trail](oregon-trail) ||||run oregon trail|
| [Sudoku](sudoku) ||||sudoku|
| [XEarth](xearth) ||||xearth|

### Common/Markup/Layout
- [commons](commons)
- [🧮 AsciiMath](ascii-math)
- [🌈 color](color) 
- [creole](creole)
- [🔤 font](font) 
- [GFM-support](gfm-support)
- [✍ handwritten](handwritten)
- [🗨 notes](notes)
- [🔗 link](link) 
- [openiconic](openiconic)
- [skinparam](skinparam)
- [sprite](sprite)
- [style-evolution-history](style-evolution-history)
- [🎨🖌️style-evolution (Style or CSS like style)](style-evolution)
- [using-a-citation-manager](using-a-citation-manager)
- [poll-about-package-and-namespace](poll-about-package-and-namespace)

### Preprocessing/Libraries
- [📚 stdlib](stdlib)
- [🖼️ theme](theme)
- [🖼️🗃 theme Gallery](theme-gallery)
- [⚙ preprocessing *(new)*](preprocessing) 
- [preprocessing-json](preprocessing-json)
- [⚙🗃 Preprocessing Gallery](preprocessing-gallery)
- [preprocessing-v2 *(old)*](preprocessing-v2) [[#FF6600#deprecated]]
- [plantumlshell *(very old)*](plantumlshell) [[#FF6600#deprecated]]

### URL Authentication
- [URL-Authentication](url-authentication)
  - [URL-BasicAuth](url-basicauth)
  - [URL-OAauth](url-oauth)
  - [URL-TokenAuth](url-tokenauth)

### Alternative Layouters
- [Smetana](smetana02)
- [ELK](elk)
- [Svek](svek)
- [Teoz](teoz)
- [VizJs](vizjs)

### Executing
- [Command-line](command-line)
- [FAQ-install](faq-install)
- [FTP](ftp)
- [GUI](gui)
- [Graphviz-dot](graphviz-dot)
- [Server](server)
- [Sources](sources)
- [Security](security)
- [Starting](starting)
- [Statistics-report](statistics-report)
- [Text-encoding](text-encoding)
- [Unicode](unicode)
- [Versioning-scheme](versioning-scheme)

### Alternative Output
- [ASCII-art](ascii-art)
- [EPS](eps)
- [LaTeX](latex)
- [PDF](pdf)
- [SVG](svg)

### Integrations

*(see [running](https://plantuml.com/running) for a lot more links, unfortunately that page is not on alphadocs)*

- [Ant-task](ant-task)
- [Doclet](doclet)
- [Docutils](docutils)
- [Doxygen](doxygen)
- [Eclipse](eclipse)
- [Emacs](emacs)
- [Javadoc](javadoc)
- [JQuery](jquery)
- [PmWiki](pmwiki)
- [Word](word)
- [XMI](xmi)

### Programming
- [Developers](developers)
- [API](api)
- [code-groovy](code-groovy)
- [code-javascript-asynchronous](code-javascript-asynchronous)
- [code-javascript-synchronous](code-javascript-synchronous)
- [code-php](code-php)

### Support and Appreciation
- [Patreon-support](patreon-support)
- [Donors](donors)
- [External-links](external-links): Projects using PlantUML, Learn & Teach with PlantUML, etc.
- [Professional](professional)
- [Wiki Issues](issues)
- [Dedication](dedication)
- [Steve Jobs](steve)


