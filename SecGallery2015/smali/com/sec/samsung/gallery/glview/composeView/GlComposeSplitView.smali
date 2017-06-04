.class public Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
.source "GlComposeSplitView.java"


# static fields
.field private static final CMD_SELECT_ALBUM:I = 0x65

.field private static final CMD_UPDATE_HEADER:I = 0x64

.field static final CMD_UPDATE_HEADER_BITMAP:I = 0x66

.field static final DURATION:I = 0x12c

.field public static SPLIT_RATIO_LAND:F = 0.0f

.field public static SPLIT_RATIO_PORT:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "GlComposeSplitView"

.field private static final USE_GRACE_GUI:Z


# instance fields
.field public mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mComposeSplitViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

.field private final mExpandedAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mFadeInAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

.field private final mListenerNewAlbumClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

.field private mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

.field private mNeedSetMode:Z

.field mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

.field private mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

.field private mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

.field private mPressed:Z

.field private final mShrinkAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

.field private final mSoftKeyHeightPixel:I

.field private mSupportExpand:Z

.field private mUpSideAlbumCount:I

.field private mUpdateBitmap:Z

.field private mValidView:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->USE_GRACE_GUI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSupportExpand:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPressed:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNeedSetMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpdateBitmap:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpSideAlbumCount:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerNewAlbumClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mExpandedAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mShrinkAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$4;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFadeInAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView$5;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mComposeSplitViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    iget v0, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mLandRatio:F

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    iget v0, p5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mPortRatio:F

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_PORT:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0240

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetBackgroundLayout()V

    return-void
.end method

.method private animateScrollForNewAlbum(ZZ)V
    .locals 11

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convY(I)F

    move-result v7

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->setType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosAnimMode(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v2

    neg-float v2, v2

    sub-float/2addr v2, v7

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    :goto_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v10

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getScroll()F

    move-result v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setScrollTopMargine(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setMaxScrollable()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidthViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeightViewRatio:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidthSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeightSpace:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v6

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->reset(FFFFFF)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    :goto_2
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v2

    neg-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "GlComposeSplitView"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v2

    neg-float v2, v2

    sub-float/2addr v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFFI)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFFI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private createBackgroundObject()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFill(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->USE_GRACE_GUI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    const v2, 0x7f100204

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFillColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    const v2, 0x7f100203

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFillColor(I)V

    goto :goto_0
.end method

.method private handleSelectAlbum(I)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-ne p1, v6, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-boolean v5, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v6, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->readyPropagateAnim()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->resetScroll()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iput-boolean v7, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getScrollForIndex(I)F

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getVisibleScrollDelta(F)F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getValidScroll(F)F

    move-result v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v3, v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->readyPropagateAnim()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->resetScroll()V

    goto :goto_0
.end method

.method private initializeMode()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->initialize(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerNewAlbumClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->animateScrollForNewAlbum(ZZ)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpdateBitmap:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpdateBitmap:Z

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    invoke-virtual {v2, v0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->requestThumbNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    :cond_0
    return-void
.end method

.method private resetBackgroundLayout()V
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWideMode:Z

    if-eqz v4, :cond_3

    sget v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v4

    neg-float v0, v4

    :goto_2
    const/high16 v4, 0x3f000000    # 0.5f

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidthSpace:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v5, v1, v5

    mul-float/2addr v4, v5

    add-float v2, v4, v0

    sget-boolean v4, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v4, :cond_6

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v4, v5, :cond_5

    neg-float v4, v2

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v5

    sub-float v2, v4, v5

    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v5, -0x3bb80000    # -800.0f

    invoke-virtual {v4, v2, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidthSpace:F

    mul-float/2addr v4, v1

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeightSpace:F

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_7

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b0821

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    const v5, 0x7f100205

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    goto :goto_0

    :cond_3
    sget v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_PORT:F

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v2, v4

    goto :goto_3

    :cond_6
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    goto :goto_4
.end method

.method private resetMoreAlbumLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->resetLayout()V

    :cond_0
    return-void
.end method

.method private resetSplitLayout()V
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->resetLayout()V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mResource:Landroid/content/res/Resources;

    const v5, 0x7f0b01c9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convY(I)F

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->stopTransAnim(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v5

    neg-float v5, v5

    sub-float/2addr v5, v2

    const/4 v6, 0x3

    invoke-virtual {v4, v3, v5, v3, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFFI)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v4

    add-float v1, v4, v2

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->setScrollTopMargine(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setMaxScrollable()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v4, v3, v5}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollable:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v3, v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setScroll(FZ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mScrollableMax:F

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v4

    neg-float v0, v4

    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v0, v3, v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFFI)V

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private setValidView()V
    .locals 8

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWideMode:Z

    if-eqz v6, :cond_1

    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    :goto_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v4, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v6, :cond_2

    neg-int v1, v4

    :goto_1
    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    sub-int v0, v6, v4

    :goto_2
    sget-boolean v6, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v6, :cond_4

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setLimitedTextWidth(I)V

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    if-nez v6, :cond_5

    new-instance v6, Landroid/graphics/Rect;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeight:I

    invoke-direct {v6, v0, v5, v3, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    :goto_4
    return-void

    :cond_1
    sget v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_PORT:F

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    add-int v3, v4, v1

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeight:I

    invoke-virtual {v6, v0, v5, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4
.end method


# virtual methods
.method public addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    instance-of v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iput-object p0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSplitView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mSupportExpand:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSupportExpand:Z

    :cond_0
    return-void
.end method

.method protected createMoreAlbumObject()V
    .locals 3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpSideAlbumCount:I

    if-ltz v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWideMode:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_LAND:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setLimitedTextWidth(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->resetLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpSideAlbumCount:I

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;->mAlbumCount:I

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->SPLIT_RATIO_PORT:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDirectCopyFromSideSync:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "startSideSyncDrag"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mOnDragDropListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;->onDragDrop(I)Z

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fadeIn()V
    .locals 11

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v7, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->setType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosAnimMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v7, v9, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8, v9, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mShrinkAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setValidView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v8, v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosAnimMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9, v9, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8, v9, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mFadeInAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    :cond_1
    return-void

    :cond_2
    move v7, v9

    goto :goto_0
.end method

.method public fadeOut()V
    .locals 10

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v7

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;->setType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosAnimMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v7, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mExpandedAnimationListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setValidView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnablePosAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPosAnimMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourcePos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v7, v8, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mBgObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->clean()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v0

    neg-float v7, v0

    goto :goto_0
.end method

.method public getFirstThumbObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mItemCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ObjectControl;->mActiveObject:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public getMoreAlbumTitle()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMoreAlbumTitleObj:Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumTitleObject;

    return-object v0
.end method

.method protected getNewAlbumScrollTopMargin()F
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDragAnimRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isDragAnimRunning()Z

    move-result v0

    return v0
.end method

.method public isFadeAnimRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->isRunning()Z

    move-result v0

    return v0
.end method

.method protected onCreate(II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSupportExpand:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->createBackgroundObject()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onCreate(II)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setValidView()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSupportExpand:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInitialCode:I

    invoke-virtual {v0, v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->setFocused(IZ)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->isCheckMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNeedSetMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mGlComposeViewAccessibility:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mComposeSplitViewAccessibilityListener:Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility;->setAccessibilityNodeInfoListener(Lcom/sec/samsung/gallery/view/accessibility/GlComposeViewAccessibility$AccessibilityNodeInfoListener;)V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetBackgroundLayout()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v1

    neg-float v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFFI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mRootObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    goto :goto_0
.end method

.method protected onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v4, 0xa8

    if-eq p1, v4, :cond_0

    const/16 v4, 0xa9

    if-eq p1, v4, :cond_0

    and-int/lit16 v4, v0, 0x100

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->isScreenLocked()Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x42

    if-eq p1, v4, :cond_3

    const/16 v4, 0x17

    if-ne p1, v4, :cond_6

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    if-ltz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->getObjectIndex(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-interface {v4, v5, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;->onItemClick(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->playSoundKeyClick(Landroid/content/Context;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mFocused:I

    invoke-virtual {v4, v5, v6, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_5
    move v2, v3

    goto :goto_0

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onMessageExtra(III)V
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x0

    if-ne p1, v4, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->updateHeaderImage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->handleSelectAlbum(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->getMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->getThumbNailImage()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->updateBitmapFromAdapter(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v4, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method

.method protected onMoved(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v1}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPressed:Z

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onMoved(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPressed(II)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eq p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onPressed(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPressed:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPressed:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPressed:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onReleased(IIII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSetMode(IILjava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->clean()V

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->animateScrollForNewAlbum(ZZ)V

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->initialize(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerNewAlbumClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSplitViewExpanded:Z

    if-nez v2, :cond_3

    move v0, v1

    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->animateScrollForNewAlbum(ZZ)V

    goto :goto_0
.end method

.method public redrawNewAlbumImage()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbumLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;

    invoke-virtual {v2, p1, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeNewAlbumLoader;->requestThumbNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected resetLayout()V
    .locals 0

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setValidView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetSplitLayout()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetMoreAlbumLayout()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetScrollBar()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->resetBackgroundLayout()V

    return-void
.end method

.method resetScrollBar()V
    .locals 8

    const/high16 v7, 0x40800000    # 4.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetScrollBar()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->USE_GRACE_GUI:Z

    if-eqz v0, :cond_2

    const v0, 0x7f10020b

    :goto_1
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setTintColor(I)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->getHeight()F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v1

    add-float v5, v0, v1

    :goto_2
    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->USE_GRACE_GUI:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0382

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convY(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginBtm()F

    move-result v1

    add-float v6, v0, v1

    :goto_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidthViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeightViewRatio:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidthSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHeightSpace:F

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->reset(FFFFFF)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->setValidView()V

    sget-boolean v0, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->RIGHT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    :goto_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setVisibility(Z)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f10020a

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginTop()F

    move-result v5

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b0256

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convY(I)F

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getMarginBtm()F

    move-result v1

    add-float v6, v0, v1

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    goto :goto_4

    :cond_7
    invoke-static {}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->getNavigationBarPosition()Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;->LEFT:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$NavigationPos;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mSoftKeyHeightPixel:I

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    goto/16 :goto_4

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mWidth:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mValidView:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->convX(I)F

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mMargLeft:F

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    goto/16 :goto_4
.end method

.method public selectAlbum(IZ)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mMode:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v3, 0x65

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v0, v3, p1, v1, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNeedSetMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNeedSetMode:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->initializeMode()V

    :cond_0
    return-void
.end method

.method public setInitialCode(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mInitialCode:I

    return-void
.end method

.method public setNewAlbumUnfocused()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mNewAlbumHeaderFocused:Z

    invoke-virtual {p0, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->updateNewAlbumImage(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method public setObjectListeners(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerThumbClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerThumbLongClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setLongClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerDrag:Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setDragListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlDragListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerHover:Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setHoverListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlHoverListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerPenSelect:Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPenSelectListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlPenSelectListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mListenerGrpCheckBoxClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    goto :goto_1
.end method

.method public setUpSideAlbumCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mUpSideAlbumCount:I

    return-void
.end method

.method public updateFolderItem(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    return-void
.end method

.method public updateNewAlbumImage(Landroid/graphics/Bitmap;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlComposeSplitView"

    const-string/jumbo v1, "GlNewAlbumHeader is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mNewAlbum:Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;

    invoke-virtual {v0, p2, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->updateBitmapFromAdapter(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeSplitView;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    goto :goto_0
.end method
