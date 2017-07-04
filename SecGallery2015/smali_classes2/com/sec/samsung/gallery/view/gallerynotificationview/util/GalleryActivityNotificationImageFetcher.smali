.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;
.super Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;
.source "GalleryActivityNotificationImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActNotificationFetcher"


# instance fields
.field private final mBitmapArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mBitmapArray:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b04df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mImageSize:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mImageSize:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mImageSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mContext:Landroid/content/Context;

    const v2, 0x7f10006b

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mImageSize:I

    return v0
.end method

.method private reloadBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mBitmapArray:Landroid/util/SparseArray;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;Landroid/content/Context;Landroid/util/SparseArray;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)V

    new-instance v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v1, v2, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/os/AsyncTask;)V

    invoke-virtual {p2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-object v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher$BitmapWorkerTask;->cancel(Z)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBitmapDrawable(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->showCoverBitmap()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->reloadBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;->getFileId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->reloadBitmap(Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryActivityViewModel;Landroid/widget/ImageView;)Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public initBitmaps()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryActivityNotificationImageFetcher;->mBitmapArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
