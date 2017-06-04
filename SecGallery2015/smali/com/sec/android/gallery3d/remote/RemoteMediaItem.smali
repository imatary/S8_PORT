.class public abstract Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "RemoteMediaItem.java"


# instance fields
.field protected final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;


# direct methods
.method protected constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method


# virtual methods
.method public abstract getSourceId()Ljava/lang/String;
.end method

.method public abstract getThumbPath()Ljava/lang/String;
.end method

.method public abstract getThumbUrl()Ljava/lang/String;
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
