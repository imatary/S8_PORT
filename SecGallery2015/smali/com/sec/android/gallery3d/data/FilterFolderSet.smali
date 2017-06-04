.class public Lcom/sec/android/gallery3d/data/FilterFolderSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "FilterFolderSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "FilterSet"


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

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mFiterFolder:Ljava/lang/String;

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

.field private mSupportShare:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mAlbums:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mSupportShare:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mFiterFolder:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mFiterFolder:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/FilterFolderSet;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/FilterFolderSet;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method private buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    .locals 4
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

    if-eqz p1, :cond_2

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz p3, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    const-string/jumbo v3, "_data"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->isFilteredItem(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_2
    return-void
.end method

.method private isFilteredItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->isFilteredItem(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isFilteredItem(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateData()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v8, v8, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v8, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->updateDataForComboAndLocalSet()V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v0, "/filter/folder/1"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v8, ""

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_5

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

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

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "##"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mFiterFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

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
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v7

    if-lez v7, :cond_1

    new-array v1, v7, [Lcom/sec/android/gallery3d/data/Path;

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v9, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;

    invoke-direct {v9, p0, v7, v1}, Lcom/sec/android/gallery3d/data/FilterFolderSet$1;-><init>(Lcom/sec/android/gallery3d/data/FilterFolderSet;I[Lcom/sec/android/gallery3d/data/Path;)V

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_1

    aget-object v8, v1, v4

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private updateDataForComboAndLocalSet()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "/filter/folder/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    :goto_0
    if-ge v3, v5, :cond_2

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    const-string/jumbo v9, "/{"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "##"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mFiterFolder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

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
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v9, v9, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :cond_4
    return-void

    :cond_5
    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v8

    iget-object v9, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v9, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->getMediaSets()[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    const/4 v3, 0x0

    :goto_1
    array-length v9, v7

    if-ge v3, v9, :cond_4

    aget-object v4, v7, v3

    invoke-direct {p0, v4, v8}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private updateMediaItemData(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 5

    const/4 v4, 0x2

    if-nez p1, :cond_0

    const-string/jumbo v3, "FilterSet"

    const-string/jumbo v4, "mediaSet is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    check-cast p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getTotalMediaItems(I)[Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v3, v0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v1, v0, v3

    const/4 v3, 0x1

    aget-object v2, v0, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :cond_2
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    const/4 v3, 0x6

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getTotalMediaItems(I)[Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v3, v0

    if-ne v3, v4, :cond_3

    const/4 v3, 0x0

    aget-object v1, v0, v3

    const/4 v3, 0x1

    aget-object v2, v0, v3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :cond_4
    new-instance v3, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;

    invoke-direct {v3, p0, p2}, Lcom/sec/android/gallery3d/data/FilterFolderSet$2;-><init>(Lcom/sec/android/gallery3d/data/FilterFolderSet;I)V

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/data/FilterFolderSet$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/FilterFolderSet$3;-><init>(Lcom/sec/android/gallery3d/data/FilterFolderSet;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    const/4 v1, 0x1

    return v1
.end method

.method public getBucketId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
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

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

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

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mSupportShare:Z

    :cond_1
    return-object v1
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide/32 v0, 0x20000005

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mSupportShare:Z

    if-nez v2, :cond_0

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->updateData()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/FilterFolderSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/FilterFolderSet;->mDataVersion:J

    return-wide v0
.end method
