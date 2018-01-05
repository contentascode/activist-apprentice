[![Travis](https://img.shields.io/travis/contentascode/activist-apprentice.svg)](https://travis-ci.org/contentascode/activist-apprentice) [![npm](https://img.shields.io/npm/dt/activist-apprentice.svg)](https://www.npmjs.com/package/activist-apprentice) [![GitHub license](https://img.shields.io/github/license/contentascode/activist-apprentice.svg)](https://github.com/contentascode/activist-apprentice/blob/master/LICENSE)

# Activist Apprentice Content as Code CLI tool

Activist Apprentice is...

Command line tool to manage content workflows for the Apprentice project. It uses the content as code framework.

- [Features](#features)
- [Install](#install)
- [Usage](#usage)
- [Links](#links)

## Features

A quick walk through...

[![IMAGE ALT TEXT HERE]()]()

## Install

Prerequisites:
 - [node v6 minimum, v8.9 LTS recommended](https://nodejs.org/en/)
   - MacOS note that installation via `brew` is not yet supported.
 - npm v5.6.0
   -  `npm i -g npm`
 - docsmith v0.6.0:
   -  `npm i -g docsmith@beta`
 - pandoc 1.19
   - `brew install pandoc`
   - `apt-get install pandoc`

You can now install the CLI with:
```
npm i -g activist-apprentice
```

## Usage

```
mkdir workspace
cd workspace
apprentice init
```

This will prompt you with a few questions about configuration. The defaults should work in the majority of cases.

```
apprentice start
```

This will start the preview server and watch your local files for changes. You can open your browser at `http://localhost:8081` to browse the preview.

## Links

- Related repositories
  - `activist-apprentice-course-template` content package https://github.com/contentascode/activist-apprentice-course-template
  - Content as code https://github.com/iilab/contentascode
  - CLI Framework https://github.com/docsmith/docsmith
