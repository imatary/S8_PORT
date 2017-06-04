.class Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;
.super Ljava/lang/Object;
.source "UnionSCloudImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UnionSCloudImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SCloudLargeImageRequest"
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
.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/data/UnionSCloudImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/data/UnionSCloudImage;Lcom/sec/android/gallery3d/data/UnionSCloudImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;-><init>(Lcom/sec/android/gallery3d/data/UnionSCloudImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    iget-object v1, v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudCachedPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    iget-object v4, v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    iget-object v5, v5, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->cloudServerId:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->getCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    iget-object v4, v4, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->mimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v1, v6}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->setNeedCloudOnlyThumb(Z)V

    :cond_3
    return-object v2
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage$SCloudLargeImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
