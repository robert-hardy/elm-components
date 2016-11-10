from flask import (
    jsonify,
    render_template
)
import sys


from app.flasky import app


appname = sys.argv[1]


@app.route('/')
def homepage():
    return render_template(
        'index.html',
        appname=appname
    )


@app.route('/list-of-strings')
def get_list_of_strings():
    lst = [
        'from',
        'the',
        'server'
    ]
    return jsonify(
        {
            'result': lst
        }
    )


app.run(host='0.0.0.0', port=8080)
