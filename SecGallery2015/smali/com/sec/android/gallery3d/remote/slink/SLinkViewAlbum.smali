.class public Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaSet;
.source "SLinkViewAlbum.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SLinkViewAlbum"


# instance fields
.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mIsDirty:Z

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    return-void
.end method

.method private loadOrUpdateMediaItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    invoke-virtual {p2, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {v0, p3}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->updateContent(Landroid/database/Cursor;)Z

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v3, p1, p2

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int p2, v3, p1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    add-int v4, p1, p2

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SLinkViewAlbum"

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init(Landroid/database/Cursor;)V
    .locals 11

    const/4 v9, 0x1

    const-string/jumbo v7, "SLinkViewAlbum"

    const-string/jumbo v8, "init"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mIsDirty:Z

    const-string/jumbo v7, "_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v7, "device_id"

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v7, "/slink/%d/%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0, v0, v7, p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->loadOrUpdateMediaItem(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v7, "SLinkViewAlbum"

    invoke-virtual {v2}, Landroid/database/CursorIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public reload()J
    .locals 2

    const-string/jumbo v0, "SLinkViewAlbum"

    const-string/jumbo v1, "reload()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mIsDirty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mDataVersion:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mIsDirty:Z

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkViewAlbum;->mDataVersion:J

    return-wide v0
.end method
