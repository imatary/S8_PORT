.class public final Lcom/samsung/android/scloud/cloudagent/CloudStore$API;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "API"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/cloudagent/CloudStore$API$RCODE;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$API$NOTIFY_SYNC_STATE;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$API$SETTINGS;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$API$RESOLUTION;,
        Lcom/samsung/android/scloud/cloudagent/CloudStore$API$IMAGE_SIZE;
    }
.end annotation


# static fields
.field public static final CALLBACK_SHARE_FILES:I = 0x1

.field public static final CALLBACK_SHARE_URL:I = 0x0

.field public static final FILE_KEYS:Ljava/lang/String; = "filekeys"

.field public static final KEY_BLACK_AND_WHITE_BUCKET_MAP:Ljava/lang/String; = "black_and_white_bucket_map"

.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucket_id"

.field public static final KEY_BUCKET_LIST:Ljava/lang/String; = "bucketlist"

.field public static final KEY_BUCKET_PATH:Ljava/lang/String; = "bucket_path"

.field public static final KEY_CALL_LOCALCHANGE:Ljava/lang/String; = "call_local_change"

.field public static final KEY_CALL_UPDATELOCAL:Ljava/lang/String; = "call_update_local"

.field public static final KEY_CANCEL_COPY_MOVE:Ljava/lang/String; = "cancel_copy_move"

.field public static final KEY_CANCEL_REVERT_CLEAR:Ljava/lang/String; = "cancel_revert_clear"

.field public static final KEY_CHANGE_FEATURE:Ljava/lang/String; = "change_feature"

.field public static final KEY_CLEAR_WITH_BLOCKING:Ljava/lang/String; = "clear_with_blocking"

.field public static final KEY_CLOUD_AVAILABLE:Ljava/lang/String; = "cloud_available"

.field public static final KEY_CLOUD_VENDOR:Ljava/lang/String; = "cloud_vendor"

.field public static final KEY_CLOUD_VENDOR_AVAILABLE:Ljava/lang/String; = "cloud_vendor_available"

.field public static final KEY_COPY_MOVE_WITH_BLOCKING:Ljava/lang/String; = "copy_move_with_blocking"

.field public static final KEY_COPY_MOVE_WITH_NONE_BLOCKING:Ljava/lang/String; = "copy_move_with_none_blocking"

.field public static final KEY_DELETE_ALBUM:Ljava/lang/String; = "delete_with_bucket_id"

.field public static final KEY_DELETE_EVENT:Ljava/lang/String; = "delete_event"

.field public static final KEY_DELETE_WITH_BLOCKING:Ljava/lang/String; = "delete_with_blocking"

.field public static final KEY_DESTINATION_PATH:Ljava/lang/String; = "destination_path"

.field public static final KEY_DISABLE_SYNC_TO_SERVER:Ljava/lang/String; = "disable_sync_to_server"

.field public static final KEY_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final KEY_DOWNLOAD_MEDIA_CACHE:Ljava/lang/String; = "download_media_cache"

.field public static final KEY_DOWNLOAD_ORIGINAL:Ljava/lang/String; = "download_original"

.field public static final KEY_DOWNLOAD_PATH:Ljava/lang/String; = "download_path"

.field public static final KEY_DO_INIT:Ljava/lang/String; = "do_init"

.field public static final KEY_DO_MEDIA_SCAN:Ljava/lang/String; = "do_media_scan"

.field public static final KEY_EMPTY_TRASH_WITH_BLOCKING:Ljava/lang/String; = "empty_trash_with_blocking"

.field public static final KEY_EXCEPTION:Ljava/lang/String; = "exception"

.field public static final KEY_FAVORITE:Ljava/lang/String; = "favorite"

.field public static final KEY_FILE_KEY:Ljava/lang/String; = "filekey"

.field public static final KEY_FILE_KEYS:Ljava/lang/String; = "filekeys"

.field public static final KEY_GETDOWNLOAD_URL:Ljava/lang/String; = "get_download_URL"

.field public static final KEY_GETSTREAMING_URL:Ljava/lang/String; = "get_streaming_URL"

.field public static final KEY_GETTHUMBNAIL:Ljava/lang/String; = "get_thumbnail"

.field public static final KEY_GET_ALL_CLOUD_SETTINGS_VALUES:Ljava/lang/String; = "get_all_cloud_settings_values"

.field public static final KEY_GET_AUTH_INFO1:Ljava/lang/String; = "get_auth_info_1"

.field public static final KEY_GET_AUTH_INFO2:Ljava/lang/String; = "get_auth_info_2"

.field public static final KEY_GET_AUTH_INFO3:Ljava/lang/String; = "get_auth_info_3"

.field public static final KEY_GET_AUTH_INFO4:Ljava/lang/String; = "get_auth_info_4"

.field public static final KEY_GET_CACHE:Ljava/lang/String; = "get_cache_by_threadpool"

.field public static final KEY_GET_CLOUD_GALLERY_BUCKET_LIST:Ljava/lang/String; = "get_cloud_gallery_sync_off_bucket_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_GET_CLOUD_GALLERY_BUCKET_LIST_IN_SDCARD:Ljava/lang/String; = "get_cloud_gallery_sync_off_bucket_list_in_sdcard"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_GET_CLOUD_GALLERY_SYNC_OFF_BUCKET_LIST:Ljava/lang/String; = "get_cloud_gallery_sync_off_bucket_list"

.field public static final KEY_GET_CLOUD_GALLERY_SYNC_OFF_BUCKET_LIST_IN_SDCARD:Ljava/lang/String; = "get_cloud_gallery_sync_off_bucket_list_in_sdcard"

.field public static final KEY_GET_CLOUD_SETTINGS_VALUE:Ljava/lang/String; = "get_cloud_settings_value"

.field public static final KEY_GET_GALLERY_BUCKET_LIST:Ljava/lang/String; = "get_gallery_bucket_list"

.field public static final KEY_GET_GALLERY_BUCKET_LIST_IN_SDCARD:Ljava/lang/String; = "get_gallery_bucket_list_in_sdcard"

.field public static final KEY_GET_LOCAL_PATH:Ljava/lang/String; = "get_local_path"

.field public static final KEY_GET_PROGRESSIVE_DOWNLOAD_URL:Ljava/lang/String; = "get_progressive_download_URL"

.field public static final KEY_GROUP_ID:Ljava/lang/String; = "group_id"

.field public static final KEY_HIDE_WITH_BLOCKING:Ljava/lang/String; = "hide_with_blocking"

.field public static final KEY_IMAGE_SIZE:Ljava/lang/String; = "image_size"

.field public static final KEY_IS_DISABLED_CONTENT_SYNC:Ljava/lang/String; = "is_disabled_content_sync"

.field public static final KEY_IS_EXIST_SDCARD:Ljava/lang/String; = "is_exist_sdcard"

.field public static final KEY_IS_FORCE_CLEAR:Ljava/lang/String; = "is_force_clear"

.field public static final KEY_IS_IGNORE_POLICY:Ljava/lang/String; = "is_ignore_policy"

.field public static final KEY_IS_SRC_FILE_DELETE:Ljava/lang/String; = "is_src_file_delete"

.field public static final KEY_IS_SYNC_OFF_BUCKET:Ljava/lang/String; = "is_sync_off_bucket"

.field public static final KEY_IS_SYNC_ON:Ljava/lang/String; = "is_sync_on"

.field public static final KEY_IS_SYNC_PAUSE:Ljava/lang/String; = "is_sync_pause"

.field public static final KEY_LATITUDE:Ljava/lang/String; = "latitude"

.field public static final KEY_LOCAL_PATH:Ljava/lang/String; = "localpath"

.field public static final KEY_LONGITUDE:Ljava/lang/String; = "longitude"

.field public static final KEY_MAKE_AVAILABLE_OFFLINE:Ljava/lang/String; = "make_available_offline"

.field public static final KEY_NOTIFY_SIGNIN:Ljava/lang/String; = "notify_sign_in"

.field public static final KEY_NOTIFY_SIGNOUT:Ljava/lang/String; = "notify_sign_out"

.field public static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final KEY_PHOTOKEY:Ljava/lang/String; = "photokey"

.field public static final KEY_PIN_NUMBER:Ljava/lang/String; = "pin_number"

.field public static final KEY_PREFETCH:Ljava/lang/String; = "prefetch"

.field public static final KEY_PREFETCH_WITH_BLOCKING:Ljava/lang/String; = "prefetch_with_blocking"

.field public static final KEY_REVERT_AVAILABLE_OFFLINE:Ljava/lang/String; = "revert_available_offline"

.field public static final KEY_REVERT_DELETE_WITH_BLOCKING:Ljava/lang/String; = "revert_delete_with_blocking"

.field public static final KEY_SET_AUTH:Ljava/lang/String; = "set_auth"

.field public static final KEY_SET_CLOUD_GALLERY_BUCKET_LIST:Ljava/lang/String; = "set_cloud_gallery_sync_off_bucket_list"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_SET_CLOUD_GALLERY_BUCKET_LIST_IN_SDCARD:Ljava/lang/String; = "set_cloud_gallery_sync_off_bucket_list_in_sdcard"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_SET_CLOUD_GALLERY_SYNC_OFF_BUCKET_LIST:Ljava/lang/String; = "set_cloud_gallery_sync_off_bucket_list"

.field public static final KEY_SET_CLOUD_GALLERY_SYNC_OFF_BUCKET_LIST_IN_SDCARD:Ljava/lang/String; = "set_cloud_gallery_sync_off_bucket_list_in_sdcard"

.field public static final KEY_SET_CLOUD_SETTINGS_VALUE:Ljava/lang/String; = "set_cloud_settings_value"

.field public static final KEY_SET_EXIF_WITH_BLOCKING:Ljava/lang/String; = "set_exif_with_blocking"

.field public static final KEY_SET_FAVORITE_WITH_BLOCKING:Ljava/lang/String; = "set_favorite_with_blocking"

.field public static final KEY_SHARE_FILES:Ljava/lang/String; = "get_share_FILES"

.field public static final KEY_SHARE_FILES_WITH_BLOCKING:Ljava/lang/String; = "get_share_FILES_with_blocking"

.field public static final KEY_SHARE_URL:Ljava/lang/String; = "get_share_URL"

.field public static final KEY_SHARE_URL_WITH_BLOCKING:Ljava/lang/String; = "get_share_URL_with_blocking"

.field public static final KEY_SYNC:Ljava/lang/String; = "sync"

.field public static final KEY_SYNC_NOW_CALLED_UI:Ljava/lang/String; = "sync_now_called_UI"

.field public static final KEY_SYNC_NOW_GOING:Ljava/lang/String; = "sync_now_going"

.field public static final KEY_SYNC_NOW_STATE:Ljava/lang/String; = "sync_now_state"

.field public static final KEY_SYNC_PAUSE:Ljava/lang/String; = "sync_pause"

.field public static final KEY_UNHIDE_WITH_BLOCKING:Ljava/lang/String; = "unhide_with_blocking"

.field public static final KEY_URL:Ljava/lang/String; = "url"

.field public static final KEY_WITH_UI:Ljava/lang/String; = "with_ui"

.field public static final LOCAL_DELETED:Ljava/lang/String; = "localDeleted"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelCopyMove(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "cancel_copy_move"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "CANCEL_REVERT_CLEAR_RESULT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static cancelRevertClear(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "cancel_revert_clear"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const-string v1, "CANCEL_REVERT_CLEAR_RESULT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public static clearFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "clear_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v3, 0xc8

    :goto_0
    return v3

    :cond_0
    const-string v3, "CLEAR_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static copyFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "filekeys"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "destination_path"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_src_file_delete"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "copy_move_with_blocking"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v4, 0xc8

    :goto_0
    return v4

    :cond_0
    const-string v4, "COPY_MOVE_RESULT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static deleteAlbum(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bucket_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "delete_with_bucket_id"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "DELETE_ALBUM_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static deleteByGroupID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "group_id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "bucket_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "delete_with_bucket_id"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "DELETE_ALBUM_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static deleteFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "delete_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "DELETE_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public static deleteFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_force_clear"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "delete_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "DELETE_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public static disableSyncToServer(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "disable_sync_to_server"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const-string v1, "RESULT_SYNC_DISABLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static doInit(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "do_init"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static download(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "exception"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    throw v2

    :cond_0
    return-void
.end method

.method public static downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekey"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "image_size"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "download_media_cache"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "DOWNLOADED_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekey"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "image_size"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "is_ignore_policy"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "download_media_cache"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "DOWNLOADED_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static downloadOriginalFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadOriginalFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static downloadOriginalFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadOriginalFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static downloadOriginalFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;ZZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "download_path"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "with_ui"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "do_media_scan"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "download_original"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "DOWNLOAD_FILE_URI_LIST"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static emptyTrashWithBlocking(Landroid/content/Context;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "empty_trash_with_blocking"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v1, 0xc8

    :goto_0
    return v1

    :cond_0
    const-string v1, "EMPTY_TRASH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static eventSync(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "call_update_local"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getAllCloudSettingsValues(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_all_cloud_settings_values"

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v1, v2

    :cond_0
    return-object v1
.end method

.method public static getCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekey"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_cache_by_threadpool"

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "DOWNLOADED_PATH"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCloudSettingsValue(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_cloud_settings_value"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getCloudVendorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "cloud_vendor"

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cloud_vendor"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getDownloadURL(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_download_URL"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v4, "DOWNLOAD_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    throw v4

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static getGalleryBucketList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_gallery_bucket_list"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bucketlist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getGalleryBucketListInSdCard(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_gallery_bucket_list_in_sdcard"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bucketlist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLocalpath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_local_path"

    invoke-virtual {v3, v4, v5, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v3, "localpath"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getProgressiveDownloadURL(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_progressive_download_URL"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v4, "PROGRESSIVE_DOWNLOAD_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    throw v4

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static getSharedFile(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "filekeys"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "get_share_FILES"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getSharedFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "filekeys"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_share_FILES_with_blocking"

    invoke-virtual {v4, v5, v6, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "SHARE_URI_LIST"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method public static getSharedURL(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "filekeys"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "get_share_URL"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static getSharedURLWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "get_share_URL_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method public static getStreamingURL(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_streaming_URL"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v4, "STREAMING_URL"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    throw v4

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static getSyncOffCloudBucketList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_cloud_gallery_sync_off_bucket_list"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bucketlist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getSyncOffCloudBucketListInSdCard(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "get_cloud_gallery_sync_off_bucket_list_in_sdcard"

    invoke-virtual {v2, v3, v4, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bucketlist"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "get_thumbnail"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "ThumbnailBitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hideFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "hide_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "CLEAR_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method

.method public static isCloudAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "cloud_available"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cloudAvailable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCloudVendorAvailable(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "cloud_vendor_available"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "cloud_vendor_available"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDisabledContentSync(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "is_disabled_content_sync"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isDisabledContentSync"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isExistSdCard(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "is_exist_sdcard"

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isExistSdCard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSyncNowGoing(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "sync_now_going"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "isSynNowGoing"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isSyncOffBucket(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "bucket_path"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "is_sync_off_bucket"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "IS_SYNC_OFF_BUCKET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSyncOn(Landroid/content/Context;I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "is_sync_on"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "isSyncOn"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeAvailableOffline(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "make_available_offline"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static moveFileWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "filekeys"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "destination_path"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_src_file_delete"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "copy_move_with_blocking"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v4, 0xc8

    :goto_0
    return v4

    :cond_0
    const-string v4, "COPY_MOVE_RESULT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static moveFileWithNoneBlocking(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "filekeys"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "destination_path"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "is_src_file_delete"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "copy_move_with_none_blocking"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    const/16 v4, 0xc8

    :goto_0
    return v4

    :cond_0
    const-string v4, "COPY_MOVE_RESULT"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static notifySignInEvent(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "notify_sign_in"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static notifySignOutEvent(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "notify_sign_out"

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static prefetch(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prefetch"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static prefetchWithBlocking(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/scloud/cloudagent/exception/CloudException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "prefetch_with_blocking"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v4, "CACHED_PATH"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const-string v4, "exception"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/samsung/android/scloud/cloudagent/CloudStore$CloudSerializable;->o:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;

    throw v4

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public static revertAvailableOffline(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "revert_available_offline"

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static revertFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "revert_delete_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v3, 0xc8

    :goto_0
    return v3

    :cond_0
    const-string v3, "REVERT_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static setAuthData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v1, "CloudStore"

    const-string v2, "CloudStore:setAuthData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "get_auth_info_1"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get_auth_info_2"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get_auth_info_3"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "get_auth_info_4"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "synctype"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "set_auth"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setCloudSettingsValue(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "set_cloud_settings_value"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "RESULT_SYNC_ENABLE"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setFavoriteWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "photokey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "localpath"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "favorite"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "set_favorite_with_blocking"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "FAVORITE_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static setLocationWithBlocking(Landroid/content/Context;Ljava/lang/String;DD)Z
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekey"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "latitude"

    invoke-virtual {v0, v3, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v3, "longitude"

    invoke-virtual {v0, v3, p4, p5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "set_exif_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SET_EXIF_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static setOrientationWithBlocking(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekey"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "orientation"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "set_exif_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SET_EXIF_RESULT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

.method public static setSyncOffCloudBucketList(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bucketlist"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "set_cloud_gallery_sync_off_bucket_list"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setSyncOffCloudBucketListInSdCard(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "bucketlist"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "set_cloud_gallery_sync_off_bucket_list_in_sdcard"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static varargs sync(Landroid/content/Context;[Ljava/lang/Object;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-eqz v2, :cond_1

    aget-object v2, p1, v3

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    aget-object v2, p1, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "sync_now_called_UI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "sync"

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "sync"

    invoke-virtual {v2, v3, v4, v5, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static syncPause(Landroid/content/Context;Z)Z
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "is_sync_pause"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "sync_pause"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    return v2
.end method

.method public static unHideFilesWithBlocking(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/scloud/cloudagent/CloudStore;->parseListAsString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "filekeys"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Files;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "unhide_with_blocking"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const-string v3, "CLEAR_RESULT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
