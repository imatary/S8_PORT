.class public Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "MultiDirectionSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;,
        Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;,
        Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;,
        Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;,
        Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final LOG_TAG:Ljava/lang/String; = "Sliding"

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_BTT:I = 0x1

.field public static final ORIENTATION_LTR:I = 0x2

.field public static final ORIENTATION_RTL:I = 0x0

.field public static final ORIENTATION_TTB:I = 0x3

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHanderWidth:I

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerParentWidth:I

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mInvert:Z

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    new-instance v5, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$SlidingHandler;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandlerParentWidth:I

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHanderWidth:I

    sget-object v5, Lcom/sec/android/mimage/photoretouching/R$styleable;->MultiDirectionSlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-eq v4, v7, :cond_0

    if-ne v4, v10, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    const/4 v5, 0x4

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAllowSingleTap:Z

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z

    if-eq v4, v10, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_1
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    if-nez v3, :cond_4

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_1

    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-nez v1, :cond_5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    if-ne v3, v1, :cond_6

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleId:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContentId:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTapThreshold:I

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumTapVelocity:I

    const/high16 v5, 0x43160000    # 150.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    const/high16 v5, 0x44fa0000    # 2000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVelocityUnits:I

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v6}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private animateOpen(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    return-void
.end method

.method private closeDrawer()V
    .locals 2

    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 8

    const-wide/16 v6, 0x10

    const/16 v4, 0x3e8

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->incrementAnimation()V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->closeDrawer()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_3

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->openDrawer()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->closeDrawer()V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->openDrawer()V

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->moveHandle(I)V

    iget-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    return-void
.end method

.method private moveHandle(I)V
    .locals 12

    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_6

    if-ne p1, v9, :cond_1

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    :goto_1
    return-void

    :cond_0
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    :cond_1
    if-ne p1, v8, :cond_3

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    goto :goto_1

    :cond_2
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, p1, v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_4

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_3

    :cond_6
    if-ne p1, v9, :cond_8

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_7
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    :cond_8
    if-ne p1, v8, :cond_a

    iget-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_9

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    :cond_9
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v0, p1, v4

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_c

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    :cond_b
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    invoke-virtual {p0, v5}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_c
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_b

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_6
.end method

.method private openDrawer()V
    .locals 2

    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->moveHandle(I)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 12

    int-to-float v5, p1

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_11

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v0

    :goto_0
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    :goto_1
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_4

    const/4 v1, 0x1

    :goto_2
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_8

    add-int v5, p1, v4

    sub-int v5, v0, v5

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int/2addr v5, v8

    if-le v5, v4, :cond_7

    const/4 v2, 0x1

    :goto_3
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_c

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_b

    const/4 v3, 0x1

    :goto_4
    if-nez p3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    :cond_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v8, 0x10

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x3e8

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-wide v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v5, v8, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->stopTracking()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v0

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    :goto_6
    add-int/2addr v5, v8

    if-le p1, v5, :cond_a

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    :cond_f
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_10

    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    :cond_10
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    :cond_11
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_14

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_13

    const/4 v1, 0x1

    :goto_7
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_18

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_16

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v5

    :goto_8
    div-int/lit8 v5, v5, 0x2

    if-ge p1, v5, :cond_17

    const/4 v2, 0x1

    :goto_9
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_1c

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1b

    const/4 v3, 0x1

    :goto_a
    if-nez p3, :cond_1f

    if-nez v1, :cond_12

    if-eqz v2, :cond_1f

    if-eqz v3, :cond_1f

    :cond_12
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_1e

    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    :cond_13
    const/4 v1, 0x0

    goto :goto_7

    :cond_14
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_15

    const/4 v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_7

    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v5

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v5

    :goto_b
    div-int/lit8 v5, v5, 0x2

    if-le p1, v5, :cond_1a

    const/4 v2, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v5

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    :cond_1b
    const/4 v3, 0x0

    goto :goto_a

    :cond_1c
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1d

    const/4 v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v3, 0x0

    goto :goto_a

    :cond_1e
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    :cond_1f
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_20

    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    :cond_20
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5
.end method

.method private prepareContent()V
    .locals 10

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_4

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_5
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8

    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    :goto_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->moveHandle(I)V

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    const-wide/16 v6, 0x10

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    :goto_2
    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_3
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_3

    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateClose(I)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateOpen(I)V

    :cond_1
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateOpen()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public checkifHeightisProperandInvalidate()V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const-string v0, "Sliding"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    :cond_0
    return-void
.end method

.method public close()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->closeDrawer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->requestLayout()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_b

    :cond_0
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_3

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :goto_2
    invoke-virtual {p1, v0, v5, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_8

    if-eqz v4, :cond_6

    move v7, v6

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    :goto_4
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    move v7, v5

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_a

    move v5, v6

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :cond_9
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    goto :goto_6

    :cond_b
    iget-boolean v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mLocked:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$DrawerToggler;-><init>(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mLocked:Z

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v8, :cond_2

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    float-to-int v8, v5

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandlerParentWidth:I

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHanderWidth:I

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    iput-boolean v7, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->prepareContent()V

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v8}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    :cond_5
    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    :goto_1
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v7, p4, p2

    sub-int v6, p5, p3

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_4

    sub-int v8, v7, v5

    div-int/lit8 v3, v8, 0x2

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    sub-int v8, v6, v8

    sub-int v4, v8, v2

    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    :goto_2
    add-int v8, v3, v5

    add-int v9, v4, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleHeight:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    :goto_3
    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_3
    sub-int v8, v6, v2

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int v4, v8, v9

    goto :goto_3

    :cond_4
    sub-int v8, v6, v2

    div-int/lit8 v4, v8, 0x2

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    sub-int v8, v7, v8

    sub-int v3, v8, v5

    :goto_4
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    goto :goto_4

    :cond_6
    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_7

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    :goto_5
    iget v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v5

    const/4 v9, 0x0

    iget v10, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    :cond_7
    sub-int v8, v7, v5

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int v3, v8, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 11

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v8, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-eqz v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->measureChild(Landroid/view/View;II)V

    :try_start_0
    iget-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v4, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v2, v8, v9

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v2, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->setMeasuredDimension(II)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v8, v7, v8

    iget v9, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v5, v8, v9

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v5, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->openDrawer()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->requestLayout()V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;II)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHandlerParentWidth:I

    iput p3, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mHanderWidth:I

    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->openDrawer()V

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->invalidate()V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->requestLayout()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/Decoration/MultiDirectionSlidingDrawer;->mLocked:Z

    return-void
.end method
