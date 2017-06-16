.class public Lcom/samsung/android/sdk/rcl/RclExpansionHelper;
.super Ljava/lang/Object;
.source "RclExpansionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;,
        Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    }
.end annotation


# static fields
.field private static final DURATION_ALPHA:I = 0x12c

.field private static final DURATION_SCROLL:I = 0x1f4

.field private static final DURATION_SHORT_SCROLL:I = 0x12c

.field public static final EXPANSION_ADJUST_PAN:I = 0x2

.field public static final EXPANSION_ADJUST_RESIZE:I = 0x1

.field public static final EXPANSION_ADJUST_UNSPECIFIED:I = 0x0

.field public static final EXPANSION_HEIGHT_AUTO:I = -0x1

.field public static final EXPANSION_HEIGHT_MAX:I = -0x2

.field private static final EXPANSION_ON_FINISH:I = 0x3

.field private static final EXPANSION_ON_PROGRESS:I = 0x2

.field private static final EXPANSION_ON_REQUEST:I = 0x4

.field private static final EXPANSION_ON_START:I = 0x1

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_CLOSING:I = 0x5

.field private static final STATE_EXPANDED:I = 0x4

.field private static final STATE_MOVING_DOWN:I = 0x2

.field private static final STATE_MOVING_UP:I = 0x1

.field private static final STATE_SHRUNK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "RclExpansionHelper"

.field private static final VELOCITY_NEW_WEIGHT:F = 0.25f

.field private static final VELOCITY_OLD_WEIGHT:F = 0.75f


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAverageVelocity:F

.field private mContainer:Landroid/view/ViewGroup;

.field private mContainerId:I

.field private mDownX:F

.field private mDownY:F

.field private mExpansionMode:I

.field private mExpansionStatusCallback:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFixedHeight:I

.field private mFlingToClose:Z

.field private mInitialValue:I

.field private mInitialized:Z

.field private mIntercept:Z

.field private mIntroAnimation:Z

.field private mIsLocked:Z

.field private mLastEventTime:J

.field private mLastRawY:F

.field private mLatestNotifyHeight:I

.field private mMaxHeight:I

.field private mMinHeight:I

.field private mMinimumFlingVelocity:I

.field private mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

.field private mOnGlobalLayoutListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

.field private mPaddingTop:I

.field private mPendingExpansion:I

.field private mRequestedMaxHeight:I

.field private mRequestedMinHeight:I

.field private mRootView:Landroid/view/View;

.field private mRootViewTreeObserver:Landroid/view/ViewTreeObserver;

.field private mState:I

.field private mSwipefromTop:Z

.field private mTouchSlopSquare:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFlingToClose:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I

    return p1
.end method

.method static synthetic access$1502(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    return v0
.end method

.method static synthetic access$1602(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    return p1
.end method

.method static synthetic access$1700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->consumePendingExpansion()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionState()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionEnd(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;)Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnGlobalLayoutListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$602(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I

    return p1
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    return v0
.end method

.method static synthetic access$902(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    return p1
.end method

.method private closeAnimation(Z)V
    .locals 4

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onFinish(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onClose()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v1, 0x6

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$4;-><init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private consumePendingExpansion()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    if-nez v4, :cond_1

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-eq v1, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-eq v1, v4, :cond_1

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v5, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_4

    iput v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    :cond_1
    :goto_0
    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    if-ne v4, v6, :cond_2

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-nez v4, :cond_2

    if-lez v1, :cond_2

    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    :cond_2
    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    if-ne v4, v2, :cond_5

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansion(ZZ)Z

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$1;-><init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_3
    iput v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    return-void

    :cond_4
    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1
.end method

.method private getPaddingTop()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPaddingTop:I

    add-int/2addr v0, v1

    return v0
.end method

.method private notifyExpansionEnd(Z)V
    .locals 5

    const/4 v2, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x4

    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v3, "$runnable"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v3, "$what"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$isExpanded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onFinish(Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int/2addr v3, v4

    invoke-interface {v1, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto :goto_1
.end method

.method private notifyExpansionProgress()Z
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ne v6, v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I

    if-eq v0, v6, :cond_0

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-eq v6, v8, :cond_2

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    :cond_2
    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v6, v8, :cond_3

    move v4, v5

    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionStart(Z)V

    :cond_4
    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    sub-int v4, v0, v4

    mul-int/lit8 v4, v4, 0x64

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    sub-int/2addr v6, v7

    div-int v2, v4, v6

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    sub-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x64

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    sub-int/2addr v6, v7

    div-int v1, v4, v6

    if-ne v2, v1, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v6, "$runnable"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v6, "$what"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v6, "$progress"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    invoke-interface {v4, v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onProgress(I)V

    :cond_7
    move v4, v5

    goto :goto_0
.end method

.method private notifyExpansionStart(Z)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    iput v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$runnable"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$what"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$isExpanded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    invoke-interface {v1, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onStart(Z)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ne v1, v2, :cond_3

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I

    goto :goto_1
.end method

.method private notifyExpansionState()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionStart(Z)V

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionEnd(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionStart(Z)V

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionEnd(Z)V

    goto :goto_0
.end method

.method private onConfigurationChanged()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v0, v2, :cond_0

    :cond_4
    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    goto :goto_0
.end method

.method private onTouchEventInternal(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    if-nez v8, :cond_0

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v9, 0x6

    if-ne v8, v9, :cond_1

    :cond_0
    move v6, v7

    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastRawY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastEventTime:J

    iput v11, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAverageVelocity:F

    iput-boolean v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownY:F

    iget-object v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    iput-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    iget-object v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I

    :cond_2
    :goto_1
    iget-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_9

    iget-boolean v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    if-eqz v8, :cond_2

    iput-boolean v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    iget-boolean v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFlingToClose:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    if-nez v8, :cond_5

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAverageVelocity:F

    iget v9, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinimumFlingVelocity:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-eq v8, v12, :cond_4

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ne v8, v9, :cond_5

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->closeAnimation(Z)V

    goto :goto_0

    :cond_5
    iput-boolean v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-eq v8, v10, :cond_6

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v8, v6, :cond_2

    :cond_6
    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAverageVelocity:F

    cmpg-float v8, v8, v11

    if-gtz v8, :cond_7

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(Z)V

    goto :goto_1

    :cond_7
    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-nez v8, :cond_8

    invoke-direct {p0, v6}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->closeAnimation(Z)V

    goto :goto_1

    :cond_8
    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(Z)V

    goto :goto_1

    :cond_9
    if-ne v0, v12, :cond_c

    iget-boolean v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    if-eqz v8, :cond_2

    iput-boolean v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    iput-boolean v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v8, v6, :cond_a

    invoke-direct {p0, v6, v7}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(ZZ)V

    goto :goto_1

    :cond_a
    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v6, v10, :cond_2

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-nez v6, :cond_b

    invoke-direct {p0, v7}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->closeAnimation(Z)V

    goto :goto_1

    :cond_b
    invoke-direct {p0, v7, v7}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(ZZ)V

    goto :goto_1

    :cond_c
    if-ne v0, v10, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastEventTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastRawY:F

    sub-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastEventTime:J

    sub-long/2addr v10, v12

    long-to-float v9, v10

    div-float/2addr v8, v9

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float v5, v8, v9

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAverageVelocity:F

    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iput v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAverageVelocity:F

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastRawY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLastEventTime:J

    iget-boolean v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    if-nez v8, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownX:F

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    move v6, v7

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownY:F

    sub-float/2addr v8, v9

    float-to-int v1, v8

    mul-int v8, v1, v1

    iget v9, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mTouchSlopSquare:I

    if-gt v8, v9, :cond_f

    move v6, v7

    goto/16 :goto_0

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ge v7, v8, :cond_10

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-eq v3, v7, :cond_11

    :cond_10
    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-eq v3, v7, :cond_14

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-eq v3, v7, :cond_14

    :cond_11
    iput-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    :cond_12
    :goto_2
    iget-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownY:F

    iget-object v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mLatestNotifyHeight:I

    iput v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I

    iget-object v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v6, :cond_13

    iget v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-eq v6, v7, :cond_13

    iget-object v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    :cond_13
    iget-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownY:F

    sub-float/2addr v6, v7

    float-to-int v1, v6

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->scrollForResize(I)V

    goto/16 :goto_1

    :cond_14
    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ne v3, v7, :cond_12

    if-lez v1, :cond_12

    iput-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    iget-object v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "status_bar_height"

    const-string v9, "dimen"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    and-int/lit16 v7, v2, 0x400

    if-eqz v7, :cond_12

    if-lez v4, :cond_12

    iget v7, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mDownY:F

    iget-object v8, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_12

    iput-boolean v6, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mSwipefromTop:Z

    goto/16 :goto_2
.end method

.method private scrollForResize(I)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialValue:I

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-lt v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-le v0, v1, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    goto :goto_0
.end method

.method private setExpansion(ZZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    iput-boolean p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    :goto_1
    return v1

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iget v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ne v2, v3, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    iput-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(ZZ)V

    goto :goto_1
.end method

.method private setup()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No view found for id 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnGlobalLayoutListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;-><init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    iput-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnGlobalLayoutListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnGlobalLayoutListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$CustomGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootViewTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int v2, v1, v1

    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mTouchSlopSquare:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinimumFlingVelocity:I

    goto :goto_0
.end method

.method private startAnimation(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->startAnimation(ZZ)V

    return-void
.end method

.method private startAnimation(ZZ)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    :goto_0
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionState()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ne v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    if-eqz v0, :cond_4

    iput-boolean v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionEnd(Z)V

    goto :goto_1

    :cond_5
    new-array v0, v3, [I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    aput v1, v0, v4

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    :goto_2
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    if-ne v0, v3, :cond_a

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$2;-><init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$3;-><init>(Lcom/samsung/android/sdk/rcl/RclExpansionHelper;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    if-eqz v0, :cond_8

    iput-boolean v4, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntroAnimation:Z

    :cond_8
    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionEnd(Z)V

    goto/16 :goto_1

    :cond_9
    new-array v0, v3, [I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    aput v1, v0, v4

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    goto :goto_2

    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->notifyExpansionStart(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v1, v2, v5, v3, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3
.end method

.method private statusLog(Ljava/lang/String;)V
    .locals 3

    const-string v1, "RclExpansionHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mIntercept:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIntercept:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isLocked:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mMinHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mMaxHeight:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mPendingExpansion:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mPendingExpansion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mAnimator running:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public disable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    iput v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    return-void
.end method

.method public enable(III)V
    .locals 3

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-eq v0, p3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int v1, p3, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    if-eq v0, p2, :cond_1

    iput p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iput p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    if-eq v0, p3, :cond_2

    iput p3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setup()V

    return-void

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-eq v0, p2, :cond_0

    if-nez p2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int v1, p3, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    iput p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iput p2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    iput p3, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    iput v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    goto :goto_1
.end method

.method public enable(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mInitialized:Z

    const-string v0, "$containerId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    const-string v0, "$expansionMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    const-string v0, "$minHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    const-string v0, "$maxHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    const-string v0, "$fixedHeight"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    const-string v0, "$isExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansion(ZZ)Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setup()V

    return-void
.end method

.method public enableFlingToClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFlingToClose:Z

    return-void
.end method

.method public getContainerId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    return v0
.end method

.method public getExpansionMode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    return v0
.end method

.method public isExpanded()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    return v0
.end method

.method public lock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "$containerId"

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainerId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "$isExpanded"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->isExpanded()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "$expansionMode"

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "$minHeight"

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMinHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "$maxHeight"

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRequestedMaxHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "$fixedHeight"

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->onTouchEventInternal(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public requestExpansion(Z)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$runnable"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$what"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    const-string v2, "$isExpanded"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setup()V

    goto :goto_0
.end method

.method public setExpansion(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setExpansion(ZZ)Z

    move-result v0

    return v0
.end method

.method public setExpansionMode(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionMode:I

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-ltz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setExpansionStatusCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mExpansionStatusCallback:Ljava/util/Map;

    return-void
.end method

.method public setExpansionStatusListener(Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    return-void
.end method

.method public setFixedHeight(I)V
    .locals 3

    iput p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMaxHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mOnExpansionStatusListener:Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;

    iget v1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mMinHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mFixedHeight:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper$OnExpansionStatusListener;->onMaxHeightChanged(I)V

    goto :goto_0
.end method

.method public setRootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mRootView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->setup()V

    return-void
.end method

.method public unlock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rcl/RclExpansionHelper;->mIsLocked:Z

    return-void
.end method
