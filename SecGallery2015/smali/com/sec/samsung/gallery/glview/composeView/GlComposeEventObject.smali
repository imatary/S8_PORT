.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeEventObject.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;
    }
.end annotation


# static fields
.field private static final BLUR_SHADOW_SIZE:I = 0x2

.field static final DOWNLOADING:I = 0x2

.field private static final FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

.field private static final FeatureUseQuickBrowsing:Z

.field private static final MSG_BITMAP_UPDATE:I = 0x5

.field private static final MSG_CACHE_UPDATE:I = 0x4

.field private static final MSG_HIDE_DELAY:J = 0x5dcL

.field private static final MSG_HIDE_SEEK_BAR:I = 0x1

.field private static final RES_ID_NEW_MARK:I = 0x6

.field private static final RES_ID_THUMB_STROKE:I = 0x7

.field private static final SEEK_BAR_INITIAL_WIDTH:I = 0x64

.field public static final SHARE_FAIL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlCompsEvntObj"

.field private static final THRESHOLD_HORIZONTAL_FLING_DISP:I = 0x5a

.field private static final THRESHOLD_HORIZONTAL_SEEK_BAR_VISIBLE:I = 0x64

.field private static final THRESHOLD_VERTICAL_SEEK_BAR_VISIBLE:I = 0x32

.field static final UPLOADING:I = 0x1

.field private static final USE_SMART_CROP:Z

.field private static mDefaultCover:Landroid/graphics/Bitmap;


# instance fields
.field private isAnimationVisible:I

.field private isDecorSet:Z

.field private mAlbumIndex:I

.field private final mAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPos:I

.field private mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mDecorViewTransparent:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

.field private mFuture:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mFutureCache:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;",
            ">;"
        }
    .end annotation
.end field

.field private final mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

.field private mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private mHLVideoIconEndMarginPixel:I

.field private mHLVideoIconSizePixel:I

.field private mHeightViewRatio:F

.field private mHorizontalScrollEnabled:Z

.field private mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxCount:I

.field private mOnscrollHorStart:I

.field private mPositionGradient:F

.field private mPrevMoveX:I

.field private mPrevPos:I

.field private mPreviousAlbumTitle:Ljava/lang/String;

.field private mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

.field private mSeekBarPosX:F

.field private mSeekEnabled:Z

.field private mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mSeekThumbSize:F

.field private mShareUploadingIconMarginPixel:I

.field private mShareUploadingiconHeightPixel:I

.field private mShareUploadingiconWidthPixel:I

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private mThumbPosY:F

.field private mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

.field private mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseQuickBrowsing:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceEventViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportSmartCrop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->USE_SMART_CROP:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mOnscrollHorStart:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHorizontalScrollEnabled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevMoveX:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorViewTransparent:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->initDimensions()V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateCache(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->hideSeekBar()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)[Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;[Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->startAnim([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;F)F
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateBitmap(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidthViewRatio:F

    return v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeightViewRatio:F

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mOnscrollHorStart:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    return p1
.end method

.method private addChannelViewHLPlayIcon(I)V
    .locals 12

    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;ILcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->mChannelViewHVPlayIconClickListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->access$1100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/glcore/GlObject;->getWidth(Z)F

    move-result v0

    div-float/2addr v0, v10

    div-float v1, v7, v10

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconEndMarginPixel:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v1

    sub-float v8, v0, v1

    div-float v0, v6, v10

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconEndMarginPixel:I

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v1, v11}, Lcom/sec/android/gallery3d/glcore/GlObject;->getHeight(Z)F

    move-result v1

    div-float/2addr v1, v10

    sub-float v9, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;->access$1200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;Z)V

    return-void
.end method

.method private addShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;
    .locals 16

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v3, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v0, p3

    int-to-float v14, v0

    sub-float v14, v14, p6

    move/from16 v0, p2

    int-to-float v15, v0

    sub-float v15, v15, p7

    invoke-direct {v3, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v11, v3, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v10}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Paint;

    const/4 v12, 0x1

    invoke-direct {v7, v12}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v10, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/PorterDuffXfermode;

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v2, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/BlurMaskFilter;

    move/from16 v0, p5

    int-to-float v12, v0

    sget-object v13, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v4, v12, v13}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v7, v4}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p2

    invoke-static {v0, v1, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v5, v12, v13, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0
.end method

.method private addUploadingIcon(II)V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v6, :cond_0

    new-instance v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->createCanvasForAnim(I)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/4 v6, 0x3

    if-eq p2, v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->startAnim([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconWidthPixel:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v1

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconHeightPixel:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isNewMark(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlView;->getId()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    add-int v2, v6, v7

    :cond_1
    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getWidth(Z)F

    move-result v6

    div-float/2addr v6, v8

    div-float v7, v1, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    sub-float/2addr v6, v7

    int-to-float v7, v2

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    sub-float v4, v6, v7

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getHeight(Z)F

    move-result v6

    div-float/2addr v6, v8

    div-float v7, v0, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    return-void
.end method

.method private convX(F)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidthViewRatio:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private createCanvasForAnim(I)Lcom/sec/android/gallery3d/glcore/GlCanvas;
    .locals 5

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    const v3, 0x7f02035e

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconWidthPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconHeightPixel:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->initCanvasForAnim(I)V

    :cond_1
    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconWidthPixel:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconHeightPixel:I

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    goto :goto_0
.end method

.method private drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;
    .locals 5

    const/4 v4, 0x7

    if-nez p1, :cond_0

    new-instance p1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p1, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->findViewByID(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    const v3, 0x7f020066

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0, v4}, Lcom/sec/android/gallery3d/glcore/GlView;->addChild(Lcom/sec/android/gallery3d/glcore/GlView;I)V

    :cond_1
    return-object p1
.end method

.method private hideSeekBar()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GlCompsEvntObj"

    const-string/jumbo v1, "hideSeekBar returned. Fade out anim already running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getAlpha()F

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;-><init>(Lcom/sec/android/gallery3d/glcore/GlObject;FF)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setParams(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->start()V

    goto :goto_0
.end method

.method private initCanvasForAnim(I)V
    .locals 10

    const/4 v9, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    :goto_0
    new-array v6, v9, [Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v9, :cond_2

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    new-instance v7, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v7, v8, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v6, v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    if-ne p1, v7, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f003d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v3

    :try_start_1
    const-string/jumbo v6, "GlCompsEvntObj"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method private initChilds(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 13

    const/4 v12, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    new-instance v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;

    invoke-direct {v9, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    neg-float v0, v0

    div-float/2addr v0, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollThumbHeight:F

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollBottomMargin:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSeekThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSeekThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v2, 0x7f02013a

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/decoder/DecoderInterface;->decodeResource(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const v4, 0x7f1001bb

    const/4 v5, 0x2

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollThumbShadowHeight:F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->addShadow(Landroid/graphics/Bitmap;IIIIFF)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iput-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSeekThumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    new-instance v8, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSeekThumbBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v0, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v12}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseOwnThumbTouchAnim:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setThumbPressScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setThumbFocusScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_3
    return-void
.end method

.method private initDimensions()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b022a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconWidthPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0229

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconHeightPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0837

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconSizePixel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0836

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVideoIconEndMarginPixel:I

    return-void
.end method

.method private isNewMark(I)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v2, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isNewChannel()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isVaildHLVideoIcon(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->hasHLVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private removeSeekThumb()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    return-void
.end method

.method private requestCacheUpdate(ILcom/sec/android/gallery3d/data/ChannelAlbum;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)Lcom/sec/android/gallery3d/util/Future;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/gallery3d/data/ChannelAlbum;",
            "Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;",
            ")",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V

    iput-object p3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;->futureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {v3, p0, v4, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$ItemDecodeJob;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;ILcom/sec/android/gallery3d/data/ChannelAlbum;)V

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    return-object v2
.end method

.method private resetAttributes()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidthViewRatio:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeightViewRatio:F

    return-void
.end method

.method private resetLayoutForUploadingIcon()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconWidthPixel:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v1

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingiconHeightPixel:I

    int-to-float v6, v6

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v2, 0x0

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isNewMark(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/glcore/GlView;->getChild(I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlView;->getId()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    add-int v2, v6, v7

    :cond_2
    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getWidth(Z)F

    move-result v6

    div-float/2addr v6, v8

    div-float v7, v1, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    sub-float/2addr v6, v7

    int-to-float v7, v2

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    sub-float v4, v6, v7

    invoke-virtual {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getHeight(Z)F

    move-result v6

    div-float/2addr v6, v8

    div-float v7, v0, v8

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mShareUploadingIconMarginPixel:I

    int-to-float v7, v7

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->convX(F)F

    move-result v7

    sub-float v5, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method private setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$6;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$1;)V

    iput-object p1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureMediaitem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->index:I

    iput-object p2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$EventImageFutureListener;->futureClass:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_1
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitUrgent(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFuture:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_0
.end method

.method private setDefaultBitmapToCanvas()V
    .locals 10

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v6

    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v7

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v7, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setTexCoords(FFFF)V

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setRoundedOption(IF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setRoundRadius(F)V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v9, v0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v8, v0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getCanvasManager()Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setViewSub(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    :cond_3
    return-void

    :cond_4
    new-instance v6, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDefaultCover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v6, v0, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    goto/16 :goto_0
.end method

.method private startAnim([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;-><init>([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->setUploadingList([Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->startCheckVIAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAnimListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->setAnimationListener(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;)V

    goto :goto_0
.end method

.method private updateBitmap(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V
    .locals 16

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureMediaitem:Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v10

    :goto_1
    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v12, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_2

    instance-of v2, v12, Lcom/sec/android/gallery3d/data/UnionImage;

    if-nez v2, :cond_2

    instance-of v2, v12, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->USE_SMART_CROP:Z

    if-eqz v2, :cond_a

    const/4 v15, 0x0

    instance-of v2, v12, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_6

    move-object v2, v12

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v15

    :goto_2
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float v13, v2, v3

    const/high16 v2, 0x3f400000    # 0.75f

    cmpl-float v2, v13, v2

    if-ltz v2, :cond_9

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->RATIO_4vs3:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->ordinal()I

    move-result v14

    :goto_3
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    :cond_3
    :goto_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->index:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-object v12, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->USE_SMART_CROP:Z

    if-eqz v2, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/sec/android/gallery3d/util/SmartCropUtils;->calcSmartCropRectForStory(Landroid/graphics/RectF;IIFFI)Landroid/graphics/Rect;

    move-result-object v11

    :goto_5
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setManualRecycle(Z)V

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setVertexRotation(I)V

    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v11, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v4, v11, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setTexCoords(FFFF)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(F)F

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setRoundedOption(IF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAlbumRoundRadius:F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setRoundRadius(F)V

    invoke-virtual {v10, v9}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    aget-object v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->requestRender()V

    goto/16 :goto_0

    :cond_5
    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v10, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    goto/16 :goto_1

    :cond_6
    instance-of v2, v12, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v2, :cond_7

    move-object v2, v12

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionImage;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v15

    goto/16 :goto_2

    :cond_7
    instance-of v2, v12, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    if-eqz v2, :cond_8

    move-object v2, v12

    check-cast v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getSmartCropRectFs()Ljava/util/ArrayList;

    move-result-object v15

    goto/16 :goto_2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_9
    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->RATIO_16vs9:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;->ordinal()I

    move-result v14

    goto/16 :goto_3

    :cond_a
    instance-of v2, v12, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_b

    move-object v2, v12

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v1

    goto/16 :goto_4

    :cond_b
    instance-of v2, v12, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v2, :cond_3

    move-object v2, v12

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v1

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    move-object v4, v1

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object v11

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorViewTransparent:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorViewTransparent:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorViewTransparent:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->futureDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    goto/16 :goto_6

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isDecorSet:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorViewTransparent:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto/16 :goto_6

    :cond_10
    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    aget-object v8, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setVertexRotation(I)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setDefaultBitmapToCanvas()V

    :cond_11
    const-string/jumbo v2, "GlCompsEvntObj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bitmap in album - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not proper."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateCache(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->itemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->decodeCount:I

    iput v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    iget v4, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->index:I

    if-ne v3, v4, :cond_0

    iget-object v3, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$FutureClass;->list:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->initChilds(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :cond_2
    iget v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    if-lez v3, :cond_3

    iget v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateThumbWidth(I)V

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v4, v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float/2addr v4, v5

    add-float v2, v3, v4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollThumbHeight:F

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateDecorView(Lcom/sec/android/gallery3d/glcore/GlView;)V
    .locals 5

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    float-to-int v0, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getCanvasManager()Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;->findInstance(II)Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setCanvasSub(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setViewSub(Lcom/sec/android/gallery3d/glcore/GlView;)V

    return-void
.end method

.method private updateThumbWidth(I)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v2

    div-int v1, v2, p1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    :cond_0
    return-void
.end method


# virtual methods
.method cancelDecodeTask(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->getCanvas()Lcom/sec/android/gallery3d/glcore/GlCanvas;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->reset()V

    :cond_1
    return-void
.end method

.method public getHLVideoIconObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    return-object v0
.end method

.method initializeItems(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;I)V
    .locals 8

    const/4 v7, 0x0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_9

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCanvasMgr:Lcom/sec/samsung/gallery/glview/composeView/GlCanvasManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_2

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecoded:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->itemsUpdateNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-direct {p0, p4, v0, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->requestCacheUpdate(ILcom/sec/android/gallery3d/data/ChannelAlbum;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFutureCache:Lcom/sec/android/gallery3d/util/Future;

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->resetAttributes()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->resetLayoutForUploadingIcon()V

    if-eqz p1, :cond_3

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    invoke-virtual {p0, v0, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateChannelViewHLPlayIcon(II)V

    :cond_3
    return-void

    :cond_4
    move v0, v7

    goto :goto_0

    :cond_5
    move-object v0, p1

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCoverItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;JII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousAlbumTitle:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->itemCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->itemCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v7, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    :cond_8
    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "GlCompsEvntObj"

    const-string/jumbo v1, "initializeItems(): ItemList null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onFlingEnd(F)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setIsFlingAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x5dc

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    :cond_0
    return-void
.end method

.method public onFlingProcess(FF)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, p1, v3

    if-nez v0, :cond_3

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float p1, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCy:[F

    aget v1, v1, v4

    invoke-virtual {v0, p1, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->position:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    if-gez v0, :cond_0

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    goto :goto_0

    :cond_3
    cmpl-float v0, p2, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float p1, v0, v1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mCy:[F

    aget v1, v1, v4

    invoke-virtual {v0, p1, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    :cond_5
    :goto_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->position:I

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float p1, v0, v1

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    if-gez v0, :cond_5

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    goto :goto_3
.end method

.method protected onMoved(II)Z
    .locals 11

    const/16 v10, 0x32

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHorizontalScrollEnabled:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    if-nez v1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v10, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHorizontalScrollEnabled:Z

    if-eqz v1, :cond_7

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x64

    if-le v1, v4, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v10, :cond_7

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevMoveX:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x5a

    if-ge v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isAnimationVisible:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mFadeOutAnimSeekThumb:Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlAlphaAnimation;->stop()V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    invoke-virtual {v1, v4, v5, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const v4, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    :goto_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-boolean v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isDecorVisibile:Z

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float/2addr v3, v8

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v4, v8

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v3, v4

    cmpl-float v1, v1, v3

    if-lez v1, :cond_8

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    div-float/2addr v1, v8

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v3, v8

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float v0, v1, v3

    :goto_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    invoke-virtual {v1, v0, v3, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    sub-float/2addr v1, v3

    div-float/2addr v1, v8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    sub-float/2addr v1, v3

    add-float/2addr v1, v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    div-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    if-lt v1, v3, :cond_5

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    :cond_5
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevPos:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    if-le v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {p0, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iput v3, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->position:I

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x5dc

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHorizontalScrollEnabled:Z

    goto/16 :goto_1

    :cond_7
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevMoveX:I

    goto/16 :goto_2

    :cond_8
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v3, v3

    div-float/2addr v3, v8

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_9

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v1, v1

    div-float/2addr v1, v8

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    div-float/2addr v3, v8

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float v0, v1, v3

    goto/16 :goto_3

    :cond_9
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v3

    add-float v0, v1, v3

    goto/16 :goto_3
.end method

.method protected onPressed(IIII)Z
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mOnscrollHorStart:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convX(I)F

    move-result v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekBarPosX:F

    :cond_0
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevMoveX:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onReleased(IIII)Z
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mScrollEnabled:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHorizontalScrollEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mOnscrollHorStart:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPrevMoveX:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekEnabled:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const-wide/16 v6, 0x5dc

    move v4, v3

    move v5, v3

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    return v2
.end method

.method public removeChannelViewHLPlayIcon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLPlayIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$GlChannelViewHLPlayIconObject;

    :cond_0
    return-void
.end method

.method removeUploadingIcon()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingIconObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;->onCancel()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingVIAnim:Lcom/sec/samsung/gallery/glview/composeView/GlUploadingVIAnimation;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlCanvas;->recycle()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mUploadingList:[Lcom/sec/android/gallery3d/glcore/GlCanvas;

    :cond_3
    return-void
.end method

.method public setHLVGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHLVGenericMotionListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    return-void
.end method

.method public updateChannelViewHLPlayIcon(II)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->isVaildHLVideoIcon(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->addChannelViewHLPlayIcon(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeChannelViewHLPlayIcon()V

    goto :goto_0
.end method

.method updatePos(I)V
    .locals 14

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    const-string/jumbo v0, "GlCompsEvntObj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePos(): mAlbumIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mEventItemPositions:Ljava/util/Map;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v13

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->rConvX(F)I

    move-result v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v0, v13, v9, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setObjectSize(III)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mDeleteAnim:Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlDeleteAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v6, v0, p1

    if-eqz v6, :cond_18

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getCoverItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v10, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->access$2900(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;)I

    move-result v1

    if-eq v0, v1, :cond_b

    const/4 v10, 0x1

    :cond_4
    :goto_1
    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousAlbumTitle:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-eqz v10, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->itemCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;JII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    :cond_6
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FeatureUseQuickBrowsing:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    if-lez v0, :cond_12

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->position:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mMaxCount:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_11

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->initChilds(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    :cond_7
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mHeight:F

    neg-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollThumbHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollBottomMargin:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->decodeCount:I

    :goto_4
    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->updateThumbWidth(I)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, v8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPositionGradient:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mWidth:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollSideMargin:F

    add-float/2addr v1, v2

    add-float v12, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mThumbPosY:F

    const/4 v2, 0x0

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mSeekThumbSize:F

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollThumbHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mCurrentPos:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->access$3000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mPreviousCompareItem:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;->access$3100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject$CompareItemInfo;)I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->itemCount:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v10, 0x1

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v8, 0x1

    goto/16 :goto_4

    :cond_11
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeSeekThumb()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :cond_13
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setBitmapToCanvas(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItemStatus:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ItemStatus;->isActivated:Z

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->LIVE:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_15

    iget-object v0, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelSharedStatus()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_15
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->FEATURE_USE_GRACE_EVENTVIEW_GUI:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v0, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mAlbumIndex:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/glcore/GlView;I)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    :goto_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setVertexRotation(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->setDefaultBitmapToCanvas()V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mGlComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->drawDecorViewOnRequest(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->drawThumbStroke(Lcom/sec/android/gallery3d/glcore/GlView;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    goto :goto_5

    :cond_17
    const-string/jumbo v0, "GlCompsEvntObj"

    const-string/jumbo v1, "updatePos(): ItemList null or empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v0, "GlCompsEvntObj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePos(): Album null at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method updateUploadingIcon(III)V
    .locals 0

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->removeUploadingIcon()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventObject;->addUploadingIcon(II)V

    goto :goto_0
.end method
