.class public final Lcom/sec/android/gallery3d/eventshare/EventShareConstants;
.super Ljava/lang/Object;
.source "EventShareConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RunningState;,
        Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Error;,
        Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RequestState;,
        Lcom/sec/android/gallery3d/eventshare/EventShareConstants$EventType;,
        Lcom/sec/android/gallery3d/eventshare/EventShareConstants$RequestInfo;,
        Lcom/sec/android/gallery3d/eventshare/EventShareConstants$Request;
    }
.end annotation


# static fields
.field public static final INVALID_EVENT_ID:I = -0x1

.field public static final NOTIFICATION_REFRESH_URI:Ljava/lang/String; = "com.samsung.android.intent.action.REFRESH_GALLERY_CHANNEL_NOTIFICATION"

.field public static final NOTIFICATION_URI:Ljava/lang/String; = "com.samsung.android.intent.action.FIND_GALLERY_CHANNEL_NOTIFICATION"

.field public static final NOTIFY_BADGE_UPDATE_ON_TAB:Ljava/lang/String; = "com.sec.android.gallery3d.eventshare.UPDATE_TAB_BADGE"

.field public static final NOTIFY_EVENT_BADGE_COUNT:I = 0x14

.field public static final NOTIFY_PROGRESS_ACTION:Ljava/lang/String; = "com.sec.android.gallery3d.eventshare.PROGRESS_NOTIFIY"

.field public static final NOTIFY_REFRESH_UPLOADED_COUNT_ACTION:Ljava/lang/String; = "com.sec.android.gallery3d.eventshare.REFRESH_UPLOADED_COUNT"

.field public static final NOTIFY_STATE_ACTION:Ljava/lang/String; = "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

.field public static final NOTIFY_UPLOAD_COUNT_ACTION:Ljava/lang/String; = "com.sec.android.gallery3d.eventshare.UPLOAD_COUNT"

.field public static final RESPONSE_DATA:Ljava/lang/String; = "RESPONSE_DATA"

.field public static final SHARE_EVENT_FILE_ID:Ljava/lang/String; = "SHARE_EVENT_FILE_ID"

.field public static final SHARE_EVENT_ID:Ljava/lang/String; = "SHARE_EVENT_ID"

.field public static final SHARE_EVENT_NETWORKFAIL_MSG:I = 0x64

.field public static final SHARE_EVENT_NOT_VALID:I = 0x6

.field public static final SHARE_EVENT_RESPONSE_ADDMEMBER:I = 0x8

.field public static final SHARE_EVENT_RESPONSE_CANCEL_WAIT_WIFI:I = 0xb

.field public static final SHARE_EVENT_RESPONSE_COMPLETE_CREATE_NEW_EVENT:I = 0x3

.field public static final SHARE_EVENT_RESPONSE_COMPLETE_DELETE_MEMBER:I = 0x5

.field public static final SHARE_EVENT_RESPONSE_COMPLETE_REFRESH:I = 0x7

.field public static final SHARE_EVENT_RESPONSE_COMPLETE_SEND_LINK:I = 0x13

.field public static final SHARE_EVENT_RESPONSE_DELETE_DONE:I = 0x10

.field public static final SHARE_EVENT_RESPONSE_DELETE_GROUP_MEMBER_ERROR:I = 0x11

.field public static final SHARE_EVENT_RESPONSE_DOWNLOAD_ENDED:I = 0xd

.field public static final SHARE_EVENT_RESPONSE_DOWNLOAD_STARTED:I = 0xc

.field public static final SHARE_EVENT_RESPONSE_FAIL_TOKEN:I = 0x15

.field public static final SHARE_EVENT_RESPONSE_NONE:I = 0x0

.field public static final SHARE_EVENT_RESPONSE_PUSH_RECEIVER_DELETE_GROUP:I = 0xe

.field public static final SHARE_EVENT_RESPONSE_RETRY_HOST_ADDMEMBER:I = 0x9

.field public static final SHARE_EVENT_RESPONSE_SEND_LINK_ERROR:I = 0x12

.field public static final SHARE_EVENT_RESPONSE_SUCCESS_TOKEN:I = 0x4

.field public static final SHARE_EVENT_RESPONSE_UPDATE_STORY_NAME_ERROR:I = 0x17

.field public static final SHARE_EVENT_RESPONSE_UPDATE_STORY_NAME_SUCCESS:I = 0x16

.field public static final SHARE_EVENT_RESPONSE_UPLOAD_ENDED:I = 0x2

.field public static final SHARE_EVENT_RESPONSE_UPLOAD_ERROR_POPUP:I = 0xf

.field public static final SHARE_EVENT_RESPONSE_UPLOAD_STARTED:I = 0x1

.field public static final SHARE_EVENT_RESPONSE_WAIT_WIFI:I = 0xa

.field public static final SHARE_EVENT_UPDATE_COMMENTS_VIEW:I = 0x18

.field public static final SHARE_EVENT_UPDATE_STORY_DATE_PERIOD:I = 0x19

.field public static final SHARE_EVENT_UPLOAD_ERROR_FROM:Ljava/lang/String; = "SHARE_EVENT_UPLOAD_ERROR_FROM"

.field public static final TOTAL_COUNT:Ljava/lang/String; = "TOTAL_COUNT"

.field public static final UPLOADED_COUNT:Ljava/lang/String; = "UPLOADED_COUNT"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
