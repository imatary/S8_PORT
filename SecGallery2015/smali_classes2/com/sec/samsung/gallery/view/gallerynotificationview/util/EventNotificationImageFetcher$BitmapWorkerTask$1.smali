.class Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;
.super Ljava/lang/Object;
.source "EventNotificationImageFetcher.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllContentReady()V
    .locals 0

    return-void
.end method

.method public onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mComposeImageItems:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->access$800(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->rotateAndCropCenter(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Landroid/graphics/Bitmap;
    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->setCoverBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    iget-object v2, v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getSavedCoverBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask$1;->this$1:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    # getter for: Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->access$1000(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    # invokes: Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->drawCoverBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
