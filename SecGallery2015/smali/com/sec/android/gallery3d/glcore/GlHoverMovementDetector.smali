.class public Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;
.super Ljava/lang/Object;
.source "GlHoverMovementDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;
    }
.end annotation


# static fields
.field public static final HOVER_SCROLL_DOWN:I = 0x2

.field public static final HOVER_SCROLL_LEFT:I = 0x3

.field private static final HOVER_SCROLL_NONE:I = 0x0

.field public static final HOVER_SCROLL_RIGHT:I = 0x4

.field public static final HOVER_SCROLL_UP:I = 0x1

.field private static final LEFTNRIGHT:I = 0x1

.field private static final LIST_SCROLL_INTERVAL:J = 0x12cL

.field private static final LIST_SCROLL_RECOGNITION_EVT:I = 0x1

.field private static final LIST_SCROLL_TICK_EVT:I = 0x2

.field private static final LIST_SCROLL_TICK_INTERVAL:I = 0xa

.field private static final MOVE_STEP:I

.field private static final PAST_COUNT:I = 0x8


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

.field private mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mHoverScrollDetectArea:F

.field private mIsEnableHoverScroll:Z

.field private mIsListScroll:Z

.field private final mLMs:[J

.field private final mLX:[I

.field private final mLY:[I

.field private mListScrollActive:Z

.field private mLxIndex:I

.field private mMoveEvent:Landroid/view/MotionEvent;

.field private mMoveX:I

.field private mMoveY:I

.field private mPressX:I

.field private mPressY:I

.field private mScrollDirection:I

.field private mXFlexibleTopScrollMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->MOVE_STEP:I

    return-void

    :cond_0
    const/16 v0, 0x28

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHoverScrollDetectArea:F

    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iput-object v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLX:[I

    new-array v1, v3, [I

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLY:[I

    new-array v1, v3, [J

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLMs:[J

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mListScrollActive:Z

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    iput v2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mXFlexibleTopScrollMargin:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsEnableHoverScroll:Z

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$1;-><init>(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iput-object p2, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHoverScrollDetectArea:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mListScrollActive:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mListScrollActive:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Lcom/sec/android/gallery3d/glcore/GlHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->updateMovement(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;Landroid/view/MotionEvent;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->calcMovement(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method private calcMovement(Landroid/view/MotionEvent;Z)Z
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLX:[I

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    aput v4, v7, v8

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLY:[I

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    aput v5, v7, v8

    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLMs:[J

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    aput-wide v2, v7, v8

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    iput v9, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    :cond_0
    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    sub-int v0, v4, v7

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    sub-int v1, v5, v7

    if-eqz p2, :cond_3

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    iget v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    invoke-interface {v7, v9, v1, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;->onRelease(IIII)Z

    move-result v6

    :goto_0
    return v6

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    invoke-interface {v7, v0, v9, v9, v9}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;->onRelease(IIII)Z

    move-result v6

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    iget v8, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    invoke-interface {v7, v0, v1, v8}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;->onMove(III)Z

    move-result v6

    goto :goto_0
.end method

.method private checkPoint(II)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsEnableHoverScroll:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/util/HoverIconUtil;->isHoveringIconPenSelect()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->getDirection(II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDirection(II)I
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    mul-float v0, v6, v7

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v6, v6

    mul-float v5, v6, v7

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHoverScrollDetectArea:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getHoveringScrollDetectArea()F

    move-result v6

    iput v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHoverScrollDetectArea:F

    :cond_0
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHoverScrollDetectArea:F

    iget v7, v2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    div-float/2addr v7, v5

    mul-float/2addr v6, v7

    float-to-int v1, v6

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHoverScrollDetectArea:F

    iget v7, v2, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    div-float/2addr v7, v0

    mul-float/2addr v6, v7

    float-to-int v4, v6

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;->getListScrollMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    if-lez p1, :cond_2

    if-ge p1, v1, :cond_2

    const/4 v3, 0x3

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget v6, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v1

    if-le p1, v6, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_3
    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mXFlexibleTopScrollMargin:I

    if-le p2, v6, :cond_4

    iget v6, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mXFlexibleTopScrollMargin:I

    add-int/2addr v6, v4

    if-ge p2, v6, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v4

    if-le p2, v6, :cond_1

    const/4 v3, 0x2

    goto :goto_0
.end method

.method private processListScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    if-nez v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/16 v3, 0x9

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v15, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    move-wide v12, v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLX:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLY:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    aput v5, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLMs:[J

    const/4 v4, 0x0

    aput-wide v12, v3, v4

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mLxIndex:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mDetectListener:Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector$GlHoverMoveDetectorListener;->onPress(II)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x12c

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mListScrollActive:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->cpuScrollBoostRelease(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    :cond_1
    :goto_0
    return v14

    :cond_2
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->getDirection(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    :cond_3
    const/4 v14, 0x1

    goto :goto_0

    :cond_4
    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mListScrollActive:Z

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeMessage(I)V

    :goto_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mListScrollActive:Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    const/4 v14, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveEvent:Landroid/view/MotionEvent;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->calcMovement(Landroid/view/MotionEvent;Z)Z

    goto :goto_1
.end method

.method private updateMovement(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    sget v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->MOVE_STEP:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    sget v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->MOVE_STEP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    sget v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->MOVE_STEP:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mScrollDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    sget v1, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->MOVE_STEP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    iget v0, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mMoveX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mPressY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0
.end method


# virtual methods
.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    const/16 v6, 0xa

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->checkPoint(II)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsListScroll:Z

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->processListScrollEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnableHoverScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mIsEnableHoverScroll:Z

    return-void
.end method

.method public setHoverScrollFlexibleHeightMargin(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/glcore/GlHoverMovementDetector;->mXFlexibleTopScrollMargin:I

    return-void
.end method
