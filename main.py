from math.v1_math_get.v1_math_get_router import v1_math_get

app = FastAPI()

# math
app.include_router(v1_math_get.router)
