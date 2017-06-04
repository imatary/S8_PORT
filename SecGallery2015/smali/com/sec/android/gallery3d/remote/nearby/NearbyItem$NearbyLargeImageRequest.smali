.class Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;
.super Ljava/lang/Object;
.source "NearbyItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NearbyLargeImageRequest"
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
.field private final mUrl:Ljava/net/URL;

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/net/URL;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->mUrl:Ljava/net/URL;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/net/URL;Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 6

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    # getter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/sec/android/gallery3d/data/DownloadCache;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->mUrl:Ljava/net/URL;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    # invokes: Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->generateKey()J
    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/android/gallery3d/data/DownloadCache;->downloadNoNetworkProxy(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/net/URL;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v2, "RemoteMediaItem"

    const-string/jumbo v3, "Nearby : download failed "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, v1, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/lang/String;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    const-string/jumbo v2, "RemoteMediaItem"

    const-string/jumbo v3, "Nearby : downloaded large image "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->associateWith(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v3

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDecodedWidth:I
    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$402(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;I)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v3

    # setter for: Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDecodedHeight:I
    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->access$502(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;I)I

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
