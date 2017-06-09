.class public Lcom/samsung/android/scloud/cloudagent/CloudStore;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/cloudagent/CloudStore$API;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$CallBackInterface;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$Music;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFY_DELETE_GALLERY_CONTENTS:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.NOTIFY_DELETE_GALLERY_CONTENTS"

.field public static final ACTION_NOTIFY_SYNC_NOW:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION.NOTIFY_SYNC_NOW"

.field public static final ACTION_NOTIFY_SYNC_ON_TO_GALLERY:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION_NOTIFY_SYNC_ON_TO_GALLERY"

.field public static final ACTION_NOTIFY_SYNC_SETTING:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.NOTIFY_SYNC_SETTING"

.field public static final ACTION_NOTIFY_SYNC_TO_SERVER:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION.NOTIFY_SYNC_TO_SERVER"

.field public static final ACTION_REMOTE_RESPONSE:Ljava/lang/String; = "com.samsung.android.scloud.cloudAgent.CloudStore.ACTION.REMOTE_RESPONSE"

.field public static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.scloud.cloudagent"

.field public static final CACHED_PATH:Ljava/lang/String; = "CACHED_PATH"

.field public static final CANCEL_COPY_MOVE_RESULT:Ljava/lang/String; = "CANCEL_REVERT_CLEAR_RESULT"

.field public static final CANCEL_REVERT_CLEAR_RESULT:Ljava/lang/String; = "CANCEL_REVERT_CLEAR_RESULT"

.field public static final CLEAR_RESULT:Ljava/lang/String; = "CLEAR_RESULT"

.field public static final CLOUDDB_BASE_INDEX:I = 0x989680

.field public static final CLOUD_EXCEPTION:Ljava/lang/String; = "com.sec.android.cloudagent.exception"

.field public static final CONTENT_AUTHORITY:Ljava/lang/String; = "content://com.samsung.android.scloud.cloudagent/data/"

.field public static final COPY_MOVE_RESULT:Ljava/lang/String; = "COPY_MOVE_RESULT"

.field public static final DELETE_ALBUM_RESULT:Ljava/lang/String; = "DELETE_ALBUM_RESULT"

.field public static final DELETE_RESULT:Ljava/lang/String; = "DELETE_RESULT"

.field public static final DOWNLOADED_PATH:Ljava/lang/String; = "DOWNLOADED_PATH"

.field public static final DOWNLOAD_FILE_URI_LIST:Ljava/lang/String; = "DOWNLOAD_FILE_URI_LIST"

.field public static final DOWNLOAD_URL:Ljava/lang/String; = "DOWNLOAD_URL"

.field public static final EMPTY_TRASH_RESULT:Ljava/lang/String; = "EMPTY_TRASH"

.field public static final FAVORITE_RESULT:Ljava/lang/String; = "FAVORITE_RESULT"

.field public static final IS_SYNC_OFF_BUCKET:Ljava/lang/String; = "IS_SYNC_OFF_BUCKET"

.field public static final KEY_ACTION:Ljava/lang/String; = "com.sec.android.cloudagent.exception.action"

.field public static final KEY_CONTENT_URI:Ljava/lang/String; = "content_uri"

.field private static final MEDIA:Ljava/lang/String; = "media"

.field public static final PROGRESSIVE_DOWNLOAD_URL:Ljava/lang/String; = "PROGRESSIVE_DOWNLOAD_URL"

.field public static final RESULT_LOCAL_MEDIA_COUNT:Ljava/lang/String; = "RESULT_LOCAL_MEDIA_COUNT"

.field public static final RESULT_SYNC_DISABLE:Ljava/lang/String; = "RESULT_SYNC_DISABLE"

.field public static final RESULT_SYNC_ENABLE:Ljava/lang/String; = "RESULT_SYNC_ENABLE"

.field public static final RESULT_SYNC_ENABLE_RCODE:Ljava/lang/String; = "RESULT_SYNC_ENABLE_RCODE"

.field public static final RESULT_SYNC_ENABLE_RCODE_MSG:Ljava/lang/String; = "RESULT_SYNC_ENABLE_RCODE_MSG"

.field public static final REVERT_RESULT:Ljava/lang/String; = "REVERT_RESULT"

.field public static final SET_EXIF_RESULT:Ljava/lang/String; = "SET_EXIF_RESULT"

.field public static final SHARE_URI_LIST:Ljava/lang/String; = "SHARE_URI_LIST"

.field public static final SHARE_URL:Ljava/lang/String; = "SHARE_URL"

.field public static final SHARE_URL_LIST:Ljava/lang/String; = "SHARE_URL_LIST"

.field public static final STREAMING_URL:Ljava/lang/String; = "STREAMING_URL"

.field protected static final TABLENAME_FILES:Ljava/lang/String; = "cloudfiles"

.field public static final TABLENAME_IMAGES:Ljava/lang/String; = "images"

.field protected static final TABLENAME_MEDIA_UPLOADS_OPERATIONS:Ljava/lang/String; = "media_upload_operations"

.field public static final TABLENAME_MUSIC:Ljava/lang/String; = "music"

.field public static final TABLENAME_VIDEO:Ljava/lang/String; = "video"

.field public static final THUMBNAIL_BITMAP:Ljava/lang/String; = "ThumbnailBitmap"

.field public static final VERSION:Ljava/lang/String; = "1.0.00"

.field public static final VERSION_CODE:Ljava/lang/String; = "100000000"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGalleryDelaySyncStatus(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "get_gallery_delay_sync"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "gallery_delay_sync_status"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method public static parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, ""

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1
.end method

.method public static setGalleryDelaySyncStatus(Landroid/content/Context;Z)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "gallery_delay_sync_status"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "set_gallery_delay_sync"

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "gallery_delay_sync_status"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
