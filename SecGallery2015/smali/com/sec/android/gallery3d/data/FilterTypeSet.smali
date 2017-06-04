.class public Lcom/sec/android/gallery3d/data/FilterTypeSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterTypeSet"


# instance fields
.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mFilterMimeType:Ljava/lang/String;

.field private mFilterMimeTypeMode:Z

.field private mIsLoading:Z

.field private final mMediaType:I

.field private final mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mSefFileType:Ljava/lang/Integer;

.field private mSupportShare:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;ILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSupportShare:Z

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeTypeMode:Z

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSefFileType:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput p4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeTypeMode:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSefFileType:Ljava/lang/Integer;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "FilterTypeSet"

    const-string/jumbo v3, "FilterTypeSet err"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/FilterTypeSet;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/FilterTypeSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/FilterTypeSet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addExtraPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeTypeMode:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSefFileType:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSefFileType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz p3, :cond_1

    sget-object v3, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_2

    const/4 v5, 0x6

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    :goto_2
    invoke-virtual {p0, v2, v0, v4}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->isFilteredItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private buildCursorToUnionPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;Z)V"
        }
    .end annotation

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x2

    if-eqz p1, :cond_4

    const/4 v3, -0x1

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p3, :cond_2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    const/16 v4, 0x17

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sget-object v4, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    :goto_2
    invoke-virtual {p0, v1, v0, v3}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->isFilteredItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v6, :cond_3

    const/16 v4, 0x18

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sget-object v4, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    return-void
.end method

.method private isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v1, -0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_1

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    iget v1, v2, Lcom/sec/android/gallery3d/data/LocalImage;->sefFileType:I

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->isFilteredItem(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    return v2

    :cond_1
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    iget v1, v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->sefFileType:I

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getSefFileType()I

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getSefFileType()I

    move-result v1

    goto :goto_0
.end method

.method private updateData()V
    .locals 10

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v8, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->updateDataForComboAndLocalSet()V

    :cond_1
    return-void

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/filter/mediatype/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->addExtraPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v8, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    if-gtz v8, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    if-lez v8, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    if-lez v7, :cond_1

    new-array v1, v7, [Lcom/sec/android/gallery3d/data/Path;

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v9, Lcom/sec/android/gallery3d/data/FilterTypeSet$1;

    invoke-direct {v9, p0, v7, v1}, Lcom/sec/android/gallery3d/data/FilterTypeSet$1;-><init>(Lcom/sec/android/gallery3d/data/FilterTypeSet;I[Lcom/sec/android/gallery3d/data/Path;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v1, v4

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private updateDataForComboAndLocalSet()V
    .locals 11

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "/filter/mediatype/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->addExtraPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v9, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    if-gtz v9, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v9

    if-lez v9, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :cond_4
    return-void

    :cond_5
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v9, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->getMediaSets()[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_4

    aget-object v4, v7, v3

    invoke-direct {p0, v4, v8}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v4, "FilterTypeSet"

    const-string/jumbo v5, "mediaSet is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/LocalAlbum;

    if-eqz v6, :cond_3

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lcom/sec/android/gallery3d/data/LocalAlbum;

    iget v6, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getTotalMediaItems(IZ)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    if-ne v7, v8, :cond_2

    :goto_1
    invoke-direct {p0, v0, v6, v4}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_3
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    if-eqz v6, :cond_6

    const/4 v0, 0x0

    :try_start_1
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionAlbum;

    iget v6, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getTotalMediaItems(IZ)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    iget v7, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    if-ne v7, v8, :cond_5

    :goto_2
    invoke-direct {p0, v0, v6, v4}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->buildCursorToUnionPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_6
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v4, :cond_8

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2
    check-cast p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    iget v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getTotalMediaItems(I)[Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v4, v1

    if-ne v4, v8, :cond_7

    const/4 v4, 0x0

    aget-object v2, v1, v4

    const/4 v4, 0x1

    aget-object v3, v1, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_7
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_8
    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v4, :cond_a

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_3
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    iget v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getTotalMediaItems(I)[Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_9

    array-length v4, v1

    if-ne v4, v8, :cond_9

    const/4 v4, 0x0

    aget-object v2, v1, v4

    const/4 v4, 0x1

    aget-object v3, v1, v4

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {p0, v2, v4, v5}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->buildCursorToUnionPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->buildCursorToUnionPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_9
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_a
    new-instance v4, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;

    invoke-direct {v4, p0, p2}, Lcom/sec/android/gallery3d/data/FilterTypeSet$3;-><init>(Lcom/sec/android/gallery3d/data/FilterTypeSet;I)V

    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/data/FilterTypeSet$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/FilterTypeSet$2;-><init>(Lcom/sec/android/gallery3d/data/FilterTypeSet;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
.end method

.method public getFilterMimeTypeMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeTypeMode:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-static {v2, p1, p2, v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSupportShare:Z

    :cond_1
    return-object v1
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMediaType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mMediaType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Lcom/sec/android/gallery3d/data/Path;
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->addExtraPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "FilterTypeSet"

    const-string/jumbo v4, "IndexOutOfBoundsException at getSubMediaSet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide/16 v0, 0x5

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSupportShare:Z

    if-nez v2, :cond_0

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public isCameraAlbum()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraAlbum()Z

    move-result v0

    return v0
.end method

.method public isCameraRoll()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public isFilteredItem(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeTypeMode:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSefFileType:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mSefFileType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, p3, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "image/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image/*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    const-string/jumbo v2, "video/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image/jpeg"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "image/jpg"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mFilterMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video/3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez p2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    const-string/jumbo v2, ".3gp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "video/3gp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "video/3gpp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "video/3gpp2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mIsLoading:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->updateData()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/FilterTypeSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/FilterTypeSet;->mDataVersion:J

    return-wide v0
.end method
