.class Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;
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
    name = "ThumbDecodeRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mType:I

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    sget-object v6, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v8, v8, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v8, v8, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1, v11}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v0, v7

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    if-eqz v6, :cond_3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v6, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->cache_pathname:Ljava/lang/String;

    const/16 v8, 0x400

    iget v9, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    invoke-static {p1, v6, v4, v8, v9}, Lcom/sec/android/gallery3d/data/DecodeUtils;->decodeThumbnail(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v10}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v0, v7

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$000(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/sec/android/cloudagent/CloudStore$API;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_7

    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_5

    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_5
    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    invoke-static {v0, v6, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    if-ne v6, v11, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v6

    invoke-static {v0, v6, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v6, v6, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    if-eqz v6, :cond_9

    const/4 v2, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$200(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$100(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    iget v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->mType:I

    if-ne v6, v10, :cond_a

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$300(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_8
    :goto_2
    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    :cond_9
    :goto_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->setBroken(Z)V

    goto/16 :goto_0

    :cond_a
    :try_start_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudImage;

    invoke-static {v7}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage;->access$400(Lcom/sec/android/gallery3d/remote/cloud/CloudImage;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v6, "CloudImage"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v6

    invoke-static {v2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v6
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudImage$ThumbDecodeRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
