.class public Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;
.super Lcom/sec/samsung/gallery/glview/GlBaseAdapter;
.source "SlideShowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;
    }
.end annotation


# static fields
.field private static final FIRST_LOADING_COUNT:I = 0x14

.field private static final FIRST_LOADING_INCREASE_COUNT_THRESHOLD:I = 0x3e8

.field public static final LOCK:Ljava/lang/Object;

.field private static final NEXT_LOADING_POINT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SlideShowAdapter"

.field private static final USE_NEW_SLIDESHOW:Z

.field private static final USE_SLIDESHOW_SWIPEZOOM:Z


# instance fields
.field private mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsLoadingDone:Z

.field private mIsLoadingFinished:Z

.field private mIsLoadingRunning:Z

.field private mIsSelectionMode:Z

.field private mIsSmartViewMode:Z

.field private mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

.field private mMediaItemCount:I

.field private mMediaItemStart:I

.field private mNeedFrontLoad:Z

.field private mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

.field private mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

.field private final mPlayIconHeight:I

.field private final mPlayIconWidth:I

.field private mPrevStart:I

.field private mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mStart:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSlideShowSwipeZoom:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_SLIDESHOW_SWIPEZOOM:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/GlBaseAdapter;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingFinished:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingRunning:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    iput v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mWidth:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mHeight:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    iput v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPrevStart:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSelectionMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSmartViewMode:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPlayIconWidth:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPlayIconHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->initialize(Landroid/os/Bundle;Z)V

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->getCache()Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    return-void
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingRunning:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingFinished:Z

    return p1
.end method

.method private cancelTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingRunning:Z

    return-void
.end method

.method private destroyResources()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_0
    const-string/jumbo v1, "SlideShowAdapter"

    const-string/jumbo v2, "destroyResources, cache.destroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->destroy()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SlideShowAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private drawBrokenThumbIcon(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v8, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getBrokenThumbIconResId(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v10

    invoke-static {v9, v10, v8}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    if-eqz p2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move-object p2, v8

    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v8, v2, v5

    div-int/lit8 v6, v8, 0x2

    sub-int v8, v1, v4

    div-int/lit8 v7, v8, 0x2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, p2

    :goto_1
    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v8, v6

    int-to-float v9, v7

    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v9, 0x1

    invoke-virtual {p2, v8, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    goto :goto_1
.end method

.method private drawDecorView(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;
    .locals 12

    const-string/jumbo v9, "SlideShowAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "drawDecorView, index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    const/4 v4, 0x0

    const-string/jumbo v9, "SlideShowAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mediaItem="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", bitmap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    instance-of v9, v5, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v9, :cond_1

    instance-of v9, v5, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v9, :cond_2

    :cond_1
    invoke-direct {p0, v5, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->makeFacesInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V

    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    :try_start_0
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v0, v9, v10}, Lcom/sec/android/gallery3d/common/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_0
    if-eqz v5, :cond_5

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getScaleValue(II)F

    move-result v8

    invoke-direct {p0, v3, v8}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getResizedWidth(IF)I

    move-result v7

    invoke-direct {p0, v2, v8}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getResizedHeight(IF)I

    move-result v6

    if-eq v7, v3, :cond_4

    if-eq v6, v2, :cond_4

    invoke-direct {p0, v0, v7, v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    invoke-direct {p0, v5, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->drawIcon(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v9

    if-nez v9, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    invoke-direct {p0, v5, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->drawBrokenThumbIcon(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_7
    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p1

    :catch_0
    move-exception v1

    const-string/jumbo v9, "SlideShowAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private drawIcon(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    if-nez p2, :cond_1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getSprDrawable(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPlayIconWidth:I

    sub-int v8, v3, v8

    div-int/lit8 v4, v8, 0x2

    iget v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPlayIconHeight:I

    sub-int v8, v2, v8

    div-int/lit8 v7, v8, 0x2

    iget v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPlayIconWidth:I

    add-int v5, v4, v8

    iget v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPlayIconHeight:I

    add-int v0, v7, v8

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v4, v7, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private getBrokenThumbIconResId(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamBrokenIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f020181

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0202eb

    goto :goto_0

    :cond_1
    const v0, 0x7f0202ea

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamBrokenIcon:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x7f020180

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x7f0202e9

    goto :goto_0

    :cond_4
    const v0, 0x7f0202e8

    goto :goto_0
.end method

.method private getResizedHeight(IF)I
    .locals 2

    int-to-float v1, p1

    mul-float/2addr v1, p2

    float-to-int v0, v1

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    :cond_0
    return v0
.end method

.method private getResizedWidth(IF)I
    .locals 2

    int-to-float v1, p1

    mul-float/2addr v1, p2

    float-to-int v0, v1

    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x2

    :cond_0
    return v0
.end method

.method private getScaleValue(II)F
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getLcdRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mHeight:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mWidth:I

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mWidth:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float v1, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mHeight:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mHeight:I

    int-to-float v2, v2

    int-to-float v3, p2

    div-float v1, v2, v3

    :cond_1
    return v1
.end method

.method private getScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size value to resize are wrong! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_1
    invoke-static {p1, p2, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v3

    :cond_2
    :goto_2
    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Ljava/lang/System;->gc()V

    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OutOfMemoryError : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getSprDrawable(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020182

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableHyperMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02018e

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShowVideoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initialize(Landroid/os/Bundle;Z)V
    .locals 11

    const-string/jumbo v8, "SlideShowAdapter"

    const-string/jumbo v9, "initialize"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v8, "path"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v8, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "selectionMode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSelectionMode:Z

    const-string/jumbo v8, "slideShowPath"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "smartViewMode"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSmartViewMode:Z

    :cond_0
    const-string/jumbo v8, "index"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    :cond_1
    if-nez v4, :cond_2

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSmartViewMode:Z

    if-nez v8, :cond_2

    const-string/jumbo v8, "SlideShowAdapter"

    const-string/jumbo v9, "mediaPath is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    sget-boolean v8, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-eqz v8, :cond_3

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v8, :cond_4

    const-string/jumbo v8, "SlideShowAdapter"

    const-string/jumbo v9, "mSourceMediaSet is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v8, "SlideShowAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    const/4 v8, 0x4

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aput-object v9, v5, v8

    const/4 v8, 0x2

    aput-object p1, v5, v8

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v5, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v8

    const-string/jumbo v9, "SEARCH_INFO_SAVE_RESTORE"

    invoke-virtual {v8, v9, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    sget-boolean v8, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSelectionMode:Z

    if-nez v8, :cond_6

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsSmartViewMode:Z

    if-eqz v8, :cond_7

    :cond_6
    const-string/jumbo v8, "mediaItemOrderMap"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    const-string/jumbo v8, "totalCount"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v8, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;

    invoke-virtual {v8, v3, v7}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->initialize(Ljava/util/LinkedHashMap;I)V

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iget v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    new-array v8, v8, [Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private isVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadInitialItems()V
    .locals 12

    const/16 v9, 0x14

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingFinished:Z

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v10, :cond_8

    iget v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    if-le v10, v9, :cond_1

    move v6, v7

    :goto_0
    if-eqz v6, :cond_a

    iget v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    add-int/lit8 v10, v10, 0x14

    iget v11, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    if-le v10, v11, :cond_2

    move v5, v7

    :goto_1
    iget v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    if-eqz v5, :cond_3

    iget v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iget v11, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    sub-int v0, v10, v11

    :goto_2
    sget-boolean v10, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-nez v10, :cond_0

    if-ne v0, v9, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    const/16 v10, 0x3e8

    if-le v9, v10, :cond_0

    iget v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    div-int/lit16 v9, v9, 0x3e8

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v0, v9

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9, v1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v9, "SlideShowAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "index = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "  totalCount = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    add-int/lit8 v2, v1, 0x1

    aput-object v3, v10, v1

    move v1, v2

    goto :goto_3

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    move v5, v8

    goto :goto_1

    :cond_3
    move v0, v9

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_5

    const/4 v1, 0x0

    rsub-int/lit8 v0, v0, 0x14

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v1, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    const-string/jumbo v7, "SlideShowAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    add-int/lit8 v2, v1, 0x1

    aput-object v3, v9, v1

    move v1, v2

    goto :goto_4

    :cond_5
    sget-boolean v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-nez v7, :cond_6

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-instance v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    invoke-virtual {v7, v8, v9}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->init(II)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6
    sget-boolean v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-eqz v7, :cond_9

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    if-eqz v7, :cond_9

    iput v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    :cond_7
    :goto_5
    sget-boolean v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->loadPreviousMediaItem(I)V

    :cond_8
    :goto_6
    return-void

    :cond_9
    sget-boolean v7, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    add-int/lit8 v7, v7, 0x14

    iput v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    goto :goto_5

    :cond_a
    const/4 v1, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    if-nez v9, :cond_8

    iget v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget v10, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    invoke-virtual {v9, v8, v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    add-int/lit8 v2, v1, 0x1

    aput-object v3, v9, v1

    move v1, v2

    goto :goto_7

    :cond_b
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    goto :goto_6
.end method

.method private loadMediaItems(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v0, v0, -0x5

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->loadNextMediaItems()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPrevStart:I

    add-int/lit8 v0, v0, 0x5

    if-ge p1, v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_SLIDESHOW_SWIPEZOOM:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPrevStart:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->loadPreviousMediaItem(I)V

    goto :goto_0
.end method

.method private loadNextMediaItems()V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    if-nez v3, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    if-le v3, v4, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    if-eqz v3, :cond_0

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    :cond_0
    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    invoke-virtual {v3, v4, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->init(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x14

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    if-eqz v3, :cond_2

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    :cond_2
    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    invoke-virtual {v3, v4, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->init(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    if-le v3, v4, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    if-eqz v3, :cond_4

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    :cond_4
    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    invoke-virtual {v3, v4, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->init(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    goto :goto_0

    :cond_5
    const/16 v0, 0x14

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    if-eqz v3, :cond_6

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    :cond_6
    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    invoke-virtual {v3, v4, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->init(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    goto :goto_0

    :cond_7
    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    if-le v3, v4, :cond_9

    :goto_1
    if-eqz v1, :cond_a

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    sub-int v0, v3, v4

    :goto_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    if-eqz v3, :cond_8

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    :cond_8
    new-instance v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;-><init>(Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    invoke-virtual {v3, v4, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->init(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPartialLoadingTask:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;

    new-array v4, v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter$PartialLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    if-eqz v1, :cond_b

    :goto_3
    iput v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mNeedFrontLoad:Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_1

    :cond_a
    const/16 v0, 0x14

    goto :goto_2

    :cond_b
    iget v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    add-int/lit8 v2, v2, 0x14

    goto :goto_3
.end method

.method private loadPreviousMediaItem(I)V
    .locals 8

    if-nez p1, :cond_1

    iget v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iget v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    sub-int/2addr v5, v6

    const/16 v6, 0x14

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    add-int/lit8 v3, v5, -0x14

    const/16 v2, 0x14

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v3, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v5, "SlideShowAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPrevStart:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    add-int/lit8 v4, v3, 0x1

    aput-object v0, v6, v3

    move v3, v4

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    iget v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    sub-int v2, v5, v6

    iget v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mStart:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mIsLoadingDone:Z

    goto :goto_0

    :cond_1
    add-int/lit8 v5, p1, -0x14

    if-ltz v5, :cond_2

    add-int/lit8 v3, p1, -0x14

    const/16 v2, 0x14

    :goto_2
    iput v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mPrevStart:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v3, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v5, "SlideShowAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    add-int/lit8 v4, v3, 0x1

    aput-object v0, v6, v3

    move v3, v4

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    move v2, p1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private makeFacesInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->loadFace()[Lcom/sec/android/gallery3d/data/Face;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v10, v1

    if-lez v10, :cond_0

    array-length v10, v1

    invoke-virtual {p2, v10}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->createFacesInfo(I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v10

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v10

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v10

    int-to-float v4, v10

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v10

    int-to-float v3, v10

    :goto_0
    const/4 v2, 0x0

    :goto_1
    array-length v10, v1

    if-ge v2, v10, :cond_0

    aget-object v10, v1, v2

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Face;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v2}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->createFaceInfo(I)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    div-float v5, v10, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v12

    div-float v8, v4, v10

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v12

    div-float v9, v3, v10

    cmpg-float v10, v8, v9

    if-gez v10, :cond_5

    move v7, v8

    :goto_2
    const/high16 v10, 0x40200000    # 2.5f

    cmpg-float v10, v7, v10

    if-gez v10, :cond_6

    const v10, 0x3f99999a    # 1.2f

    cmpg-float v10, v7, v10

    if-gez v10, :cond_3

    const v7, 0x3f99999a    # 1.2f

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    div-float v6, v10, v3

    :goto_3
    invoke-virtual {p2, v2, v5, v6, v7}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->setFaceInfo(IFFF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v10

    int-to-float v4, v10

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v10

    int-to-float v3, v10

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_2

    :cond_6
    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    div-float v6, v10, v3

    goto :goto_3
.end method


# virtual methods
.method public addSlideItem(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V
    .locals 5

    sget-object v2, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "SlideShowAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addSlideItem, index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->drawDecorView(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBitmap(I)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v4, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    const-string/jumbo v3, "SlideShowAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getBitmap index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    :try_start_1
    monitor-exit v4

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SlideShowAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getBrokenThumbnail(I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    rem-int v10, p1, v13

    const-string/jumbo v13, "SlideShowAdapter"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "getBrokenThumbnail, index="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", reqIndex="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    if-nez v7, :cond_2

    const-string/jumbo v13, "SlideShowAdapter"

    const-string/jumbo v14, "item is null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_1

    const v4, 0x7f0202e9

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v13, v4, v14}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    if-eqz v1, :cond_0

    if-nez v3, :cond_6

    :cond_0
    const/4 v1, 0x0

    :goto_2
    return-object v1

    :cond_1
    const v4, 0x7f0202e8

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isVideo(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_4

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_3

    const v4, 0x7f0202eb

    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v13, v4, v14}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_3
    const v4, 0x7f0202ea

    goto :goto_3

    :cond_4
    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceDecorView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_5

    const v4, 0x7f0202e9

    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    invoke-static {v13, v4, v14}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_5
    const v4, 0x7f0202e8

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v13, v6, v9

    div-int/lit8 v11, v13, 0x2

    sub-int v13, v5, v8

    div-int/lit8 v12, v13, 0x2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v13

    if-eqz v13, :cond_7

    move-object v13, v1

    :goto_5
    invoke-direct {v2, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v13, v11

    int-to-float v14, v12

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, v3, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_7
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    return v0
.end method

.method public getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    const-string/jumbo v0, "SlideShowAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "get MediaItem, reqIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->USE_NEW_SLIDESHOW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->loadMediaItems(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "SlideShowAdapter"

    const-string/jumbo v1, "mItemList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getSlideItem(I)Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;
    .locals 6

    sget-object v3, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "SlideShowAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSlideItem index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ne v2, p1, :cond_0

    :try_start_1
    monitor-exit v3

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SlideShowAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSourceMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mSourceMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    return v0
.end method

.method public isDataContainsMTPPath()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "mtp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isDataContainsSDCardPath()Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mItemList:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v1, v5, v4

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/MediaSetUtils;->isSDCardPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_1
    return v2

    :cond_2
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public isRequestInProgress(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getSlideItem(I)Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->isRequestInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "SlideShowAdapter"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->cancelTask()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->destroyResources()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "SlideShowAdapter"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->clear()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->loadInitialItems()V

    return-void
.end method

.method public reInitAdapter(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->initialize(Landroid/os/Bundle;Z)V

    return-void
.end method

.method public requestBitmapResource(I)V
    .locals 8

    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestBitmapResource start, index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->LOCK:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemCount:I

    rem-int v3, p1, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    if-nez v4, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mCache:Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->getIndex()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->isRequestInProgress()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "imageItem.isRequestInProgress()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->isRequestInProgress()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bitmap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bitmap.isRecycled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "SlideShowAdapter"

    const-string/jumbo v6, "skip request"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    invoke-interface {v4, v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;->onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;)V

    :cond_2
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    const-string/jumbo v4, "SlideShowAdapter"

    const-string/jumbo v6, "Recycle imageItem"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->cancelImageRequest()V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->recycle()V

    :cond_4
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    new-instance v1, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    invoke-direct {v1, v4, v2, v3, v6}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;)V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem;->requestImage()V

    const-string/jumbo v4, "SlideShowAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestBitmapResource Requested = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public requestInitialBitmapResources(II)V
    .locals 4

    const-string/jumbo v1, "SlideShowAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request bitmap [startIndex]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", [endIndex]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->isRequestInProgress(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->requestBitmapResource(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mMediaItemStart:I

    return-void
.end method

.method public setOnSlideImageItemListener(Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/slideshowview/SlideShowAdapter;->mOnSlideImageItemListener:Lcom/sec/samsung/gallery/view/image_manager/SlideImageItem$OnSlideImageItemListener;

    return-void
.end method
