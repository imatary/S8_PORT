.class Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;
.super Ljava/lang/Object;
.source "CloudVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;
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

.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x1

    sget-object v2, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseVideoUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->access$000(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/android/cloudagent/CloudStore$API;->getThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v5}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v2

    if-nez v2, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    iget v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->mType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    iget v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_4
    iget v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->mType:I

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    invoke-static {v0, v2, v5}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mCloudEntry:Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/cloud/CloudItemEntry;->thumb_pathname:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->setBroken(Z)V

    iget v2, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->mType:I

    if-ne v2, v5, :cond_6

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->access$100(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->this$0:Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;

    # getter for: Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;
    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;->access$200(Lcom/sec/android/gallery3d/remote/cloud/CloudVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/remote/cloud/CloudVideo$ThumbDecodeRequest;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
