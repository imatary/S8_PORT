.class Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;
.super Ljava/lang/Object;
.source "UriVideo.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/data/UriVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapJob"
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

.field final synthetic this$0:Lcom/sec/android/gallery3d/data/UriVideo;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/UriVideo;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->mType:I

    return-void
.end method


# virtual methods
.method public run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->mType:I

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->getTargetSize(I)I

    move-result v2

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/UriVideo;->access$000(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mUri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/UriVideo;->access$000(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/UriVideo;->access$000(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnhancedMessageUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/UriVideo;->access$100(Lcom/sec/android/gallery3d/data/UriVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriVideo;->access$000(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v3, v4, v1, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/UriVideo;->access$100(Lcom/sec/android/gallery3d/data/UriVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriVideo;->access$000(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/UriVideo;->access$200(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/UriVideo;->access$100(Lcom/sec/android/gallery3d/data/UriVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriVideo;->access$200(Lcom/sec/android/gallery3d/data/UriVideo;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1, v3, v4, v1, v2}, Lcom/sec/android/gallery3d/data/DecodeUtils;->requestDecode(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-virtual {v3, v6}, Lcom/sec/android/gallery3d/data/UriVideo;->setBroken(Z)V

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->mType:I

    if-ne v3, v6, :cond_4

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriVideo;->access$100(Lcom/sec/android/gallery3d/data/UriVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->this$0:Lcom/sec/android/gallery3d/data/UriVideo;

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/UriVideo;->access$100(Lcom/sec/android/gallery3d/data/UriVideo;)Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenMovieThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->mType:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    :cond_6
    invoke-static {v0, v2, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_7
    invoke-static {v0, v2, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/data/UriVideo$BitmapJob;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
