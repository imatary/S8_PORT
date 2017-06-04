.class public Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "UriMediaMMSAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageTimedState;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ImType;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageBoxType;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeFTState;,
        Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FtColumn;
    }
.end annotation


# static fields
.field private static final FT:Ljava/lang/String; = "ft"

.field private static final MMS:Ljava/lang/String; = "mms"

.field public static final SET_PATH:Ljava/lang/String; = "/uri/mediaset/thread"

.field private static final TAG:Ljava/lang/String; = "UriMediaMMSAlbumSet"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mDownloadCompleteNoti:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierFTDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mNotifierMMSDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mThreadId:Ljava/lang/String;

.field private final sTimelineEntryComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDownloadCompleteNoti:Z

    new-instance v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;-><init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->sTimelineEntryComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mThreadId:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->EnableFreeMessage:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const-string/jumbo v1, "content://im_ft"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const-string/jumbo v1, "content://im/ft"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifierFTDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const-string/jumbo v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifierMMSDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    goto :goto_0
.end method

.method private getFileData([J)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    return-object v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "_id = ? AND (content_type like \'image/%\' OR content_type like \'video/%\')"

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const-string/jumbo v7, "_id DESC"

    const/4 v3, 0x7

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v8, "_id"

    aput-object v8, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v8, "content_type"

    aput-object v8, v4, v3

    const/4 v3, 0x2

    const-string/jumbo v8, "file_path"

    aput-object v8, v4, v3

    const/4 v3, 0x3

    const-string/jumbo v8, "thumbnail_path"

    aput-object v8, v4, v3

    const/4 v3, 0x4

    const-string/jumbo v8, "date"

    aput-object v8, v4, v3

    const/4 v3, 0x5

    const-string/jumbo v8, "status"

    aput-object v8, v4, v3

    const/4 v3, 0x6

    const-string/jumbo v8, "type"

    aput-object v8, v4, v3

    const/4 v9, 0x0

    move-object/from16 v0, p1

    array-length v15, v0

    const/4 v3, 0x0

    move v14, v3

    :goto_0
    if-ge v14, v15, :cond_0

    aget-wide v12, p1, v14

    const/4 v3, 0x0

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v3

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v8, "UriMediaMMSAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_6

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;

    const/4 v3, 0x0

    invoke-direct {v10, v3}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;-><init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;)V

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->partId:J

    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mediaType:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->filePath:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->thumbnailPath:Ljava/lang/String;

    iget-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->thumbnailPath:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->filePath:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->filePath:Ljava/lang/String;

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->thumbnailPath:Ljava/lang/String;

    sget-object v3, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->URI_FILE:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mThumbUri:Landroid/net/Uri;

    :cond_2
    :goto_2
    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->date:J

    const/4 v3, 0x5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v18, 0x1

    cmp-long v3, v16, v18

    if-eqz v3, :cond_3

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->status:J

    :cond_3
    const-string/jumbo v3, "ft"

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->messageType:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    :cond_5
    :try_start_1
    iget-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->thumbnailPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->URI_THUMBNAIL:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mThumbUri:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_7
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto/16 :goto_0
.end method

.method private getFtIds(J)[J
    .locals 23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "_id"

    aput-object v6, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "date"

    aput-object v6, v4, v3

    const/4 v3, 0x2

    const-string/jumbo v6, "content_type"

    aput-object v6, v4, v3

    const-string/jumbo v7, "date DESC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(thread_id = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v16, "(service_type!=2)"

    const-string/jumbo v10, "(service_type = 0 and status != 10)"

    const-string/jumbo v15, "(service_type = 1 and (type = 2 or (type = 1 and status = 3)))"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " or "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v18, "(display_notification_status not in (20, 21, 22, 23))"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " and "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$FreeMessageFT;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string/jumbo v8, "UriMediaMMSAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    new-array v11, v3, [J

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v12, v13, 0x1

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    aput-wide v20, v11, v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v12

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v11

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3
.end method

.method private getMmsIds(J)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://mms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "date"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "date DESC"

    const-string/jumbo v6, "UriMediaMMSAlbumSet"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v8, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;-><init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;)V

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    # setter for: Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->id:J
    invoke-static {v8, v0, v1}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->access$202(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;J)J

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    # setter for: Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->date:J
    invoke-static {v8, v0, v1}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->access$302(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;J)J

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v9
.end method

.method private getPartData(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v8}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v8, "content://mms/part"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v5, "mid = ? AND (ct like \'image/%\' OR ct like \'video/%\' OR ct like \'application/vnd.oma.drm.content\')"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const-string/jumbo v7, "_id ASC"

    const/4 v8, 0x2

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v13, "_id"

    aput-object v13, v4, v8

    const/4 v8, 0x1

    const-string/jumbo v13, "ct"

    aput-object v13, v4, v8

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;

    const/4 v8, 0x0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->getId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v8

    :try_start_0
    const-string/jumbo v8, "UriMediaMMSAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;

    const/4 v8, 0x0

    invoke-direct {v10, v8}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;-><init>(Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$1;)V

    const/4 v8, 0x0

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->partId:J

    const/4 v8, 0x1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mediaType:Ljava/lang/String;

    const-string/jumbo v8, "mms"

    iput-object v8, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->messageType:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$PduData;->getDate()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    iput-wide v14, v10, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->date:J

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v8

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v8

    :cond_2
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    return-object v12
.end method

.method private loadDataFromMMSAlbum()Ljava/util/ArrayList;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v18

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mThreadId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->getMmsIds(J)Ljava/util/ArrayList;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mThreadId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->getFtIds(J)[J

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->getPartData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->getFileData([J)Ljava/util/ArrayList;

    move-result-object v13

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->sTimelineEntryComparator:Ljava/util/Comparator;

    invoke-static {v10, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v24

    const-string/jumbo v5, "UriMediaMMSAlbumSet"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "loadDataFromMMSAlbum allIds.size() ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;

    iget-wide v0, v12, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->partId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v14, v0

    iget-object v8, v12, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->mediaType:Ljava/lang/String;

    iget-object v0, v12, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->messageType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getThumbUri()Landroid/net/Uri;

    move-result-object v25

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getStatus()J

    move-result-wide v26

    const-wide/16 v28, 0x3

    cmp-long v5, v26, v28

    if-nez v5, :cond_2

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet$ContentData;->getStatus()J

    move-result-wide v26

    const-wide/16 v28, 0x64

    cmp-long v5, v26, v28

    if-nez v5, :cond_3

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAppIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v5, "UriMediaMMSAlbumSet"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "loadDataFromMMSAlbum allIds["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "] uri is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " mimeType : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/android/gallery3d/data/UriImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mThreadId:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5, v14}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    const-string/jumbo v5, "image"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v22

    if-nez v22, :cond_4

    new-instance v4, Lcom/sec/android/gallery3d/data/UriImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/UriImage;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    :cond_0
    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_4
    move-object/from16 v4, v22

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->setDownloaded(Z)Z

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    instance-of v5, v4, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/data/UriImage;->setUri(Landroid/net/Uri;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v5, "video"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v22

    if-nez v22, :cond_7

    new-instance v4, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/sec/android/gallery3d/data/UriVideo;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;Z)V

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/UriVideo;->setThumbUri(Landroid/net/Uri;)V

    :cond_6
    :goto_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v4, v22

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->setDownloaded(Z)Z

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    instance-of v5, v4, Lcom/sec/android/gallery3d/data/UriVideo;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/data/UriVideo;->setUri(Landroid/net/Uri;)V

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/UriVideo;->setThumbUri(Landroid/net/Uri;)V

    goto :goto_5

    :cond_8
    const-string/jumbo v5, "application"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v20, :cond_1

    const-string/jumbo v5, "image"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v22

    if-nez v22, :cond_a

    new-instance v4, Lcom/sec/android/gallery3d/data/UriImage;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/gallery3d/data/UriImage;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;Ljava/lang/String;Z)V

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    :cond_9
    :goto_6
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_a
    move-object/from16 v4, v22

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->setDownloaded(Z)Z

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    instance-of v5, v4, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v5, :cond_9

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriImage;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/data/UriImage;->setUri(Landroid/net/Uri;)V

    goto :goto_6

    :cond_b
    const-string/jumbo v5, "video"

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v22

    if-nez v22, :cond_c

    new-instance v4, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v4, v5, v6, v7, v9}, Lcom/sec/android/gallery3d/data/UriVideo;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;Z)V

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/UriVideo;->setThumbUri(Landroid/net/Uri;)V

    goto :goto_6

    :cond_c
    move-object/from16 v4, v22

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4, v9}, Lcom/sec/android/gallery3d/data/MediaItem;->setDownloaded(Z)Z

    invoke-virtual {v4, v11}, Lcom/sec/android/gallery3d/data/MediaItem;->setSendedMessage(Z)Z

    instance-of v5, v4, Lcom/sec/android/gallery3d/data/UriVideo;

    if-eqz v5, :cond_9

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/data/UriVideo;->setUri(Landroid/net/Uri;)V

    move-object v5, v4

    check-cast v5, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/UriVideo;->setThumbUri(Landroid/net/Uri;)V

    goto :goto_6

    :cond_d
    const-string/jumbo v5, "UriMediaMMSAlbumSet"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "loadDataFromMMSAlbum foundType["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "]"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_e
    return-object v17
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "UriMediaMMSAlbumSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMediaItem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int v5, p1, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const-string/jumbo v3, "UriMediaMMSAlbumSet"

    const-string/jumbo v4, "mList is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->getMediaItemCount()I

    move-result v2

    move v0, p1

    :goto_0
    if-ge v0, v2, :cond_1

    add-int v3, p1, p2

    if-ge v0, v3, :cond_1

    if-ltz v0, :cond_3

    if-ge v0, v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string/jumbo v1, "UriMediaMMSAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMediaItemCount size ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initDownloadCompleteNoti()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDownloadCompleteNoti:Z

    return-void
.end method

.method public isDownloadCompleteNoti()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDownloadCompleteNoti:Z

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    const-string/jumbo v0, "UriMediaMMSAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reload() mDataVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDataVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifierFTDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifierFTDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifierMMSDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifierMMSDB:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string/jumbo v0, "UriMediaMMSAlbumSet"

    const-string/jumbo v1, "reload() dirty because of MMS or Enhanced Message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->loadDataFromMMSAlbum()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDataVersion:J

    :cond_2
    :goto_0
    const-string/jumbo v0, "UriMediaMMSAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reloaded() mDataVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDataVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDataVersion:J

    return-wide v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "UriMediaMMSAlbumSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reload() dirty mDownloadCompleteNoti : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDownloadCompleteNoti:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDownloadCompleteNoti:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->loadDataFromMMSAlbum()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/UriMediaMMSAlbumSet;->mDataVersion:J

    goto :goto_0
.end method
