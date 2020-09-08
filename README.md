# Apache Cayenne Website Sources 

Contains sources of [Cayenne website](http://cayenne.apache.org).

## How To Run

### Dev mode

Just clone and run maven, nothing else required.

    git clone https://gitbox.apache.org/repos/asf/cayenne-website.git
    cd cayenne-website
    mvn

Open http://localhost:3000 in your browser. In dev mode site supports live-reloading.

:grey_exclamation: _You can change host and port by setting `dev.host` and `dev.port` properties:_
   
    mvn -Ddev.host="my.local" -Ddev.port="8080"

### Publish

To publish a new version just run Maven with `publish` profile. This will build a production version of the site (with cayenne.apache.org base URL) and push commit into `asf-site` branch that will be synced with actual site content location:
    
    mvn -Ppublish -Dmsg="commit message describing site changes"
    
That's all, so be careful and review your changes before publishing (also don't forget to check them after).

Don't forget to push your source's changes so others won't rewrite them.

*NOTE*: This process can be automated by Jenkins. It can run publish on every commit to `master`.

## CMS guide

### Content modifications

#### Publishing news

To publish news simply add new file at `src/main/site/content/news/` folder.
You can use the following template: 

`some-good-news.md`

    ---
    title: Good news everyone!
    date: 2017-01-01T00:00:00+03:00
    --- 
    
    Content goes here


#### Releasing new cayenne version

To update site content with information about new Cayenne version you need to perform these steps:

* Update data in `src/main/site/data/cayenne.yaml` file.
* Write news (see information above).
* Update documentation, see next section.
  
####  Update Cayenne Documentation

There are two helpers shell scripts to update Cayenne documentation:

* build-docs.sh that updates both JavaDoc and Asciidoc
* build-asciidocs.sh that update Asciidoc only

Usage:

* Update all docs after the release
```
    ./build-docs.sh 4.1.RC2
```
    
* Add fixes to the docs
```
    ./build-asciidocs.sh STABLE-4.0 4.0.2
```
    
These scripts don't commit changes so you should commit them manually and publish the site as usual. 


### Advanced 

Node.js, Yarn, Gulp and Hugo tools are used to build this site, Maven used just to bootstrap Node.js and Yarn tools and launch Gulp tasks.
Hugo binaries managed by [hugo-bin](https://www.npmjs.com/package/hugo-bin) NPM module.

#### Src structure

There are two main parts of the site src:
* `src/main/assets` assets processed by [Gulp](https://gulpjs.com) tasks

    * `/gulp/` - list of Gulp tasks
    
        Important tasks:
        * `hugo.js` - contains tasks that launch Hugo to process all content
        * `images.js` - compress and copy images
        * `reference.js` - replace references to generated resources inside content
        * `revision.js` - generate manifest file with resources versions
        * `scripts.js` - launch Webpack to process JavaScript resources
        * `serve.js` - launch dev-version of site with live-reloading
        * `styles.js` - generate CSS bundle (concat, minify, etc..)
    * `/images/` - images that will be compressed and published into site `/img` directory, 
    you can put any stuff used by site here (see `/gulp/images.js`)
    * `/scripts/` - JavaScript sources, `main.js` is an entry point for the final bundle,
    will be processed by Webpack (see `/gulp/scripts.js`)
    * `/styles/` - Sass sources, `main.scss` is an entry point for the final bundle
    (see `/gulp/styles.js`)
    * `gulpfile.js` - main file for Gulp tasks, define some global path constants
    * `package.json` - all project dependencies are defined here

* `src/main/site` assets processed by [Hugo](https://gohugo.io) site generator

    * `/content/` - main content part of the site, markdown and HTML files
    * `/data/` - data files in *yaml* format
    * `/layouts/` - site templates, using [GO templates](https://golang.org/pkg/text/template/)
    * `/static/` - files that will be copied as is to the final site content, note that `js`, `img` and `css` directories
    are processed via Gulp tasks, and shouldn't be used directly, instead use coresponding directories in `assets`.     
    * `config.yaml` - Hugo configuration
