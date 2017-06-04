.class public Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ShotModeWeChatSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# instance fields
.field private final mRootSet:Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->getBucketId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mRootSet:Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mRootSet:Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mRootSet:Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mRootSet:Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->getMediaItemCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mRootSet:Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ShotModeWeChatAlbum;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/ShotModeWeChatSet;->mDataVersion:J

    return-wide v0
.end method
