JavaScript YAML Command-line Utilities
======================================

Command-line utilities to convert [YAML](http://yaml.org/) files to JSON files and vice versa.

js-yaml-cli is based on [js-yaml](http://github.com/nodeca/js-yaml)
and provides a more sophisticated command-line interface 
than that one [js-yaml](http://github.com/nodeca/js-yaml) comes along with.

The scripts of js-yaml-cli run under [Node.js](http://nodejs.org/).

## Installation

js-yaml-cli depends on [Node.js](http://nodejs.org/) and [npm](http://npmjs.org/). It's
installed globally using npm:

```
npm install -g js-yaml-cli
```

If you want you can install js-yaml-cli locally (type `npm install -g js-yaml-cli` in the project directory you want)
but a global installation is the recommended way.

## Usage

### YAML to JSON

After installation the script `yaml2json` is available

`yaml2json -h` displays the following on the screen:

~~~
usage: yaml2json [-h] [-v] [-c] [-j] [-o OUTPUT] [-e ENCODING] [-d DIRECTORY]
                 [-s] [-t]
                 file

Parse a given YAML file, serialize it to JavaScript and store it as JSON file

Positional arguments:
  file                  YAML File to process, UTF-8 encoded, without BOM

Optional arguments:
  -h, --help            Show this help message and exit.
  -v, --version         Show program's version number and exit.
  -c, --compact         display errors in compact mode
  -j, --to-json         output a non-funky boring JSON
  -o OUTPUT, --output OUTPUT
                        set the output file path for resulting JSON file
  -e ENCODING, --encoding ENCODING
                        set the encoding of the YAML source file
  -d DIRECTORY, --directory DIRECTORY
                        set the output directory for resulting JSON file
  -s, --stdio           listen for and process file over stdio
  -t, --trace           show stack trace on error

The resulting JavaScript object is stored in a .json file in the same
directory as the source file.
~~~