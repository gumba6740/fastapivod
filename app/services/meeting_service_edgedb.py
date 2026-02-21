import uuid

from app.queries.meeting.create_meeting_async_edgeql import (
    CreateMeetingAsyncResult,
    create_meeting_async,
)
from app.utils.base62 import Base62
from app.utils.edge import gel_client


async def service_create_meeting_edgedb() -> CreateMeetingAsyncResult:
    return await create_meeting_async(
        executor=gel_client,
        url_code=Base62.encode(uuid.uuid4().int),
    )
