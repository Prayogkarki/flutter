from flask import Blueprint
from flask_restful import Api
from resources.User import User



api_bp=Blueprint('api',__name__)
api=Api(api_bp)

# route
api.add_resource((User, '/hello'))
