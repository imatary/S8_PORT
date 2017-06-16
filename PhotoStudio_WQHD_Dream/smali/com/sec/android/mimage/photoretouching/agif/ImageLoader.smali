.class public Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;,
        Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$BitmapDisplayer;,
        Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;,
        Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;
    }
.end annotation


# instance fields
.field activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

.field adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

.field dialogDismissed:Z

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field mContext:Landroid/content/Context;

.field private mPhotView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

.field private mWriteFileExecutorService:Ljava/util/concurrent/ExecutorService;

.field volatile noOBitmapsLoaded:Ljava/util/concurrent/atomic/AtomicInteger;

.field noOBitmapstoLoad:I

.field protected removeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapstoLoad:I

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->dialogDismissed:Z

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mPhotView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;I)V

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mWriteFileExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mWriteFileExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->getBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private checkImagesCount()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->THUMB_VIEW_TOTAL_NUM:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmap(Landroid/net/Uri;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v3

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v4

    sget v5, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getBitmapFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6
.end method

.method private queuePhoto(Landroid/net/Uri;Landroid/widget/ImageView;ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)V
    .locals 7

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Landroid/net/Uri;Landroid/widget/ImageView;ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)V

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_0
    new-instance v6, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotosLoader;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$PhotoToLoad;)V

    if-eqz v6, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method


# virtual methods
.method public addNoOfBitmapsToLoad(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapstoLoad:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapstoLoad:I

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->dialogDismissed:Z

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mContext:Landroid/content/Context;

    :cond_3
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    if-eqz v0, :cond_4

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->activity:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoActivity;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->removeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->removeList:Ljava/util/ArrayList;

    :cond_5
    return-void
.end method

.method public displayImage(ILandroid/widget/Button;)V
    .locals 0

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    return-void
.end method

.method public displayImage(Landroid/net/Uri;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->mainImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->queuePhoto(Landroid/net/Uri;Landroid/widget/ImageView;ILcom/sec/android/mimage/photoretouching/agif/BitmapInfo;)V

    :cond_0
    return-void
.end method

.method public displayImage(Ljava/lang/String;IZ)V
    .locals 4

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewWidth()I

    move-result v1

    invoke-static {}, Lcom/sec/android/mimage/photoretouching/agif/util/QuramUtil;->getPreviewHeight()I

    move-result v2

    sget v3, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->RESIZE_LESS_THAM_MAX:I

    invoke-static {p1, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/agif/util/DecodeUtil;->getBitmapFromUri(Ljava/lang/String;III)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setBitmap(Landroid/graphics/Bitmap;I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->getItem(I)Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/agif/BitmapInfo;->setFaceRect(Landroid/graphics/Rect;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->adapter:Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;

    iget-object v1, v1, Lcom/sec/android/mimage/photoretouching/agif/ImageListAdapter;->itemsAddMode:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->mPhotView:Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;

    invoke-virtual {v1, v0}, Lcom/sec/android/mimage/photoretouching/agif/MotionPhotoViewGIF;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setNoOfBitmapsToLoad(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapstoLoad:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->noOBitmapsLoaded:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader$LoadingThreadFactory;-><init>(Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;I)V

    const/4 v1, 0x5

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->dialogDismissed:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->removeList:Ljava/util/ArrayList;

    return-void
.end method

.method public shutDownExecutor()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    instance-of v0, v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/agif/ImageLoader;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    return-void
.end method
