# critical-essay-template
A light-weight template for generating a web-hosted essay from a markdown file. 

## About

This template was designed to help students write a critical essay in markdown, with automatic reference formatting via a linked `.bib` file, while keeping track of their writing process through git's versioning system. The template uses a built-in workflow for visualising and publishing the essay with GitHub Pages, and/or developed locally with pandoc. 

The template was developed by [Wout Dillen](https://www.hb.se/forskning/forskningsportal/forskare/wout-dillen/), Senior Lecturer in Library and Information Science at the University of Borås](https://www.hb.se/en/).

## Website Link

🚀 Visit the demo version here: [https://woutdln.github.io/critical-essay-template/](https://woutdln.github.io/critical-essay-template/).

## Technical requirements

To publish the essay with GitHub Pages, you only need a GitHub account, and to activate the deployment through `Settings > Pages > Build and deployment > Source > Github Actions`. 

To develop the essay locally to check changes before committing, install pandoc (if you haven't already) by following [the instructions for their OS](https://pandoc.org/installing.html). Afterwards, HTML files can be generated from the markdown by navigating to the relevant directory in a terminal, and running:
```
make preview
```

## Affiliations

This resource was developed during Wout's employment at the University of Borås and is affiliated to [Huminfra](https://www.huminfra.se), the Swedish national infrastructure supporting digital and experimental research in the Humanities. In that capacity, it is developed as an in-kind contribution to [DARIAH-SE](https://www.huminfra.se/dariah), the Swedish national node of [DARIAH-EU](https://www.dariah.eu) (Digital Research Infrastructure for the Arts and Humanities), a Pan-European infrastructure that supports digital research and collaboration in the arts and humanities.


<div style="display:flex;justify-content:center">
<a href="https://www.hb.se/en/the-swedish-school-of-library-and-information-science-sslis/"><img src="assets/img/hb-sslis.jpg" alt="The Swedish School of Library and Information Science at the University of Borås" style="height:5rem;margin:2rem"></a>
<a href="https://www.huminfra.se"><img src="assets/img/huminfra.png" alt="Huminfra" style="height:5rem;margin:2rem"></a>
<a href="https://www.huminfra.se/dariah"><img src="assets/img/dariah-se.png" alt="DARIAH-SE" style="height:5rem;margin:2rem"></a>
<div>