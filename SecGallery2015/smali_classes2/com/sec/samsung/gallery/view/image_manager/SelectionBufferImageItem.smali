.class public Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;
.super Ljava/lang/Object;
.source "SelectionBufferImageItem.java"

# interfaces
.implements Lcom/sec/android/gallery3d/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/gallery3d/util/FutureListener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectnBufferImgItm"

.field private static mSelectionBufferListItemThumbnailHeight:I = 0x0

.field private static mSelectionBufferListItemThumbnailWidth:I = 0x0

.field private static final mThmType:I = 0x2


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mTask:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailHeight:I

    sput v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Landroid/widget/ImageView;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mView:Landroid/widget/ImageView;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->startLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;

    sget v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailHeight:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailHeight:I

    :cond_0
    sget v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailWidth:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0368

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailWidth:I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getCropRectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v8

    :cond_0
    const/4 v12, 0x0

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailWidth:I

    int-to-float v9, v0

    sget v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailHeight:I

    int-to-float v10, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v11

    invoke-static/range {v6 .. v11}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v12

    :cond_1
    if-nez v12, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailWidth:I

    int-to-float v2, v2

    sget v3, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mSelectionBufferListItemThumbnailHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v12

    :cond_2
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->top:I

    iget v2, v12, Landroid/graphics/Rect;->right:I

    iget v3, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method private startLoadBitmapTask()Lcom/sec/android/gallery3d/util/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mTask:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;-><init>(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mTask:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mTask:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onFutureDone(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mTask:Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$LoadBitmapTask;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string/jumbo v2, "SelectnBufferImgItm"

    const-string/jumbo v3, "error, bitmap is null!"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->getCropRectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;

    invoke-direct {v3, p0, v1}, Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem$1;-><init>(Lcom/sec/samsung/gallery/view/image_manager/SelectionBufferImageItem;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
