# About me website

An about me website using Flask Framework in Python.

## Programmed Used
- Frontend
    - HTML
    - CSS
    - JS

- Backend
    - Python
    - sqlite3

## Installation
- Install requirements
    - git
    - Python 3.*

- Install Project requirements
    ```bash
    python -m pip install -r requirements.txt
    ```
    > `Note`: Ubuntu users might have to use `python3` instead of `python`

- Make Database migrations
    ```bash
    flask db init
    flask db migrate -m "initial migration"
    flask db upgrade
    ```

- run application using wsgi server
    ```bash
    waitress-serve wsgi:app
    ```
## TODO
- [ ] Make Website Responsive
- [ ] Create Blogs
