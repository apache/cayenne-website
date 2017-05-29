A website for the Apache Cayenne project.

To build this site on OSX:

1. Install homebrew
2. # brew install rbenv-bundler
3. cd to the top of this folder
4. # rbenv install
5. # bundler install
6. # jekyll s

From time to time you might need to repeat steps 4 and 5 if the version of ruby or gems are upgraded.

When you run the jekyll server in step 6, you'll be able to browse to localhost and view the site. As you change files, the site rebuilds automatically in a few seconds.

The output of the site can be found in _site if that needs to be copied to another location for deployment.