.class public Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MapMarkerThumbnailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJobListener;,
        Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$PreBitmapThumbnailJob;,
        Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;,
        Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;
    }
.end annotation


# static fields
.field private static final MSG_RUN_OBJECT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MapMarkerThmListAdapter"


# instance fields
.field private final DEFAULT_HOVER_POPUP_THUMBNAIL_HEIGHT:I

.field private final DEFAULT_HOVER_POPUP_THUMBNAIL_WIDTH:I

.field private mClusterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEnterDetailView:Z

.field private mHoverCustomView:Landroid/widget/ImageView;

.field private mHoverEnterTime:J

.field private final mImageOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

.field private mIsClickImageView:Z

.field private mIsHoveringOnHoverView:Z

.field private mIsHoveringOnImageView:Z

.field private mIsTouchImageView:Z

.field private final mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMakeAddressTask:Ljava/lang/Thread;

.field private mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

.field private final mMapViewLayout:Landroid/view/View;

.field private mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

.field private mOnLoadingListener:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;

.field private final mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private mThumbType:I

.field private mThumbnailAddress_txt:Landroid/widget/TextView;

.field private mThumbnailPoi_logo:Landroid/view/View;

.field private mThumbnailPoi_txt:Landroid/widget/TextView;

.field private final mUseDreamMapViewUI:Z

.field private final mUseGraceMapViewUI:Z

.field private final playIconResizeRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamMapViewUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseDreamMapViewUI:Z

    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->DEFAULT_HOVER_POPUP_THUMBNAIL_WIDTH:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->DEFAULT_HOVER_POPUP_THUMBNAIL_HEIGHT:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnHoverView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnImageView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsClickImageView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsTouchImageView:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverEnterTime:J

    const v0, 0x3f3851ec    # 0.72f

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->playIconResizeRatio:F

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$1;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$3;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$10;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$10;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

    new-instance v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$11;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$11;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mImageOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mEnterDetailView:Z

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    check-cast p1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbType:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v0

    const v1, 0x7e900

    if-gt v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbType:I

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$2;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$2;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mClusterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->updateTitle(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnImageView:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnImageView:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getFullBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getPlayIconDrawable(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->drawBurstPlayIconForHover(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->drawVideoPlayIconForHover(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsClickImageView:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsClickImageView:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mEnterDetailView:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/samsung/gallery/view/adapter/ReloadTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View$OnGenericMotionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->generateName(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setTitle(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_logo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->reload()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Lcom/sec/android/gallery3d/util/ThreadPool;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsTouchImageView:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsTouchImageView:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverEnterTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverEnterTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnHoverView:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mIsHoveringOnHoverView:Z

    return p1
.end method

.method private drawBurstPlayIconForHover(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move-object v6, v8

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v1, v9, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v0, v9, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    if-lt v1, v5, :cond_1

    if-ge v0, v4, :cond_2

    :cond_1
    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    :cond_2
    sub-int v9, v1, v5

    iput v9, v3, Landroid/graphics/Rect;->left:I

    sub-int v9, v0, v4

    iput v9, v3, Landroid/graphics/Rect;->top:I

    add-int v9, v1, v5

    iput v9, v3, Landroid/graphics/Rect;->right:I

    add-int v9, v0, v4

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v9, v1, 0x2

    mul-int/lit8 v10, v0, 0x2

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v4, 0x2

    const/4 v11, 0x1

    invoke-static {p2, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, p1, v12, v12, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, v7, v8, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v8, 0x1f

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private drawVideoPlayIconForHover(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v1, v9, 0x4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v0, v9, 0x4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    if-lt v1, v5, :cond_1

    if-ge v0, v4, :cond_2

    :cond_1
    div-int/lit8 v5, v1, 0x2

    div-int/lit8 v4, v0, 0x2

    :cond_2
    sub-int v9, v1, v5

    iput v9, v3, Landroid/graphics/Rect;->left:I

    sub-int v9, v0, v4

    iput v9, v3, Landroid/graphics/Rect;->top:I

    add-int v9, v1, v5

    iput v9, v3, Landroid/graphics/Rect;->right:I

    add-int v9, v0, v4

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v9, v1, 0x2

    mul-int/lit8 v10, v0, 0x2

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v4, 0x2

    const/4 v11, 0x1

    invoke-static {p2, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    const/4 v11, 0x1

    invoke-static {p1, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v6, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v8, v9, v3, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/16 v9, 0x1f

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->save(I)I

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method private generateName(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/util/ReverseGeocoder;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;",
            "Lcom/sec/android/gallery3d/util/ReverseGeocoder;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;

    invoke-direct {v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getLongitude()D

    move-result-wide v2

    iget-wide v8, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    cmpl-double v7, v8, v0

    if-lez v7, :cond_1

    iput-wide v0, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLatitude:D

    iput-wide v2, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLatLongitude:D

    :cond_1
    iget-wide v8, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    cmpg-double v7, v8, v0

    if-gez v7, :cond_2

    iput-wide v0, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLatitude:D

    iput-wide v2, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLatLongitude:D

    :cond_2
    iget-wide v8, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    cmpl-double v7, v8, v2

    if-lez v7, :cond_3

    iput-wide v0, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLatitude:D

    iput-wide v2, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMinLonLongitude:D

    :cond_3
    iget-wide v8, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    cmpg-double v7, v8, v2

    if-gez v7, :cond_0

    iput-wide v0, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLatitude:D

    iput-wide v2, v5, Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;->mMaxLonLongitude:D

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v5}, Lcom/sec/android/gallery3d/util/ReverseGeocoder;->computeAddress(Lcom/sec/android/gallery3d/util/ReverseGeocoder$SetLatLong;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getFullBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/16 v1, 0x200

    invoke-direct {p0, v1, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "MapMarkerThmListAdapter"

    const-string/jumbo v2, "file path is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPlayIconDrawable(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->isVideoType(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_1

    const v1, 0x7f0201ea

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    const v1, 0x7f0201f7

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSlowFastMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_3

    const v1, 0x7f0201e7

    :goto_1
    goto :goto_0

    :cond_3
    const v1, 0x7f0201f5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableHyperMotion:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_5

    const v1, 0x7f0201e9

    :goto_2
    goto :goto_0

    :cond_5
    const v1, 0x7f0201f6

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFlipPhoto:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_7

    const v1, 0x7f0201e8

    :goto_3
    goto :goto_0

    :cond_7
    const v1, 0x7f0201f9

    goto :goto_3

    :cond_8
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRecordingMode()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->WECHATSIGHT_ALBUM_BUCKET_ID:I

    if-eq v2, v3, :cond_9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v2

    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_WECHATSIGHT_ALBUM_BUCKET_ID:I

    if-ne v2, v3, :cond_a

    :cond_9
    const v1, 0x7f020168

    goto :goto_0

    :cond_a
    const-wide/32 v2, 0x8000000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->Support360Contents:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_b

    const v1, 0x7f0201e2

    :goto_4
    goto/16 :goto_0

    :cond_b
    const v1, 0x7f0201f8

    goto :goto_4

    :cond_c
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_d

    const v1, 0x7f0201eb

    :goto_5
    goto/16 :goto_0

    :cond_d
    const v1, 0x7f0201f3

    goto :goto_5

    :cond_e
    const-wide/16 v2, 0x200

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v2, :cond_f

    const v1, 0x7f0201e3

    :goto_6
    goto/16 :goto_0

    :cond_f
    const v1, 0x7f0201f4

    goto :goto_6
.end method

.method private getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v4, p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v3

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isVideoType(Lcom/sec/android/gallery3d/data/MediaItem;)Z
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

.method private reload()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnLoadingListener:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnLoadingListener:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;->onLoadingComplete()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v7

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v8

    const-string/jumbo v0, "MapMarkerThmListAdapter"

    const-string/jumbo v1, "Out of memory"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setThumbImageViewListener(Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f1201bd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mImageOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$5;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/data/MediaItem;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$6;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$6;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$7;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Lcom/sec/android/gallery3d/data/MediaItem;ILandroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method private setTitle(I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$9;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateTitle(I)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$8;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;I)V

    const-string/jumbo v2, "MapMarkerSetTitle"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMakeAddressTask:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMakeAddressTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getEnterDetailView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mEnterDetailView:Z

    return v0
.end method

.method public getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23

    const-string/jumbo v20, "MapMarkerThmListAdapter"

    const-string/jumbo v21, "getview"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;->position:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, p1

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_1

    const/16 p2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v21, "layout_inflater"

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/LayoutInflater;

    if-eqz p2, :cond_a

    move-object/from16 v19, p2

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;

    iget-object v12, v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v10, v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    :goto_1
    const v20, 0x7f1201bc

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseDreamMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b06b5

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v17, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPaddingRelative(IIII)V

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    check-cast v20, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/sec/samsung/gallery/util/TTSUtil;->getFormatedString(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f1201c1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnGenericModionListener:Landroid/view/View$OnGenericMotionListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->setThumbImageViewListener(Landroid/view/View;Lcom/sec/android/gallery3d/data/MediaItem;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->isVideoType(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v20

    if-nez v20, :cond_4

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbType:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-nez v20, :cond_4

    :try_start_0
    new-instance v8, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v8}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_4
    :goto_3
    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbType:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v20

    sget-object v21, Lcom/sec/android/gallery3d/util/ThreadPool;->JOB_CONTEXT_STUB:Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;

    invoke-interface/range {v20 .. v21}, Lcom/sec/android/gallery3d/util/ThreadPool$Job;->run(Lcom/sec/android/gallery3d/util/ThreadPool$JobContext;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    :cond_5
    const/4 v6, 0x0

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->isVideoType(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v20

    if-nez v20, :cond_6

    const-wide/16 v20, 0x200

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v20

    if-eqz v20, :cond_7

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->getPlayIconDrawable(Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b019c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b019b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v11, v0

    div-float v20, v11, v18

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    div-float v20, v11, v18

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_8
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v12, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setFocusable(Z)V

    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v20

    if-eqz v20, :cond_9

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :cond_9
    new-instance v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;

    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$1;)V

    iput-object v10, v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;->mIconView:Landroid/widget/ImageView;

    iput-object v12, v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    move/from16 v0, p1

    iput v0, v9, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$ViewHolder;->position:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 p2, v19

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const v20, 0x7f0400a5

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    :goto_4
    const v20, 0x7f1201bd

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const v20, 0x7f1201be

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    goto/16 :goto_1

    :cond_b
    const v20, 0x7f0400a4

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    goto :goto_4

    :cond_c
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x29

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string/jumbo v20, "MapMarkerThmListAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "IOException : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mHoverCustomView:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->terminate()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMakeAddressTask:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMakeAddressTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMakeAddressTask:Ljava/lang/Thread;

    :cond_1
    return-void
.end method

.method public resetEnterDetailView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mEnterDetailView:Z

    return-void
.end method

.method public resume()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    const v1, 0x7f1201c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailAddress_txt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    const v1, 0x7f1201c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapViewLayout:Landroid/view/View;

    const v1, 0x7f1201c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_logo:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mUseGraceMapViewUI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_logo:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mThumbnailPoi_txt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->notifyDirty()V

    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "MapMarkerThmListAdapter"

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    new-instance v1, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$4;-><init>(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->setOnLoadDataListener(Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMapMarkerThumbReladTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->start()V

    goto :goto_0
.end method

.method public setMapItems(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p2, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mClusterItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "map"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->setType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_1
    :goto_1
    if-eqz p4, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;

    invoke-virtual {v1, p4}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->setName(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->setType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v1, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;

    invoke-virtual {v1, p4}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->setName(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setOnLoadingListener(Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter;->mOnLoadingListener:Lcom/sec/samsung/gallery/mapfragment/MapMarkerThumbnailListAdapter$OnLoadingListener;

    return-void
.end method
