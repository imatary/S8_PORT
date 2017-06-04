.class Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;
.super Ljava/lang/Object;
.source "LocalCameraImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/LocalCameraImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
.field private final mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private final mLocalFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isDrm(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->mContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->getBrokenImageRegionDecoder()Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraImage$LocalLargeImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
