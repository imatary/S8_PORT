.class public Lcom/sec/android/gallery3d/data/UriMediaSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "UriMediaSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field public static final SET_PATH:Ljava/lang/String; = "/uri/mediaset"

.field private static final TAG:Ljava/lang/String; = "UriMediaSet"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

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

.field private final mMid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriMediaSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mMid:Ljava/lang/String;

    return-void
.end method

.method private loadDataFromMMSComposer()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v1, "content://mms/part"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "mid"

    aput-object v5, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v5, "ct"

    aput-object v5, v3, v1

    const/4 v1, 0x3

    const-string/jumbo v5, "_data"

    aput-object v5, v3, v1

    const-string/jumbo v4, "mid = ?"

    const/4 v9, 0x0

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mMid:Ljava/lang/String;

    aput-object v7, v5, v6

    const-string/jumbo v6, "_id"

    const-string/jumbo v7, "UriMediaSet"

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_0

    const-string/jumbo v1, "UriMediaSet"

    const-string/jumbo v5, "mms image : cursorFound count is 0"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v13

    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    const-string/jumbo v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v1, "ct"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "content://mms/part/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    sget-object v1, Lcom/sec/android/gallery3d/data/UriImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v10}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    const-string/jumbo v1, "image"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v14, v8}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v15

    if-nez v15, :cond_4

    new-instance v12, Lcom/sec/android/gallery3d/data/UriImage;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v12, v1, v8, v5}, Lcom/sec/android/gallery3d/data/UriImage;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;)V

    :goto_1
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_4
    :try_start_2
    move-object v0, v15

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v12, v0

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "video"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v14, v8}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v15

    if-nez v15, :cond_6

    new-instance v12, Lcom/sec/android/gallery3d/data/UriVideo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v12, v1, v8, v5}, Lcom/sec/android/gallery3d/data/UriVideo;-><init>(Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;Landroid/net/Uri;)V

    :goto_3
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_6
    :try_start_3
    move-object v0, v15

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object v12, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "UriMediaSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMediaItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int v2, p1, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "UriMediaSet"

    const-string/jumbo v1, "getMediaItem+"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/UriMediaSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/UriMediaSet;->loadDataFromMMSComposer()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/UriMediaSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mDataVersion:J

    :cond_1
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/UriMediaSet;->mDataVersion:J

    return-wide v2
.end method
