.class Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "GalleryActivityNotificationImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBitmapArrayReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewModelReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;Landroid/content/Context;Landroid/util/SparseArray;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mContextReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mBitmapArrayReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private getBitmapFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;)I

    move-result v4

    div-int v4, v2, v4

    int-to-float v1, v4

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v4

    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method private getCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)Landroid/graphics/Bitmap;
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/channel/channelalbum/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getStoryId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->getBitmapFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getFileThumbnail(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getUriString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "ActNotificationFetcher"

    const-string/jumbo v2, "Fail to update file thumbnail, uri string is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->getBitmapFromFilePath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showCoverBitmap()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->getCoverBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->getFileThumbnail(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mContextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-nez p1, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    invoke-virtual {v5, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->showErrorIcon(Landroid/content/Context;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->this$0:Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->hideErrorIcon(Landroid/widget/ImageView;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mBitmapArrayReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->mViewModelReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;

    if-eqz v0, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showCoverBitmap()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getFileId()I

    move-result v5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
