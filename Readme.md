Elm components
====

Overview
----

This repository demonstrates the way I go about building up and combining
components.

The basic idea is to build each component in isolation first and then bring
them together in the main app.

To help me do this I have a script which accepts a component name (defaulting
to the name of the main app) which builds and serves only that component.

Instructions
----
The server is written in Python 3.5 using Flask. I _always_ use `virtualenv`,
so the code to get started is:

    virtualenv venv -p /usr/python3.5
    source venv/bin/activate
    source build_and_run.sh

and go visit `http://localhost:8080`.
