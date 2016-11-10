APPNAME=${1:-ToDoList}
elm-make app/"{APPNAME}"/App.elm --output app/static/my-app.js && python run.py
