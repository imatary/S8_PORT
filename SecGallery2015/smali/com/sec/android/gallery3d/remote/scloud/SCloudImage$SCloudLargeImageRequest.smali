.class Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;
.super Ljava/lang/Object;
.source "SCloudImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;
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
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    iget-object v5, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v1, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->cache_pathname:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    # getter for: Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v5}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->access$100(Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->server_id:Ljava/lang/String;

    const-string/jumbo v7, "large"

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/samsung/android/scloud/cloudagent/CloudStore$API;->downloadMediaCacheFileWithBlocking(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Lcom/samsung/android/scloud/cloudagent/exception/CloudException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    iget-object v5, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;

    iget-object v5, v5, Lcom/sec/android/gallery3d/remote/scloud/SCloudItemEntry;->content_type:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1, v9}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->setNeedCloudOnlyThumb(Z)V

    :cond_3
    return-object v2

    :catch_0
    move-exception v3

    const-string/jumbo v5, "SCloudImage"

    invoke-virtual {v3}, Lcom/samsung/android/scloud/cloudagent/exception/CloudException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage$SCloudLargeImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
