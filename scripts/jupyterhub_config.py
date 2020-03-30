from os import environ

c.Authenticator.admin_users = {environ['default_username']}
c.Spawner.default_url = '/lab' 
