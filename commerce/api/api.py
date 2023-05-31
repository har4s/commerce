from ninja import NinjaAPI
from django.conf import settings

config = {
    "title": "Commerce",
    "version": "1.0.0",
    "description": "A headless e-commerce application",
}

if not settings.DEBUG:
    config["docs_url"] = None

api = NinjaAPI(**config)


@api.get("/")
def hello_world(request):
    return {"msg": "Hello World!"}


@api.get("/healthcheck", include_in_schema=False)
def healthcheck(request):
    return {"ok": True}
