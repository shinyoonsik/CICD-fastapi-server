from fastapi import APIRouter, Query, Cookie, Request

router = APIRouter(
    prefix="/v1",
)


@router.get("/math", name="math 조회 api", tags=["math"])
async def math_get(
        request: Request,
        math_id: str = Query(
            description="math ID",
            default=None
        ),
        user_id: str = Query(
            description="유저 ID",
            default=None
        )

):
    query_params = {"math_id": math_id, "user_id": user_id}
    return
