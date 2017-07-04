.class Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;
.super Ljava/lang/Object;
.source "CloudImage.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudLargeImageRequest"
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
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v5, v5, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v5, v5, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$500(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->createBitmapRegionDecoder(Ljava/io/InputStream;Z)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v4, "CloudImage"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$CloudLargeImageRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    return-object v0
.end method
