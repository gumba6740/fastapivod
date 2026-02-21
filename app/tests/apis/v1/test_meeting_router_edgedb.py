import httpx
from starlette.status import HTTP_200_OK

from app import app
from app.utils.edge import gel_client


async def test_api_create_meeting_gel() -> None:
    async with httpx.AsyncClient(
        transport=httpx.ASGITransport(app=app),
        base_url="http://test",
    ) as client:
        response = await client.post(
            url="/v1/edgedb/meetings",
        )

    assert response.status_code == HTTP_200_OK
    url_code = response.json()["url_code"]
    assert await gel_client.query_single(f"select exists (select Meeting filter .url_code = '{url_code}');") is True
