.class public Lcom/sec/android/gallery3d/data/ComboAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboAlbum"


# instance fields
.field private mName:Ljava/lang/String;

.field private final mSets:[Lcom/sec/android/gallery3d/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;[Lcom/sec/android/gallery3d/data/MediaSet;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIndexOfItemEx(Lcom/sec/android/gallery3d/data/Path;I)I
    .locals 9

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v6, v5

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getIndexOfItemEx(Lcom/sec/android/gallery3d/data/Path;I)I

    move-result v2

    if-eq v2, v4, :cond_1

    const/4 v3, 0x1

    add-int/2addr v0, v2

    :cond_0
    if-eqz v3, :cond_2

    :goto_1
    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    add-int/2addr v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
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

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v3, v6, v5

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    const/4 v8, 0x1

    if-ge p2, v8, :cond_1

    :cond_0
    return-object v2

    :cond_1
    if-ge p1, v4, :cond_4

    add-int v8, p1, p2

    if-gt v8, v4, :cond_3

    move v0, p2

    :goto_1
    invoke-virtual {v3, p1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr p2, v8

    :cond_2
    const/4 p1, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sub-int v0, v4, p1

    goto :goto_1

    :cond_4
    sub-int/2addr p1, v4

    goto :goto_2
.end method

.method public getMediaItemCount()I
    .locals 6

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ComboAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v2, v3

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mDataVersion:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mDataVersion:J

    :cond_2
    iget-wide v6, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mDataVersion:J

    return-wide v6
.end method

.method public useNameOfChild(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mSets:[Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ComboAlbum;->mName:Ljava/lang/String;

    :cond_0
    return-void
.end method
