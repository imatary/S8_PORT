.class public Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;
.super Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;
.source "CloudMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet$IFilesColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.cmh"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CLOUD_FILE_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_FILE_STATUS_FAVORITE:I = 0x4

.field private static final CLOUD_FILE_STATUS_NORMAL:I = 0x0

.field private static final CLOUD_IMAGE_PROJECTION:[Ljava/lang/String;

.field private static final CLOUD_VIDEO_PROJECTION:[Ljava/lang/String;

.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static final FAKE_LOADING_COUNT:I = 0x32

.field private static final FILES_TABLE_NAME:Ljava/lang/String; = "files"

.field private static final FILE_CONTENT_URI:Landroid/net/Uri;

.field private static final IMAGES_TABLE_NAME:Ljava/lang/String; = "images"

.field private static final IMAGE_CONTENT_URI:Landroid/net/Uri;

.field private static final INDEX_CLOUD_ID:I = 0x1

.field private static final INDEX_CLOUD_IS_AVAILABLE_THUMB:I = 0x9

.field private static final INDEX_CLOUD_THUMB_PATH:I = 0x3

.field private static final INDEX_DATA:I = 0x2

.field private static final INDEX_DATE_MODIFIED:I = 0x5

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_IS_CLOUD:I = 0x8

.field private static final INDEX_MEDIA_TYPE:I = 0xb

.field private static final INDEX_MIME_TYPE:I = 0x7

.field private static final INDEX_ORIENTATION:I = 0xa

.field private static final INDEX_SIZE:I = 0x4

.field private static final INDEX_TITLE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RCL_CloudMediaSet"

.field private static final VIDEO_CONTENT_URI:Landroid/net/Uri;

.field private static final VIDEO_TABLE_NAME:Ljava/lang/String; = "video"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "content://com.samsung.cmh"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "files"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->FILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "images"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->IMAGE_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "video"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->VIDEO_CONTENT_URI:Landroid/net/Uri;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "media_id"

    aput-object v1, v0, v3

    const-string v1, "cloud_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "cloud_thumb_path"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cloud_is_available_thumb"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "media_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->CLOUD_FILE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "media_id"

    aput-object v1, v0, v3

    const-string v1, "cloud_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "cloud_thumb_path"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cloud_is_available_thumb"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->CLOUD_IMAGE_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "media_id"

    aput-object v1, v0, v3

    const-string v1, "cloud_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "cloud_thumb_path"

    aput-object v1, v0, v6

    const-string v1, "_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "is_cloud"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "cloud_is_available_thumb"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->CLOUD_VIDEO_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "count(*)"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->COUNT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CrossMediaSet;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static getTotalItemCount(Landroid/content/Context;I)I
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, " (file_status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, " or file_status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->IMAGE_CONTENT_URI:Landroid/net/Uri;

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    :goto_1
    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->VIDEO_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->FILE_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :cond_4
    if-eqz v6, :cond_5

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    move v0, v9

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v0, "RCL_CloudMediaSet"

    const-string v2, "fail to close"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v7

    :try_start_2
    const-string v0, "RCL_CloudMediaSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get total item count fail"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v8

    const-string v0, "RCL_CloudMediaSet"

    const-string v2, "fail to close"

    invoke-static {v0, v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v8

    const-string v2, "RCL_CloudMediaSet"

    const-string v4, "fail to close"

    invoke-static {v2, v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private loadAllData(Z)V
    .locals 25

    sget-object v3, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->FILE_CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v7, "0,50"

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_0
    const/4 v10, 0x0

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->CLOUD_FILE_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " (file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " or file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " and ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "media_type"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " or "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "media_type"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, "="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, "datetaken desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const/16 v7, 0x10

    move/from16 v0, v16

    invoke-static {v2, v6, v7, v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem$MediaItemFactory;->getInstance(Landroid/content/Context;III)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    move-result-object v18

    :goto_0
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setMediaId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setCloudId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setFilePath(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setThumbFilePath(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setFileSize(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setDateModified(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setTitle(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setMimeType(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setOrientation(I)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setIsCloud(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setCloudIsAvailableThumb(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mMediaItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_1
    return-void

    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    const/16 v7, 0x10

    move/from16 v0, v16

    invoke-static {v2, v6, v7, v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem$MediaItemFactory;->getInstance(Landroid/content/Context;III)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v18

    goto :goto_0

    :catch_0
    move-exception v22

    const-string v2, "RCL_CloudMediaSet"

    const-string v6, "fail to close"

    move-object/from16 v0, v22

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v11

    :try_start_3
    const-string v2, "RCL_CloudMediaSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load all date fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_4

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v22

    const-string v2, "RCL_CloudMediaSet"

    const-string v6, "fail to close"

    move-object/from16 v0, v22

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_2
    throw v2

    :catch_3
    move-exception v22

    const-string v6, "RCL_CloudMediaSet"

    const-string v7, "fail to close"

    move-object/from16 v0, v22

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadImageData(Z)V
    .locals 24

    sget-object v3, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->IMAGE_CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v7, "0,50"

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_0
    const/4 v10, 0x0

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->CLOUD_IMAGE_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " (file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " or file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, "datetaken desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    const/16 v7, 0x10

    move/from16 v0, v16

    invoke-static {v2, v6, v7, v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem$MediaItemFactory;->getInstance(Landroid/content/Context;III)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setMediaId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setCloudId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setFilePath(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setThumbFilePath(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setFileSize(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setDateModified(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setMimeType(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setOrientation(I)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setIsCloud(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setCloudIsAvailableThumb(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mMediaItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v21

    const-string v2, "RCL_CloudMediaSet"

    const-string v6, "fail to close"

    move-object/from16 v0, v21

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v11

    :try_start_2
    const-string v2, "RCL_CloudMediaSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load all date fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_4

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v21

    const-string v2, "RCL_CloudMediaSet"

    const-string v6, "fail to close"

    move-object/from16 v0, v21

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_1
    throw v2

    :catch_3
    move-exception v21

    const-string v6, "RCL_CloudMediaSet"

    const-string v7, "fail to close"

    move-object/from16 v0, v21

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private loadVideoData(Z)V
    .locals 23

    sget-object v3, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->VIDEO_CONTENT_URI:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v6, "limit"

    const-string v7, "0,50"

    invoke-virtual {v2, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    :cond_0
    const/4 v10, 0x0

    sget-object v4, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->CLOUD_VIDEO_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, " (file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, " or file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const-string v7, "datetaken desc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mContext:Landroid/content/Context;

    const/4 v6, 0x2

    const/16 v7, 0x10

    move/from16 v0, v16

    invoke-static {v2, v6, v7, v0}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem$MediaItemFactory;->getInstance(Landroid/content/Context;III)Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;

    move-result-object v18

    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setMediaId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setCloudId(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setFilePath(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setThumbFilePath(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setFileSize(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setDateModified(J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setMimeType(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setOrientation(I)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setIsCloud(I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaitem/CrossMediaItem;->setCloudIsAvailableThumb(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mMediaItemList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    if-eqz v10, :cond_4

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v20

    const-string v2, "RCL_CloudMediaSet"

    const-string v6, "fail to close"

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v11

    :try_start_2
    const-string v2, "RCL_CloudMediaSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load all date fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_4

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v20

    const-string v2, "RCL_CloudMediaSet"

    const-string v6, "fail to close"

    move-object/from16 v0, v20

    invoke-static {v2, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_5

    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    :goto_1
    throw v2

    :catch_3
    move-exception v20

    const-string v6, "RCL_CloudMediaSet"

    const-string v7, "fail to close"

    move-object/from16 v0, v20

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public loadData(Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mMediaType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->loadImageData(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mMediaType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->loadVideoData(Z)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->mMediaType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/rcl/provider/data/mediaset/CloudMediaSet;->loadAllData(Z)V

    goto :goto_0
.end method
