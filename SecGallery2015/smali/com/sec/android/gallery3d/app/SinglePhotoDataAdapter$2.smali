.class Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;
.super Ljava/lang/Object;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v10, 0x1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-nez v1, :cond_0

    const-string/jumbo v6, "SinglePhotoDataAdapter"

    const-string/jumbo v7, "decoder is null"

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v6}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$900(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v6}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$900(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v4

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v5, v2, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v6

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v7, v7, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v6, v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$800(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-direct {v8, v1, v0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;-><init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Landroid/graphics/Bitmap;)V

    invoke-virtual {v7, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
