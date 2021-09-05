from {{cookiecutter.package_name}}.{{cookiecutter.package_name}}_accessor import session

def test_session():
    """ 
    tests that a session can be created without error
    """
    with session() as db:
        assert db
    