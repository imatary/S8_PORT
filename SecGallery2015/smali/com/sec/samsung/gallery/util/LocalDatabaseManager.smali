.class public Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
.super Ljava/lang/Object;
.source "LocalDatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;
    }
.end annotation


# static fields
.field public static final ALBUM_CREATE_TIME_ENTRY:Ljava/lang/String; = "album_create_time"

.field public static final ALBUM_DISPLAY_INFO_TABLE:Ljava/lang/String; = "album_display_info_table"

.field private static final ALBUM_DISPLAY_INFO_TABLE_CREATE:Ljava/lang/String; = "album_display_info_table (_id INTEGER, bucketid_order TEXT);"

.field public static final ALBUM_EXTRA:Ljava/lang/String; = "album_extra"

.field public static final ALBUM_MORE:Ljava/lang/String; = "album_more"

.field private static final ALBUM_NAME_ENTRY:Ljava/lang/String; = "album_name"

.field public static final ALBUM_NEW_DISPLAY_TABLE:Ljava/lang/String; = "album_new_display_table"

.field private static final ALBUM_PHOTO_COVER_TABLE:Ljava/lang/String; = "album_photo_cover"

.field private static final ALBUM_PHOTO_COVER_TABLE_CREATE:Ljava/lang/String; = "album_photo_cover (bucket_id INTEGER UNIQUE, item_path TEXT);"

.field public static final ALBUM_SORT_ORDER:Ljava/lang/String; = "album_sort_order"

.field public static final ALBUM_SORT_TYPE:Ljava/lang/String; = "album_sort_type"

.field public static final BUCKET_IDS_ORDER:Ljava/lang/String; = "bucketid_order"

.field public static final BUCKET_ID_ENTRY:Ljava/lang/String; = "bucket_id"

.field public static final BURTSTSHOT_DOWNLOAD_TABLE:Ljava/lang/String; = "burstshot_download"

.field private static final BURTSTSHOT_DOWNLOAD_TABLE_CREATE:Ljava/lang/String; = "burstshot_download (group_id INTEGER UNIQUE, _size INTEGER, item_path TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "local.db"

.field private static final DATABASE_VERSION:I = 0xb

.field public static final DATA_ENTRY:Ljava/lang/String; = "_data"

.field private static final DATE_ADDED_ENTRY:Ljava/lang/String; = "date_added"

.field private static final DATE_MODIFIED_ENTRY:Ljava/lang/String; = "date_modified"

.field public static final DATE_TAKEN_ENTRY:Ljava/lang/String; = "datetaken"

.field private static final DURATION_ENTRY:Ljava/lang/String; = "duration"

.field public static final EVENT_ALBUM_URI:Landroid/net/Uri;

.field public static final EVENT_CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.com.sec.android.gallery3d.provider.event"

.field public static final EVENT_EXTRA_OBJECT:Ljava/lang/String; = "event_extra_object"

.field public static final EVENT_ID:Ljava/lang/String; = "event_id"

.field public static final EVENT_NAME:Ljava/lang/String; = "event_name"

.field public static final EVENT_REQUEST:Ljava/lang/String; = "event_request"

.field public static final EVENT_REQUEST_STATE:Ljava/lang/String; = "event_request_state"

.field public static final EVENT_RUNNING_TYPE:Ljava/lang/String; = "event_running_type"

.field public static final EVENT_SHARE_ID:Ljava/lang/String; = "event_share_id"

.field public static final EVENT_SHARE_OPERATION_TABLE:Ljava/lang/String; = "event_share_operation"

.field private static final EVENT_SHARE_OPERATION_TABLE_CREATE:Ljava/lang/String; = "event_share_operation (event_id INTEGER UNIQUE, event_ugci TEXT, event_name TEXT, event_type INTEGER, event_state TEXT, event_request INTEGER, event_request_state INTEGER, event_running_type INTEGER, event_share_id INTEGER, event_extra_object OBJECT);"

.field public static final EVENT_SHARE_OPERATION_URI:Landroid/net/Uri;

.field public static final EVENT_STATE:Ljava/lang/String; = "event_state"

.field public static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final EVENT_UGCI:Ljava/lang/String; = "event_ugci"

.field private static final FACES_RECT_ENTRY:Ljava/lang/String; = "faces_rect"

.field public static final FAKE_ALBUM_DISPLAY_INFO_TABLE:Ljava/lang/String; = "fake_album_display_info_table"

.field private static final FAKE_ALBUM_DISPLAY_INFO_TABLE_CREATE:Ljava/lang/String; = "fake_album_display_info_table (_id INTEGER, bucketid_order TEXT);"

.field public static final FAVORITE_ENTRY:Ljava/lang/String; = "is_favorite"

.field public static final GROUP_ID_ENTRY:Ljava/lang/String; = "group_id"

.field private static final HEIGHT_ENTRY:Ljava/lang/String; = "height"

.field private static final HIDDEN_ALBUM_ENTRY:Ljava/lang/String; = "hidden_album"

.field private static final HIDDEN_ALBUM_INFO_TABLE:Ljava/lang/String; = "hidden_album_info"

.field private static final HIDDEN_ALBUM_INFO_TABLE_CREATE:Ljava/lang/String; = "hidden_album_info (bucket_id INTEGER UNIQUE);"

.field private static final HIDDEN_ALBUM_URI:Landroid/net/Uri;

.field public static final HIGHLIGHT_VIDEO_STATUS_ENTRY:Ljava/lang/String; = "highlight_video_status"

.field public static final HV_NOT_READY:I = 0x0

.field public static final HV_NOT_VALID:I = -0x1

.field public static final HV_VALID:I = 0x1

.field public static final ID_ENTRY:Ljava/lang/String; = "_id"

.field public static final IMAGES_HIDDEN_ALBUM_TABLE:Ljava/lang/String; = "images_hidden_album"

.field private static final IMAGES_HIDDEN_ALBUM_TABLE_CREATE:Ljava/lang/String; = "images_hidden_album (_id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT UNIQUE, orientation INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, group_id INTEGER, spherical_mosaic INTEGER, sef_file_type INTEGER, album_name TEXT, hidden_album TEXT, source_album TEXT, faces_rect BLOB );"

.field public static final IMAGE_EVENT_ALBUM_TABLE:Ljava/lang/String; = "images_event_album"

.field private static final IMAGE_EVENT_ALBUM_TABLE_CREATE:Ljava/lang/String; = "images_event_album (pkey INTEGER UNIQUE, _id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT, orientation INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, group_id INTEGER, spherical_mosaic INTEGER, sef_file_type INTEGER, sef_file_sub_type INTEGER, bucket_display_name TEXT, suggestion INTEGER, suggested_event INTEGER, album_create_time INTEGER, is_favorite INTEGER, highlight_video_status INTEGER DEFAULT 0, is_drm INTEGER);"

.field public static final IS_360_VIDEO:Ljava/lang/String; = "is_360_video"

.field public static final IS_DRM_ENTRY:Ljava/lang/String; = "is_drm"

.field public static final ITEM_PATH:Ljava/lang/String; = "item_path"

.field public static final LATITUDE_ENTRY:Ljava/lang/String; = "latitude"

.field public static final LOCALITY_ENTRY:Ljava/lang/String; = "locality"

.field public static final LONGITUDE_ENTRY:Ljava/lang/String; = "longitude"

.field public static final MIME_TYPE_ENTRY:Ljava/lang/String; = "mime_type"

.field private static final MORE_ALBUM_INFO_TABLE_CREATE:Ljava/lang/String; = "album_new_display_table (_id INTEGER, bucket_id INTEGER UNIQUE, _data TEXT, bucket_display_name TEXT, album_more INTEGER, album_extra REAL, album_sort_type INTEGER, album_sort_order INTEGER);"

.field private static final ORIENTATION_ENTRY:Ljava/lang/String; = "orientation"

.field public static final PKEY:Ljava/lang/String; = "pkey"

.field private static final RECORDING_MODE:Ljava/lang/String; = "recording_mode"

.field private static final RESOLUTION_ENTRY:Ljava/lang/String; = "resolution"

.field public static final SEARCH_HISTORY_TABLE:Ljava/lang/String; = "search_history"

.field private static final SEARCH_HISTORY_TABLE_CREATE:Ljava/lang/String; = "search_history (title TEXT UNIQUE NOT NULL, date_added INTEGER);"

.field private static final SEARCH_HISTORY_URI:Landroid/net/Uri;

.field private static final SEF_FILE_SUB_TYPE_ENTRY:Ljava/lang/String; = "sef_file_sub_type"

.field private static final SEF_FILE_TPYE_ENTRY:Ljava/lang/String; = "sef_file_type"

.field public static final SIZE_ENTRY:Ljava/lang/String; = "_size"

.field public static final SOURCE_DATA_ENTRY:Ljava/lang/String; = "source_album"

.field private static final SPHERICAL_MOSAIC_ENTRY:Ljava/lang/String; = "spherical_mosaic"

.field private static final SUGGESTED_ALBUM_URI:Landroid/net/Uri;

.field public static final SUGGESTED_EVENT:Ljava/lang/String; = "suggested_event"

.field public static final SUGGESTION_ENTRY:Ljava/lang/String; = "suggestion"

.field public static final SUGGEST_EVENT_INFO_TABLE:Ljava/lang/String; = "suggest_event_info"

.field private static final SUGGEST_EVENT_INFO_TABLE_CREATE:Ljava/lang/String; = "suggest_event_info (_id INTEGER, latitude REAL, longitude REAL, _data TEXT UNIQUE, datetaken INTEGER, locality TEXT, type INTEGER);"

.field private static final TAG:Ljava/lang/String; = "LocalDatabaseManager"

.field private static final TITLE_ENTRY:Ljava/lang/String; = "title"

.field public static final TYPE_ENTRY:Ljava/lang/String; = "type"

.field public static final VIDEO_EVENT_ALBUM_TABLE:Ljava/lang/String; = "video_event_album"

.field private static final VIDEO_EVENT_ALBUM_TABLE_CREATE:Ljava/lang/String; = "video_event_album (pkey INTEGER UNIQUE, _id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT, duration INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, resolution TEXT, is_360_video INTEGER, bucket_display_name TEXT, suggestion INTEGER, suggested_event INTEGER, album_create_time INTEGER, recording_mode INTEGER, is_favorite INTEGER, highlight_video_status INTEGER DEFAULT 0, is_drm INTEGER, video_view_mode INTEGER DEFAULT -1);"

.field private static final VIDEO_HIDDEN_ALBUM_TABLE:Ljava/lang/String; = "video_hidden_album"

.field private static final VIDEO_HIDDEN_ALBUM_TABLE_CREATE:Ljava/lang/String; = "video_hidden_album (_id INTEGER, title TEXT, mime_type TEXT, latitude REAL, longitude REAL, datetaken INTEGER, date_added INTEGER, date_modified INTEGER, _data TEXT UNIQUE, duration INTEGER, bucket_id INTEGER, _size INTEGER, width INTEGER, height INTEGER, album_name TEXT, hidden_album TEXT, source_album TEXT, resolution TEXT);"

.field private static final VIDEO_VIEW_MODE:Ljava/lang/String; = "video_view_mode"

.field private static final WIDTH_ENTRY:Ljava/lang/String; = "width"

.field private static sInstance:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;


# instance fields
.field private final mDatabaseOpenHelper:Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "hidden://hidden"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->HIDDEN_ALBUM_URI:Landroid/net/Uri;

    const-string/jumbo v0, "event://suggested"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->SUGGESTED_ALBUM_URI:Landroid/net/Uri;

    const-string/jumbo v0, "event://event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const-string/jumbo v0, "search://history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->SEARCH_HISTORY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "event://event_share"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_SHARE_OPERATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;

    invoke-direct {v2, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mDatabaseOpenHelper:Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "LocalDatabaseManager"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private deleteAlbumDisplayInfo(I)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "album_display_info_table"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private deleteFakeAlbumDisplayInfo(I)Z
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "fake_album_display_info_table"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
    .locals 2

    const-class v1, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->sInstance:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    sput-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->sInstance:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->sInstance:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mDatabaseOpenHelper:Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mDatabaseOpenHelper:Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager$LocalDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p6

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_0
    if-nez v8, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v2, "LocalDatabaseManager"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move-object v2, v8

    goto :goto_0
.end method

.method private updateDataBase(Ljava/lang/String;Ljava/lang/Integer;)Z
    .locals 13

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string/jumbo v5, "datetaken DESC, _id DESC"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "_data"

    aput-object v1, v2, v0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v0, "LocalDatabaseManager"

    const-string/jumbo v1, "cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    move v12, v11

    :goto_0
    return v12

    :cond_1
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, " OR "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v0, "_id"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    move v12, v11

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v0, "LocalDatabaseManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public addAlbumDisplayInfo(Ljava/lang/String;)Z
    .locals 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "bucketid_order"

    invoke-virtual {v4, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->deleteAlbumDisplayInfo(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "album_display_info_table"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "content://force_reload"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_2

    :goto_1
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v7, "LocalDatabaseManager"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1
.end method

.method public addBurstShotDownload(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    if-eqz p2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v2, p1, v4, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v4, "LocalDatabaseManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;Z)I

    move-result v0

    return v0
.end method

.method public addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;Z)I
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_2

    aget-object v5, p2, v4

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v6, p2, v4

    const/4 v7, 0x5

    invoke-virtual {v2, p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_4

    if-lez v0, :cond_4

    const-string/jumbo v5, "suggest_event_info"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->SUGGESTED_ALBUM_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v5, "LocalDatabaseManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public addFakeAlbumDisplayInfo(Ljava/lang/String;)Z
    .locals 8

    const/4 v5, 0x1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "_id"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "bucketid_order"

    invoke-virtual {v4, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->deleteFakeAlbumDisplayInfo(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "fake_album_display_info_table"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_1
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    :goto_1
    return v5

    :catch_0
    move-exception v1

    const-string/jumbo v6, "LocalDatabaseManager"

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public addNewAlbumDisplayInfo(Landroid/content/ContentValues;Z)Z
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string/jumbo v0, "bucket_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bucket_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "album_new_display_table"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "LocalDatabaseManager"

    const-string/jumbo v1, "cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v6, :cond_5

    const-string/jumbo v0, "album_more"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    const-string/jumbo v0, "album_new_display_table"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v10, v0

    :cond_2
    :goto_0
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "LocalDatabaseManager"

    const-string/jumbo v1, "no bucket id. can\'t update addNewAlbumDisplayInfo "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :cond_4
    :try_start_2
    const-string/jumbo v0, "album_new_display_table"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v10, v0

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "album_more"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz p2, :cond_2

    :cond_6
    const-string/jumbo v0, "album_new_display_table"

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    goto :goto_0

    :catch_0
    move-exception v9

    :try_start_3
    const-string/jumbo v0, "LocalDatabaseManager"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public addShareEvent(Landroid/content/ContentValues;)J
    .locals 10

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v6, "event_share_operation"

    const/4 v7, 0x0

    const/4 v8, 0x5

    invoke-virtual {v0, v6, v7, p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_SHARE_OPERATION_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-wide v4, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-wide/16 v2, -0x1

    :try_start_2
    const-string/jumbo v6, "LocalDatabaseManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public close()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_2

    const-string/jumbo v4, "hidden_album_info"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "images_hidden_album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "video_hidden_album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->HIDDEN_ALBUM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    if-lez v0, :cond_4

    const-string/jumbo v4, "suggest_event_info"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "images_event_album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "video_event_album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_4
    if-ltz v0, :cond_5

    const-string/jumbo v4, "search_history"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->SEARCH_HISTORY_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5
    if-lez v0, :cond_6

    const-string/jumbo v4, "event_share_operation"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_SHARE_OPERATION_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "operation"

    const-string/jumbo v6, "delete"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "LocalDatabaseManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteHistory(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "search_history"

    const-string/jumbo v5, "title=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->SEARCH_HISTORY_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "LocalDatabaseManager"

    const-string/jumbo v3, "SQLiteException thrown when deleting history"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_3
    :goto_2
    :try_start_7
    throw v2

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v2

    goto :goto_1
.end method

.method public getBurstshotDownlod(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "select item_path,_size from burstshot_download where group_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v5, "LocalDatabaseManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v4, v0

    goto :goto_0
.end method

.method public getEvent(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_2

    const-string/jumbo v5, "select _id, bucket_id, bucket_display_name from video_event_album union select _id, bucket_id, bucket_display_name from images_event_album"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "select _id, bucket_id, bucket_display_name from video_event_album"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " where "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " union "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "select _id, bucket_id, bucket_display_name from images_event_album"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " where "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v4, v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v5, "LocalDatabaseManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method public getEventMediaItems(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "select _id, bucket_display_name from video_event_album where bucket_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " union select _id, bucket_display_name from images_event_album where bucket_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v5, v1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const-string/jumbo v6, "LocalDatabaseManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v5
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v2, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    cmp-long v4, v2, v8

    if-ltz v4, :cond_2

    :try_start_2
    const-string/jumbo v4, "hidden_album_info"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "images_hidden_album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "video_hidden_album"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->HIDDEN_ALBUM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    cmp-long v4, v2, v8

    if-ltz v4, :cond_3

    const-string/jumbo v4, "search_history"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->SEARCH_HISTORY_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    return-wide v2

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "LocalDatabaseManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertNDeleteNewAlbumDisplayInfo(ILandroid/content/ContentValues;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, -0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bucket_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "album_new_display_table"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "_data"

    aput-object v4, v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string/jumbo v0, "LocalDatabaseManager"

    const-string/jumbo v1, "cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v9, :cond_1

    const-string/jumbo v0, "album_new_display_table"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v0, "album_more"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "album_new_display_table"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    :cond_2
    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v8

    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-lez v0, :cond_1

    const-string/jumbo v3, "hidden_album_info"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->HIDDEN_ALBUM_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "LocalDatabaseManager"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDataBase(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->updateDataBase(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public updateEventInfo(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, p1, v5, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v5, "LocalDatabaseManager"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
