.class public Lcom/sec/android/gallery3d/data/ComboAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;[Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaSets()[Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_0
    sub-int/2addr p1, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSubMediaSetCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isLoading()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v1, v2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    :cond_2
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbumSet;->mDataVersion:J

    return-wide v6
.end method
