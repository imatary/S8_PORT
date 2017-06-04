.class public Lcom/sec/android/gallery3d/data/AllInOneAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "AllInOneAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# instance fields
.field private final mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mSubSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-void
.end method

.method private addMediaSets(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->addMediaSets(Lcom/sec/android/gallery3d/data/MediaSet;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 7
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

    move v3, p2

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-le p1, v5, :cond_2

    sub-int/2addr p1, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v5, p1

    if-le v5, v3, :cond_3

    move v5, v3

    :cond_3
    invoke-virtual {v4, p1, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 p1, 0x0

    sub-int/2addr v3, v5

    if-gtz v3, :cond_0

    :cond_5
    return-object v2
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaItemEx(II)Ljava/util/ArrayList;
    .locals 7
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

    move v3, p2

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-le p1, v5, :cond_2

    sub-int/2addr p1, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v5, p1

    if-le v5, v3, :cond_3

    move v5, v3

    :cond_3
    invoke-virtual {v4, p1, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_4
    const/4 p1, 0x0

    sub-int/2addr v3, v5

    if-gtz v3, :cond_0

    :cond_5
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "All"

    return-object v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mDataVersion:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->addMediaSets(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mDataVersion:J

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mSubSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->addMediaSets(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0
.end method

.method public removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/AllInOneAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    return-void
.end method
