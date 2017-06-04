.class public Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;
.super Ljava/lang/Object;
.source "LocalImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalLargeImageRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mLocalFilePath:Ljava/lang/String;

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mPath:Lcom/sec/android/gallery3d/data/Path;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/32 v4, 0x20000000

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isJpeg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;ZZ)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isDrm(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getBrokenImageRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalImage$LocalLargeImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
