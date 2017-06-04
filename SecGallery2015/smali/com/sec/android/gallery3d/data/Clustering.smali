.class abstract Lcom/sec/android/gallery3d/data/Clustering;
.super Ljava/lang/Object;
.source "Clustering.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Clustering"

.field static final USE_DREAM_STORY_LAYOUT:Z


# instance fields
.field private final IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private final VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

.field mSortByType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelDetailViewLayout:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/Clustering;->USE_DREAM_STORY_LAYOUT:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/Clustering;->IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/Clustering;->VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1
.end method

.method private buildCursorToSCloudSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1
.end method

.method private buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v5}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v8, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/Clustering;->IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/android/gallery3d/data/SmallItem;->lat:D

    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/android/gallery3d/data/SmallItem;->lng:D

    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    const-string/jumbo v6, "addr"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v6, -0x1

    if-eq v0, v6, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/gallery3d/data/SmallItem;->addr:Ljava/lang/String;

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/Clustering;->VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1
.end method

.method private enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_1

    const-string/jumbo v6, "Clustering"

    const-string/jumbo v7, "mediaSet is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    if-eqz v6, :cond_3

    const/4 v3, 0x0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalAlbumSet;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getAlbumSetType()I

    move-result v6

    iget v7, p0, Lcom/sec/android/gallery3d/data/Clustering;->mSortByType:I

    invoke-virtual {v1, v6, v7, p3}, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->getTotalMediaItems(IIZ)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v3, p2}, Lcom/sec/android/gallery3d/data/Clustering;->buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :cond_3
    instance-of v6, p1, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    if-eqz v6, :cond_5

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionAlbumSet;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getAlbumSetType()I

    move-result v6

    iget v7, p0, Lcom/sec/android/gallery3d/data/Clustering;->mSortByType:I

    invoke-virtual {v1, v6, v7, p3}, Lcom/sec/android/gallery3d/data/UnionAlbumSet;->getTotalMediaItems(IIZ)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v3, p2}, Lcom/sec/android/gallery3d/data/Clustering;->buildCursorToSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_1
    move-exception v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :cond_5
    instance-of v6, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;

    if-eqz v6, :cond_7

    const/4 v3, 0x0

    :try_start_2
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getAlbumSetType()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbumSet;->getTotalMediaItems(I)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_6

    const-string/jumbo v6, "Clustering"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "queried count["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, p2}, Lcom/sec/android/gallery3d/data/Clustering;->buildCursorToSCloudSmallItem(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_0

    :catchall_2
    move-exception v6

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v6

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    if-lez v5, :cond_0

    instance-of v6, p1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v6, :cond_8

    move-object v2, p1

    check-cast v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getAddressMap()Ljava/util/HashMap;

    move-result-object v4

    new-instance v6, Lcom/sec/android/gallery3d/data/Clustering$1;

    invoke-direct {v6, p0, v4, p2}, Lcom/sec/android/gallery3d/data/Clustering$1;-><init>(Lcom/sec/android/gallery3d/data/Clustering;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    :cond_8
    new-instance v6, Lcom/sec/android/gallery3d/data/Clustering$2;

    invoke-direct {v6, p0, p2}, Lcom/sec/android/gallery3d/data/Clustering$2;-><init>(Lcom/sec/android/gallery3d/data/Clustering;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;)V

    goto/16 :goto_0
.end method


# virtual methods
.method buildCursorToPath(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v4, :cond_0

    move v1, v4

    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/Clustering;->IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_2
    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/Clustering;->VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_2

    :cond_2
    return-void
.end method

.method buildCursorToSmallFestivalItem(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/Clustering;->IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/android/gallery3d/data/SmallItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/sec/android/gallery3d/data/SmallItem;->dateInMs:J

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/Clustering;->VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_1
    return-void
.end method

.method enumerateTotalMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;Z)V"
        }
    .end annotation

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/Clustering;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    :cond_0
    return-void

    :cond_1
    check-cast p1, Lcom/sec/android/gallery3d/data/ComboAlbumSet;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->getMediaSets()[Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/gallery3d/data/Clustering;->enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public abstract getCluster(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end method

.method public getClusterAddrValues(I)[[D
    .locals 1

    const/4 v0, 0x0

    check-cast v0, [[D

    return-object v0
.end method

.method public abstract getClusterKey(I)Ljava/lang/String;
.end method

.method public getClusterLocation(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getClusterName(I)Ljava/lang/String;
.end method

.method public abstract getNumberOfClusters()I
.end method

.method public abstract run(Lcom/sec/android/gallery3d/data/MediaSet;)V
.end method
