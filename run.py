from flask import (
    jsonify,
    render_template
)


from app.flasky import app


@app.route('/')
def homepage():
    return render_template(
        'index.html'
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
