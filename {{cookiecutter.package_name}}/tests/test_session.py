from {{cookiecutter.package_name}}.accessor import session

def test_session():
    """ 
    tests that a session can be created without error
    """
    with session() as db:
        assert db
    
