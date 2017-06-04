.class public Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;
.super Ljava/lang/Object;
.source "EventShareConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/EventShareConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final ADD_COMMENT_REQUEST:I = 0x1d

.field public static final ADD_CONTENT_REQUEST:I = 0x8

.field public static final ADD_LIKE_REQUEST:I = 0x20

.field public static final ADD_MEMBER_REQUEST:I = 0x5

.field public static final ADD_MEMBER_TO_GUID_GROUP:I = 0x1b

.field public static final CANCEL_RETRY_UPLOAD:I = 0x15

.field public static final CANCEL_WIFI_WAITING:I = 0x10

.field public static final DELETE_COMMENT_REQUEST:I = 0x1f

.field public static final DELETE_CONTENT_REQUEST:I = 0xd

.field public static final DELETE_GROUP_REQUEST:I = 0x7

.field public static final DELETE_LIKE_REQUEST:I = 0x21

.field public static final DELETE_MEMBER_REQUEST:I = 0x6

.field public static final EDIT_COMMENT_REQUEST:I = 0x1e

.field public static final GET_GUID_FROM_SA_CLIENT:I = 0x1c

.field public static final HOST_ADD_MEMBER_REQUEST:I = 0xe

.field public static final HOST_DELETE_GROUP_REQUEST:I = 0xf

.field public static final NONE_REQUEST:I = 0x0

.field public static final OWNER_LEAVE_GROUP:I = 0x19

.field public static final PAUSE_UPLOAD_REQUEST:I = 0x12

.field public static final REFRESH_EVENT_REQUEST:I = 0xc

.field public static final REFRESH_SOCIAL_INFO_REQUEST:I = 0x22

.field public static final REMOVE_EVENTMAP:I = 0x16

.field public static final RESTORE_EVENT_FROM_SERVER:I = 0x1a

.field public static final RESUME_DOWNLOAD_REQUEST:I = 0x13

.field public static final RESUME_UPLOAD_REQUEST:I = 0x11

.field public static final SEND_NEW_WEB_URL_REQUEST:I = 0x18

.field public static final SET_EXPIRE_TIME_REQUEST:I = 0x14

.field public static final START_RECEIVING_EVENT_REQUEST:I = 0x2

.field public static final START_SENDING_EVENT_REQUEST:I = 0x1

.field public static final START_SENDING_LIVE_EVENT_REQUEST:I = 0x3

.field public static final START_SHAREING_EVENT_REQUEST:I = 0xb

.field public static final STOP_SENDING_EVENT_REQUEST:I = 0x4

.field public static final STOP_UPLOADING_EVENT_REQUEST:I = 0x9

.field public static final TYPE:Ljava/lang/String; = "SHARE_EVENT_REQUEST_TYPE"

.field public static final TYPE_NAME:[Ljava/lang/String;

.field public static final UPDATE_REQUEST:I = 0xa

.field public static final UPDATE_STORY_COVER:I = 0x24

.field public static final UPDATE_STORY_NAME:I = 0x23

.field public static final UPDATE_UPLOADED_FILE_COUNT:I = 0x17


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "NONE_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "START_SENDING_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "START_RECEIVING_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "START_SENDING_LIVE_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "STOP_SENDING_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ADD_MEMBER_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "DELETE_MEMBER_REQUEST"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "DELETE_GROUP_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ADD_CONTENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "STOP_UPLOADING_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "UPDATE_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "START_SHAREING_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "REFRESH_EVENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "DELETE_CONTENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "HOST_ADD_MEMBER_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "HOST_DELETE_GROUP_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "CANCEL_WIFI_WAITING"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "RESUME_UPLOAD_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "RESUME_DOWNLOAD_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "PAUSE_UPLOAD_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "SET_EXPIRE_TIME_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "CANCEL_RETRY_UPLOAD"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "REMOVE_EVENTMAP"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "UPDATE_UPLOADED_FILE_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "SEND_NEW_WEB_URL_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "OWNER_LEAVE_GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "RESTORE_EVENT_FROM_SERVER"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "ADD_MEMBER_TO_GUID_GROUP"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "GET_GUID_FROM_SA_CLIENT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "ADD_COMMENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "EDIT_COMMENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "DELETE_COMMENT_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "ADD_LIKE_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "DELETE_LIKE_REQUEST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "UPDATE_STORY_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "UPDATE_STORY_COVER"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;->TYPE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
