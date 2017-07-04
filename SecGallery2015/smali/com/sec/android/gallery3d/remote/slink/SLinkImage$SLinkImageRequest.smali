.class Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;
.super Lcom/sec/android/gallery3d/data/ImageCacheRequest;
.source "SLinkImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/remote/slink/SLinkImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SLinkImageRequest"
.end annotation


# static fields
.field private static final SLINK_SCREENAIL_SIZE:I = 0x400

.field private static final SLINK_THUMB_SIZE:I = 0x140


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;JII)V
    .locals 10

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/gallery3d/data/ImageCacheRequest;-><init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/Path;JIIZ)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->setUseCache(Z)V

    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 12

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;->setMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v10, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    if-ne p2, v11, :cond_2

    const/16 v6, 0x400

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->access$000(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    move v7, v6

    move v9, v8

    invoke-static/range {v1 .. v10}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJIIZZLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v8}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->setUseCache(Z)V

    const-string/jumbo v1, "SLinkImage"

    const-string/jumbo v2, "Get thumbnail return null from SLPF"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->setBroken(Z)V

    if-ne p2, v11, :cond_3

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;)Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, v1, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;)Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, v1, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->this$0:Lcom/sec/android/gallery3d/remote/slink/SLinkImage;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;)Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    move-result-object v1

    iput v8, v1, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->rotation:I

    goto :goto_0

    :cond_2
    const/16 v6, 0x140

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2
.end method

.method public resizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/DecodeUtils;->isPanoramicRatio(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-ne v0, v5, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mTargetSize:I

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-ne v0, v3, :cond_3

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mTargetSize:I

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->FeatureUseCropCenterPanoramaThumbnail:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mType:I

    if-ne v0, v5, :cond_5

    :cond_4
    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mTargetSize:I

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;->mTargetSize:I

    invoke-static {p1, v0, v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownBySideLength(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0
.end method
