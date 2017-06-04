.class public Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlTimeLineSplit.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;
    }
.end annotation


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final SIN:F

.field private static final TAG:Ljava/lang/String; = "GlTimeLineSplit"


# instance fields
.field private mActionbarHeight:F

.field private mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field private mBounds:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mDeltaX:I

.field private final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private mEdgeControlPointHeight:F

.field private mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

.field private mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

.field private mEdgePadding:F

.field private mElastic:F

.field private mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

.field private mFocusObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mGroupMarginTop:F

.field private mHeightViewRatio:F

.field private mInitPosY:F

.field private mLastScrollEvent:J

.field private final mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

.field private final mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

.field private mMarginBtm:F

.field private mMarginTop:F

.field private mMaxElastic:F

.field private mOnscroll:Z

.field public mPosition:I

.field private mPreviousScrollY:F

.field private mRawX:I

.field private mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

.field private mScrollable:F

.field private mScrollableMax:F

.field private mSelectionBufferHeight:F

.field private mSplitHeight:F

.field private mSplitWidth:F

.field private mStatusBarHeight:F

.field private mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

.field private mWidthViewRatio:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->SIN:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->COS:F

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPreviousScrollY:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLastScrollEvent:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mOnscroll:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setSupportRtl(Z)V

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F

    return v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;F)F
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F

    return p1
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->cancelEdgeFadeAni()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDeltaX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onPull(FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFocusObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFocusObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private animateEdge()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->start()V

    :cond_0
    return-void
.end method

.method private cancelEdgeFadeAni()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->cancelEdgeFadeAnimation()V

    return-void
.end method

.method private cancelEdgeFadeAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->removeAllAnimation()V

    :cond_0
    return-void
.end method

.method private createAnimations()V
    .locals 6

    new-instance v3, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    const v2, 0x3f4ccccd    # 0.8f

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a050d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, v2, v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setFactors(FF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMaxSpeed(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setDuration(J)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v3, p0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setBoundaryAnimationListener(Lcom/sec/samsung/gallery/glview/GlBoundaryAnim$GlBoundaryAnimListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method private createEdgeObject()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1, v3, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setEmptyFill(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    const v2, 0x7f100111

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setEmptyFillColor(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->moveToLast()V

    return-void
.end method

.method private createTimeGroup()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->setSupportRtl(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method private doScroll(F)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setInitMovement(F)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setScroll(F)V

    return-void
.end method

.method private drawCustomEdge(FF)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    div-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    div-float p2, v1, v2

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    div-float/2addr v1, v2

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    neg-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginBtm:F

    add-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v17, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeControlPointHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    add-float v18, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v19, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    neg-float v5, v5

    sub-float v6, v17, v19

    move/from16 v0, v18

    neg-float v7, v0

    add-float v8, v17, v19

    move/from16 v0, v18

    neg-float v9, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    neg-float v11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v14, v14, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v15, v15, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    invoke-virtual/range {v1 .. v15}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->drawCubicBezierCurve(FFFFFFFFFFFFII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    neg-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setScale(FF)V

    move/from16 v7, v18

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const v2, 0x3e19999a    # 0.15f

    mul-float v2, v2, p1

    mul-float v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setVisibility(Z)V

    :cond_1
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    div-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    div-float p2, v1, v2

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    div-float/2addr v1, v2

    div-float p2, p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float p2, p2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSelectionBufferHeight:F

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setPos(FFF)V

    const/high16 v16, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v1, v16

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    mul-float v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v17, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeControlPointHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    add-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v19, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    sub-float v6, v17, v19

    add-float v8, v17, v19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v10, v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v12, v9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v14, v9, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v15, v9, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    move v9, v7

    invoke-virtual/range {v1 .. v15}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->drawCubicBezierCurve(FFFFFFFFFFFFII)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    const/high16 v2, 0x3f800000    # 1.0f

    move/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setScale(FF)V

    goto/16 :goto_0
.end method

.method private drawFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setFocusBorderVisible(Z)V

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setRippleFocusVisible(Z)V

    :cond_0
    return-void
.end method

.method private fitToLine()V
    .locals 6

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v4, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getHeight(Z)F

    move-result v0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getY()F

    move-result v4

    neg-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float v2, v4, v5

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mGroupMarginTop:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    sub-float v4, v2, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mGroupMarginTop:F

    add-float v3, v4, v5

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->doScroll(F)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getY()F

    move-result v4

    neg-float v3, v4

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->doScroll(F)V

    goto :goto_0
.end method

.method private initScrollBar()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    const v2, 0x7f10020a

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setTintColor(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetScrollBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    return-void
.end method

.method private initialize()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->createTimeGroup()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetAttributes()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->createEdgeObject()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->updateEdgeEffect()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->createAnimations()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->initScrollBar()V

    return-void
.end method

.method private onPull(FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->drawCustomEdge(FF)V

    return-void
.end method

.method private playScrollSound()V
    .locals 10

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLastScrollEvent:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPreviousScrollY:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v8

    if-lez v4, :cond_0

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLastScrollEvent:J

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPreviousScrollY:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v2, v4, v5

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    float-to-double v6, v2

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v3, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->setSoundRate(F)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSoundUtils()Lcom/sec/samsung/gallery/view/utils/SoundUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->playScrollSound()V

    :cond_0
    return-void
.end method

.method private removeFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setFocusBorderVisible(Z)V

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setRippleFocusVisible(Z)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    invoke-virtual {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setSize(FF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    div-float/2addr v1, v3

    neg-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    div-float/2addr v2, v3

    add-float v0, v1, v2

    const/4 v1, 0x0

    const/high16 v2, -0x3bb80000    # -800.0f

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setPos(FFF)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    const v2, 0x7f100228

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setBorderColor(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setBorderVisible(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b028b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setBorderWidth(F)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    const v2, 0x7f100260

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setEmptyFillColor(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetScrollBar()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_0
    return-void
.end method

.method private resetFlingEffect()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->animateEdge()V

    :cond_0
    return-void
.end method

.method private resetScrollBar()V
    .locals 8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b035e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    mul-float v7, v0, v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    sub-float/2addr v1, v2

    add-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->setRightPadding(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v4, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSelectionBufferHeight:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginBtm:F

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->reset(FFFFFF)V

    goto :goto_0
.end method

.method private resetScrollPosition()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b028d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginBtm:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSelectionBufferHeight:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mStatusBarHeight:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    :goto_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_2

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    invoke-virtual {v2, v5, v3}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setRange(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->getScroll()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setScroll(F)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b028c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginBtm:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    goto :goto_1
.end method

.method private setScroll(F)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimePointList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getY()F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginTop:F

    sub-float/2addr v4, v5

    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getHeight(Z)F

    move-result v5

    sub-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->getY()F

    move-result v3

    neg-float v3, v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :cond_0
    invoke-virtual {v1, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setVisibility(Z)V

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setVisibility(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setVisibility(Z)V

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimePoint;->setVisibility(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getX()F

    move-result v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mInitPosY:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollable:F

    add-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->setPos(FFF)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mOnscroll:Z

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->playScrollSound()V

    :cond_4
    return-void
.end method

.method private updateEdgeEffect()V
    .locals 8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->SIN:F

    div-float v1, v3, v4

    sget v3, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->COS:F

    mul-float v2, v3, v1

    sub-float v0, v1, v2

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgePadding:F

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeControlPointHeight:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v7, v7

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeObj:Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/glview/GlCubicBezierObject;->setSize(FF)V

    :cond_1
    return-void
.end method


# virtual methods
.method public focusedTimeItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->focusTimeItem(I)V

    return-void
.end method

.method public getFocusedTimeLinObj()Lcom/sec/android/gallery3d/glcore/GlObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFocusObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-object v0
.end method

.method public getTimeGroup()Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    return-object v0
.end method

.method public moveToGrid()V
    .locals 3

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->removeFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    return-void
.end method

.method public moveToTimeLineSplit(ZI)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz p1, :cond_0

    if-lez v3, :cond_0

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->drawFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->fitToLine()V

    :goto_0
    return v4

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->removeFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    move v4, v5

    goto :goto_0

    :pswitch_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->removeFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->drawFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->fitToLine()V

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->fitToLine()V

    goto :goto_0

    :pswitch_2
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    if-lez v6, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->removeFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->drawFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    if-nez v6, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->removeFocus(Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mPosition:I

    move v4, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onFlingEnd(F)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mOnscroll:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hide()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setScroll(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetFlingEffect()V

    return-void
.end method

.method public onFlingProcess(FF)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mOnscroll:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->show()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollBar:Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->update(FFF)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->setScroll(F)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mScrollableMax:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    cmpl-float v0, p2, v2

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->animateEdge()V

    :cond_1
    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    neg-float v0, p2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDeltaX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onPull(FF)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->stop()V

    :cond_6
    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    neg-float v0, p2

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDeltaX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onPull(FF)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDeltaX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->onPull(FF)V

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mElastic:F

    neg-float v0, p2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMaxElastic:F

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->isReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mEdgeFadeAnim:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit$EdgeFadeAnimation;->stop()V

    goto/16 :goto_0
.end method

.method protected onMoved(II)Z
    .locals 3

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDeltaX:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    neg-int v1, p2

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->setMovement(F)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onPressed(IIII)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostStart(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mRawX:I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->stop()V

    :cond_1
    return v1
.end method

.method protected onReleased(IIII)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFlingAnim:Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;

    neg-int v1, p4

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/GlBoundaryAnim;->startFling(F)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetFlingEffect()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public resetAttributes()V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v7, v7, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v7, v7

    div-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarSize(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0240

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v5, v7

    :goto_0
    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginBtm:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0296

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0264

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mStatusBarHeight:F

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitHeight:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b028e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0292

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    mul-float v2, v5, v7

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b028f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mGroupMarginTop:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mActionbarHeight:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mGroupMarginTop:F

    add-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginTop:F

    const/4 v3, 0x0

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSelectionBufferHeight:F

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getSelectionBufferLayoutHeight()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mHeightViewRatio:F

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSelectionBufferHeight:F

    :cond_1
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginTop:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSelectionBufferHeight:F

    add-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginTop:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    div-float/2addr v5, v9

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mMarginTop:F

    sub-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mInitPosY:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    div-float/2addr v5, v9

    sub-float v4, v2, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mInitPosY:F

    invoke-virtual {v5, v4, v7, v6}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->setPos(FFF)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->reset()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetScrollPosition()V

    return-void

    :cond_2
    move v5, v6

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0295

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mWidthViewRatio:F

    mul-float/2addr v5, v7

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mSplitWidth:F

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mStatusBarHeight:F

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "GlTimeLineSplit"

    const-string/jumbo v7, "resetAttributes err "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    return-void
.end method

.method public setFocusedTimeLinObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mFocusObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    return-void
.end method

.method public updateList()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->updateTimeList()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mTimeGroup:Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeGroup;->getTimeLabelList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mListenerThumbMove:Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setMoveListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlMoveListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLabel;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/timelinesplit/GlTimeLineSplit;->resetScrollPosition()V

    :cond_2
    return-void
.end method
