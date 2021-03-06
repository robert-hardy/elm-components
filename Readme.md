Elm components
====

(Uses Elm v0.17)

Overview
----

This repository demonstrates the way I go about building and combining
components to form a complete application.

The basic idea is to build each component in isolation first and then bring
them together in the main app.

Elm makes this process remarkably easy because of its model/update/view
approach and because of the types.

Instructions
----
The server is written in Python 3.5 using Flask. I _always_ use `virtualenv`,
so the code to get started is:

    virtualenv venv -p /usr/python3.5
    source venv/bin/activate
    pip install -r requirements.txt
    source build_and_run.sh

then go visit `http://localhost:8080`.

To help me work on components in isolation the simple build script
`build_and_run` accepts a component name (defaulting to the name of the main
app) and builds and serves only that component.

Credits
----
The file structure of each component comes from Kris Jenkins's blog post
[here](http://blog.jenkster.com/2016/04/how-i-structure-elm-apps.html).
