.class public Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;
.super Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;
.source "EventNotificationImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;,
        Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;
    }
.end annotation


# static fields
.field private static final FACES_VIEW_PROJECTION:[Ljava/lang/String;

.field private static final FACES_VIEW_WHERE:Ljava/lang/String; = "data = ? "

.field private static final FACE_ELEMENT_COL_COUNT:I = 0x2

.field private static final FACE_ELEMENT_COUNT:I = 0x4

.field private static final FACE_THUMBNAIL_SIZE:I

.field private static final IS_N_OS:Z

.field private static final TAG:Ljava/lang/String; = "EvntNotiImgFetcher"


# instance fields
.field private final mCoverBitmapSize:I

.field private final mCoverBitmaps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceBitmapGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->IS_N_OS:Z

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->FACE_THUMBNAIL_SIZE:I

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pos_ratio"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->FACES_VIEW_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/AbsImageFetcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmaps:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b07f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmapSize:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b057b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mFaceBitmapGap:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmapSize:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmapSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->IS_N_OS:Z

    if-eqz v0, :cond_0

    const v0, 0x7f10006b

    :goto_0
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-void

    :cond_0
    const v0, 0x7f1000d3

    goto :goto_0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mFaceBitmapGap:I

    return v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->FACES_VIEW_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()I
    .locals 1

    sget v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->FACE_THUMBNAIL_SIZE:I

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->IS_N_OS:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmaps:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->drawCoverBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->loadCoverBitmap(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmapSize:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->rotateAndCropCenter(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private drawCoverBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private loadCoverBitmap(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 7

    invoke-virtual {p0, p3, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/content/Context;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/Object;)V

    new-instance v6, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v6, v1, v2, v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/GalleryNotificationHelper$AsyncDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/os/AsyncTask;)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->IS_N_OS:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private reloadCoverBitmaps(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;I)V
    .locals 6

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;-><init>(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$1;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v1, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->access$300(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)V

    return-void
.end method

.method private rotateAndCropCenter(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    const/4 v1, 0x0

    instance-of v4, v2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_1

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getRotation()I

    move-result v5

    invoke-static {v0, v1, v4, v5, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->cropFaceByRatio(Landroid/graphics/Bitmap;Landroid/graphics/RectF;FIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getRotation()I

    move-result v4

    invoke-static {v3, v4, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmapSize:I

    invoke-static {v0, v4, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->resizeDownAndCropCenter(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->getRotation()I

    move-result v4

    invoke-static {v3, v4, v6}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method protected cancelPotentialWork(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->getBitmapWorkerTask(Landroid/widget/ImageView;)Landroid/os/AsyncTask;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->access$600(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$BitmapWorkerTask;->cancel(Z)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCoverBitmap(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;)V
    .locals 4

    invoke-virtual {p3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;->getEventId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;

    if-eqz v0, :cond_1

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->access$002(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->access$100(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;->access$000(Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher$CoverBitmap;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->drawCoverBitmap(Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->reloadCoverBitmaps(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->reloadCoverBitmaps(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/sec/samsung/gallery/view/gallerynotificationview/model/GalleryNotificationViewModel;I)V

    goto :goto_0
.end method

.method public initBitmaps()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerynotificationview/util/EventNotificationImageFetcher;->mCoverBitmaps:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
