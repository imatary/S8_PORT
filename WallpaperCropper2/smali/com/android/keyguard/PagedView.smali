.class public abstract Lcom/android/keyguard/PagedView;
.super Landroid/view/ViewGroup;
.source "Unknown"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;,
        Lcom/android/keyguard/PagedView$PageSwitchListener;,
        Lcom/android/keyguard/PagedView$SavedState;,
        Lcom/android/keyguard/PagedView$ScrollInterpolator;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = true

.field private static final DEBUG_WARP:Z = false

.field private static final DISABLE_FLING_TO_DELETE:Z = false

.field private static final DISABLE_TOUCH_INTERACTION:Z = false

.field private static final DISABLE_TOUCH_SIDE_PAGES:Z = true

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x5dc

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0x1f4

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x2ee

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.5f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "WidgetPagedView"

.field protected static final TOUCH_SLOP_SCALE:F = 1.0f

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_READY:I = 0x5

.field protected static final TOUCH_STATE_REORDERING:I = 0x4

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field private static final WARP_ANIMATE_AMOUNT:F = -75.0f

.field private static final WARP_PEEK_ANIMATION_DURATION:I = 0x96

.field private static final WARP_SNAP_DURATION:I = 0xa0

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field private DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

.field private DRAG_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FADE_OUT_DURATION:I

.field private FLING_TO_DELETE_FRICTION:F

.field private FLING_TO_DELETE_MAX_FLING_DEGREES:F

.field private NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

.field private REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

.field private REORDERING_DROP_REPOSITION_DURATION:I

.field protected REORDERING_REORDER_REPOSITION_DURATION:I

.field private REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

.field private REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

.field protected REORDERING_ZOOM_IN_OUT_DURATION:I

.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowOverScroll:Z

.field private mAltTmpRect:Landroid/graphics/Rect;

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mChildCountOnLastMeasure:I

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field protected mDeferScrollUpdate:Z

.field private mDeferringForDelete:Z

.field private mDeleteDropTarget:Landroid/view/View;

.field private mDeleteString:Ljava/lang/String;

.field protected mDensity:F

.field protected mDirtyPageContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownEventOnEdge:Z

.field private mDownMotionX:F

.field private mDownMotionY:F

.field private mDownScrollX:F

.field protected mDragView:Landroid/view/View;

.field private mEdgeSwipeRegionSize:I

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mFlingToDeleteThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mIsCameraEvent:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field private mIsReordering:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field private mMinScale:F

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnPageBeginWarpCalled:Z

.field private mOnPageEndWarpCalled:Z

.field mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private mOnlyAllowEdgeSwipes:Z

.field protected mOverScrollX:I

.field protected mPageSpacing:I

.field private mPageSwapIndex:I

.field private mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

.field private mPageWarpIndex:I

.field private mPagingTouchSlop:I

.field private mParentDownMotionX:F

.field private mParentDownMotionY:F

.field private mPostReorderingPreZoomInRemainingAnimationCount:I

.field private mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

.field private mReorderingStarted:Z

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field private mSidePageHoverIndex:I

.field private mSidePageHoverRunnable:Ljava/lang/Runnable;

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field private mTmpInvMatrix:Landroid/graphics/Matrix;

.field private mTmpPoint:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopAlignPageWhenShrinkingForBouncer:Z

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewport:Landroid/graphics/Rect;

.field private mWarpAnimation:Landroid/view/ViewPropertyAnimator;

.field private mWarpPageExposed:Z

.field private mWarpPeekAmount:F

.field protected mZoomInOutAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    iput v3, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    iput v2, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    iput v2, p0, Lcom/android/keyguard/PagedView;->mCellCountX:I

    iput v2, p0, Lcom/android/keyguard/PagedView;->mCellCountY:I

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    iput v5, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mContentIsRefreshable:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mFadeInAdjacentScreens:Z

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    const-wide/16 v0, 0x96

    iput-wide v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    iput v5, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    iput v3, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    iput v4, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    iput v2, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    const v0, 0x3d0f5c29    # 0.035f

    iput v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    const/high16 v0, 0x42820000    # 65.0f

    iput v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    const/16 v0, -0x578

    iput v0, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    iput v3, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    iput v3, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    new-instance v0, Lcom/android/keyguard/PagedView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$2;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/keyguard/PagedView$13;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$13;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/keyguard/PagedView$14;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$14;-><init>(Lcom/android/keyguard/PagedView;)V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    sget-object v0, Lcom/android/keyguard/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$styleable;->PagedView_pageSpacing:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    sget v1, Lcom/android/keyguard/R$styleable;->PagedView_scrollIndicatorPaddingLeft:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sget v1, Lcom/android/keyguard/R$styleable;->PagedView_scrollIndicatorPaddingRight:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->kg_edge_swipe_region_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sget v1, Lcom/android/keyguard/R$bool;->kg_top_align_page_shrink_on_bouncer_visible:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->init()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/PagedView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    return p1
.end method

.method static synthetic access$1002(Lcom/android/keyguard/PagedView;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/PagedView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/PagedView;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/keyguard/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/PagedView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/PagedView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/PagedView;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->DELETE_SLIDE_IN_SIDE_PAGE_DURATION:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/PagedView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/PagedView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    return v0
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private animateWarpPageOffScreen(Ljava/lang/String;Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getCurrentWarpOffset()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-nez p2, :cond_1

    const-wide/16 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mOffScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x96

    goto :goto_1
.end method

.method private animateWarpPageOnScreen(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getCurrentWarpOffset()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    iget v3, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    int-to-float v2, v2

    add-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mOnScreenAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private cancelWarpAnimation(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p2, :cond_0

    const-string/jumbo v0, "canceled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getTranslationX()F

    move-result v1

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    goto :goto_0
.end method

.method private createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/keyguard/PagedView$9;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/PagedView$9;-><init>(Lcom/android/keyguard/PagedView;Landroid/view/View;)V

    return-object v0
.end method

.method private dispatchOnPageBeginWarp()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginWarp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    goto :goto_0
.end method

.method private dispatchOnPageEndWarp()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    if-eqz v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mOnPageBeginWarpCalled:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndWarp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mOnPageEndWarpCalled:Z

    goto :goto_0
.end method

.method private getCurrentWarpOffset()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_2

    :cond_0
    return v2

    :cond_1
    return v2

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getPageSnapDuration()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2ee

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xa0

    goto :goto_0
.end method

.method private isAnimatingWarpPage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mWarpAnimation:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFlingingToDelete()Landroid/graphics/PointF;
    .locals 6

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget v4, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/PointF;->length()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v1

    mul-float/2addr v1, v3

    div-float v1, v2, v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v1, v2

    float-to-double v2, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_MAX_FLING_DEGREES:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isHorizontalCameraScroll(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-nez v3, :cond_3

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iget v3, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v3, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    if-gt v0, v3, :cond_4

    move v3, v1

    :goto_0
    if-gt v0, v4, :cond_5

    move v0, v1

    :goto_1
    iget-boolean v4, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v4, :cond_6

    :goto_2
    move v2, v1

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    if-nez v3, :cond_0

    return v1

    :cond_4
    move v3, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-nez v4, :cond_7

    if-nez v0, :cond_1

    goto :goto_2

    :cond_7
    if-nez v3, :cond_1

    goto :goto_2
.end method

.method private isHoveringOverDeleteDropTarget(II)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mAltTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method private isTouchPointInCurrentPage(II)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v5

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isTouchPointInViewportWithBuffer(II)Z
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private onDropToDelete()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v6, [Landroid/animation/Animator;

    const-string/jumbo v4, "alpha"

    new-array v5, v6, [F

    aput v8, v5, v7

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_deleted:I

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v0

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget v1, p0, Lcom/android/keyguard/PagedView;->DRAG_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/keyguard/PagedView$12;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/PagedView$12;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v6, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    return-void
.end method

.method private onPostReorderingAnimationCompleted()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, p1, v2

    mul-float v1, v0, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method

.method private releaseVelocityTracker()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->endReordering()V

    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    return-void
.end method

.method private saveDownState(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iput v2, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iput v2, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v2, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v2

    aget v3, v2, v0

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    iput v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    iput v4, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/PagedView;->mEdgeSwipeRegionSize:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    int-to-float v2, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    :cond_2
    return-void
.end method

.method private setTouchState(I)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchStateChanged(I)V

    iput p1, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    goto :goto_0
.end method

.method private startScrolling(Landroid/view/MotionEvent;)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    iget v1, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    return-void

    :cond_0
    return-void
.end method

.method private updateScrollingIndicator()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v0, :cond_2

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->showScrollingIndicator(Z)V

    goto :goto_1
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int v2, v3, v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    int-to-float v2, v2

    div-float v2, v6, v2

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    div-int v4, v1, v0

    sub-int v0, v1, v4

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->hasElasticScrollIndicator()Z

    move-result v1

    if-nez v1, :cond_3

    div-int/lit8 v1, v4, 0x2

    div-int/lit8 v2, v3, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_1
    return-void

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    int-to-float v0, v1

    div-float v0, p1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    :cond_1
    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float v1, p1, v4

    if-gez v1, :cond_2

    iput v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-gez v0, :cond_2

    :cond_0
    :goto_0
    const/16 v0, 0x11

    if-eq p2, v0, :cond_3

    const/16 v0, 0x42

    if-eq p2, v0, :cond_4

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_1
.end method

.method animateDragViewToOriginalPosition()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Lcom/android/keyguard/PagedView;->REORDERING_DROP_REPOSITION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string/jumbo v3, "translationX"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    const-string/jumbo v3, "translationY"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v1, Lcom/android/keyguard/PagedView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$4;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method beginCameraEvent()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 0

    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScrollHelper()Z

    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-ne v0, v3, :cond_3

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    return v4

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    iput v3, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eqz v0, :cond_4

    :goto_1
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onPostReorderingAnimationCompleted()V

    return v4

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageEndMoving()V

    goto :goto_1
.end method

.method protected dampedOverScroll(F)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    int-to-float v0, v1

    div-float v0, p1, v0

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v0

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v0, v2

    :cond_1
    const v2, 0x3e0f5c29    # 0.14f

    mul-float/2addr v0, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    cmpg-float v1, p1, v4

    if-gez v1, :cond_2

    iput v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    return-void

    :cond_2
    iget v1, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    iget v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v4, v3

    float-to-int v2, v2

    invoke-direct {p0, v4, v2}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    if-nez v2, :cond_3

    :cond_0
    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v3, v2

    iget v2, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v2, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    if-gt v3, v2, :cond_4

    move v2, v0

    :goto_0
    if-gt v3, v4, :cond_5

    :goto_1
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mUsePagingTouchSlop:Z

    if-nez v1, :cond_6

    :goto_2
    return v0

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mDownEventOnEdge:Z

    if-nez v2, :cond_0

    return v0

    :cond_4
    move v2, v1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v4, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    if-eq v0, v1, :cond_2

    :cond_0
    iput-boolean v10, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->screenScrolled(I)V

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastScreenCenter:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v10

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-eq v1, v4, :cond_1

    if-eq v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getDrawingTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-nez v0, :cond_8

    :goto_3
    iput-boolean v10, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-eq v3, v6, :cond_4

    iget-boolean v6, p0, Lcom/android/keyguard/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_2

    :cond_7
    if-gt v1, v0, :cond_4

    if-gt v0, v2, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v4, v5}, Lcom/android/keyguard/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x11

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    return v2
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method endCameraEvent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    return-void
.end method

.method endReordering()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    new-instance v0, Lcom/android/keyguard/PagedView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PagedView$6;-><init>(Lcom/android/keyguard/PagedView;)V

    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/keyguard/PagedView$7;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/PagedView$7;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRunnable:Ljava/lang/Runnable;

    iget v0, p0, Lcom/android/keyguard/PagedView;->NUM_ANIMATIONS_RUNNING_BEFORE_ZOOM_OUT:I

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPostReorderingPreZoomInRemainingAnimationCount:I

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->animateDragViewToOriginalPosition()V

    goto :goto_0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->showScrollingIndicator(Z)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p1

    :goto_0
    if-eq v0, v1, :cond_0

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_2

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method protected getBoundedScrollProgress(ILandroid/view/View;I)F
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/keyguard/PagedView;->mScrollX:I

    add-int/2addr v1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/keyguard/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v0

    return v0
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    if-le v2, p1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-gt p1, v3, :cond_1

    return v0
.end method

.method protected getChildOffset(I)I
    .locals 5

    const/4 v0, 0x0

    if-gez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    move-object v2, v1

    :goto_0
    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    :goto_1
    if-lt v0, p1, :cond_6

    if-nez v2, :cond_7

    :goto_2
    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    move-object v2, v1

    goto :goto_0

    :cond_4
    aget v1, v2, p1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    aget v0, v2, p1

    return v0

    :cond_5
    return v0

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    aput v1, v2, p1

    goto :goto_2
.end method

.method protected getChildWidth(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method getCurrentPage()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method getNextPage()I
    .locals 2

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 8

    const v2, 0x7fffffff

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v4, v1, v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v5, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v6

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-lt v3, v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v3

    goto :goto_1
.end method

.method getPageNearestToPoint(F)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected getPageWarpIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getRelativeChildOffset(I)I
    .locals 3

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    sub-int v0, v2, v0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    if-nez v1, :cond_4

    :goto_0
    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aget v0, v0, p1

    return v0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v0, v1, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mMinimumWidth:I

    if-gt v1, v0, :cond_0

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mLayoutScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v1, v2

    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v2

    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMaxScrollProgress()F

    move-result v1

    neg-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getViewportHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method getViewportOffsetX()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportOffsetY()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getViewportWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method protected getVisiblePages([I)V
    .locals 2

    const/4 v0, 0x0

    aput v0, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    return-void
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x28a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/PagedView$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/PagedView$3;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0

    return p1
.end method

.method protected init()V
    .locals 4

    const v3, 0x44bb8000    # 1500.0f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDirtyPageContent:Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/PagedView$ScrollInterpolator;

    invoke-direct {v2}, Lcom/android/keyguard/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/PagedView;->mPagingTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    iget v0, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    const/high16 v1, -0x3d6a0000    # -75.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mWarpPeekAmount:F

    iget v0, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mFlingToDeleteThresholdVelocity:I

    iget v0, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    iget v0, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    const/high16 v1, 0x43fa0000    # 500.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    iget v0, p0, Lcom/android/keyguard/PagedView;->mDensity:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-virtual {p0, p0}, Lcom/android/keyguard/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsets:[I

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v0

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method isReordering(Z)Z
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :goto_1
    and-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isWarping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    return v0
.end method

.method mapPointFromParentToView(Landroid/view/View;FF)[F
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v2, p3, v2

    aput v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpInvMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method mapPointFromViewToParent(Landroid/view/View;FF)[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p2, v0, v3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aput p3, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    aget v1, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTmpPoint:[F

    return-object v0
.end method

.method protected maxOverScroll()F
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    div-float v0, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->overScrollInfluenceCurve(F)F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v0, v1

    return v0
.end method

.method protected notifyPageSwitched()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected notifyPageSwitching(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitching(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public abstract onAddView(Landroid/view/View;I)V
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method protected onEndReordering()V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_2

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_reorder_end:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-gt v0, v2, :cond_3

    goto :goto_2
.end method

.method public onFlingToDelete(Landroid/graphics/PointF;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    new-instance v7, Lcom/android/keyguard/PagedView$10;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/keyguard/PagedView$10;-><init>(Lcom/android/keyguard/PagedView;J)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    float-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->top:I

    new-instance v0, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;

    iget v6, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FRICTION:F

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/PagedView$FlingAlongVectorAnimatorUpdateListener;-><init>(Landroid/view/View;Landroid/graphics/PointF;Landroid/graphics/Rect;JF)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_deleted:I

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mDeleteString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->createPostDeleteAnimationRunnable(Landroid/view/View;)Ljava/lang/Runnable;

    move-result-object v1

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v3, p0, Lcom/android/keyguard/PagedView;->FLING_TO_DELETE_FADE_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v9

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v8

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/keyguard/PagedView$11;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/PagedView$11;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iput-boolean v8, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v3, 0x9

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    neg-float v3, v2

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    :goto_1
    cmpl-float v5, v2, v4

    if-nez v5, :cond_2

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_0

    :cond_2
    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    move v0, v1

    :cond_3
    if-nez v0, :cond_4

    cmpl-float v0, v3, v4

    if-lez v0, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    :goto_2
    return v1

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    move v3, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-gt v2, v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-gtz v0, :cond_2

    :goto_2
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    :cond_0
    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-nez v2, :cond_c

    :goto_1
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    iget v3, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-ne v3, v1, :cond_0

    return v1

    :pswitch_1
    iget v2, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v2, :cond_5

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :pswitch_2
    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-nez v2, :cond_8

    :goto_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalX()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_6
    move v2, v1

    :goto_3
    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v2, :cond_b

    :cond_7
    invoke-direct {p0, v1}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_0

    :cond_8
    const-string/jumbo v2, "interceptTouch(): DOWN"

    invoke-direct {p0, v2}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget v3, p0, Lcom/android/keyguard/PagedView;->mTouchSlop:I

    if-lt v2, v3, :cond_6

    move v2, v0

    goto :goto_3

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    :cond_b
    iget v2, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PagedView;->isTouchPointInViewportWithBuffer(II)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    iget v2, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PagedView;->isTouchPointInCurrentPage(II)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WidgetPagedView"

    const-string/jumbo v1, "PagedView.onLayout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportOffsetY()I

    move-result v3

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    add-int/2addr v1, v0

    const/4 v0, 0x0

    move v11, v0

    move v0, v1

    move v1, v11

    :goto_0
    if-lt v1, v2, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    if-nez v0, :cond_5

    :cond_2
    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const-string/jumbo v8, "WidgetPagedView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\tlayout-child"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v0

    add-int/2addr v7, v5

    invoke-virtual {v4, v0, v5, v8, v7}, Landroid/view/View;->layout(IIII)V

    iget v4, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    add-int/2addr v4, v6

    add-int/2addr v0, v4

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->setHorizontalScrollBarEnabled(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mFirstLayout:Z

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 12

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v5, v2

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v5

    iget v7, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v7, v2

    iget v8, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v0, :cond_3

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_3
    if-eqz v1, :cond_2

    if-gtz v3, :cond_5

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_5
    if-lez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingBottom()I

    move-result v1

    add-int v8, v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPaddingRight()I

    move-result v1

    add-int v9, v0, v1

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PagedView.onMeasure(): "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PagedView.scaledSize: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v10, ", "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "PagedView.parentSize: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PagedView.horizontalPadding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PagedView.verticalPadding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v5

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_8

    invoke-virtual {p0, v6, v7}, Lcom/android/keyguard/PagedView;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    iget v0, p0, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_b

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mChildCountOnLastMeasure:I

    if-gtz v5, :cond_c

    :cond_7
    :goto_2
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    if-gtz v5, :cond_d

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    :goto_3
    return-void

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v11, -0x2

    if-eq v0, v11, :cond_9

    const/high16 v0, 0x40000000    # 2.0f

    :goto_4
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v11, -0x2

    if-eq v1, v11, :cond_a

    const/high16 v1, 0x40000000    # 2.0f

    :goto_5
    sub-int v11, v3, v9

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sub-int v11, v4, v8

    invoke-static {v11, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_9
    const/high16 v0, -0x80000000

    goto :goto_4

    :cond_a
    const/high16 v1, -0x80000000

    goto :goto_5

    :cond_b
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mDeferringForDelete:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    goto :goto_1

    :cond_c
    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRelativeChildOffset(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    sub-int v1, v3, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->setPageSpacing(I)V

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v0

    add-int/lit8 v1, v5, -0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    goto/16 :goto_3
.end method

.method protected onPageBeginMoving()V
    .locals 0

    return-void
.end method

.method public onPageBeginWarp()V
    .locals 0

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    return-void
.end method

.method public onPageEndWarp()V
    .locals 0

    return-void
.end method

.method public abstract onRemoveView(Landroid/view/View;Z)V
.end method

.method public abstract onRemoveViewAnimationCompleted()V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onStartReordering()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mIsReordering:Z

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getVisiblePages([I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v0}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget_reorder_start:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v4

    if-gt v0, v2, :cond_2

    goto :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v4, 0x4

    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->saveDownState(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v1, :cond_3

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->setTouchState(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsCameraEvent:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onTouch(): DOWN"

    invoke-direct {p0, v0}, Lcom/android/keyguard/PagedView;->animateWarpPageOnScreen(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    goto :goto_2

    :pswitch_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v4, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->isHorizontalCameraScroll(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-eq v0, v3, :cond_5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v0, v4

    sub-float v4, v0, v3

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v0, v5

    iput v0, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_8

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    add-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-float v0, v6

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    :goto_3
    iput v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    float-to-int v0, v4

    int-to-float v0, v0

    sub-float v0, v4, v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_0

    :cond_5
    return v1

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getTranslationX()F

    move-result v2

    sub-float/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    float-to-int v0, v4

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/PagedView;->scrollBy(II)V

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onTouchEvent().Scrolling: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->awakenScrollBars()Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v4, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v0, v4}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    aget v4, v0, v2

    iput v4, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    iget v0, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_BUFFER_PERCENTAGE:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v0, v5

    float-to-int v0, v0

    iget-object v5, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {p0, p0, v5, v7}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v5

    aget v5, v5, v2

    int-to-float v6, v0

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/keyguard/PagedView;->mViewport:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-virtual {p0, p0, v6, v7}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v6

    aget v6, v6, v2

    int-to-float v0, v0

    sub-float v0, v6, v0

    float-to-int v0, v0

    iget v6, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    float-to-int v7, v7

    invoke-direct {p0, v6, v7}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v6

    invoke-virtual {p0, v4, v6}, Lcom/android/keyguard/PagedView;->setPageHoveringOverDeleteDropTarget(IZ)V

    const-string/jumbo v7, "WidgetPagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leftBufferEdge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WidgetPagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rightBufferEdge: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WidgetPagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mLastMotionX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WidgetPagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mLastMotionY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WidgetPagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mParentDownMotionX: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "WidgetPagedView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mParentDownMotionY: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    int-to-float v5, v5

    cmpg-float v5, v7, v5

    if-gez v5, :cond_a

    if-gtz v4, :cond_d

    :cond_a
    int-to-float v0, v0

    cmpl-float v0, v7, v0

    if-lez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_e

    :cond_b
    move v0, v3

    :goto_4
    if-gt v0, v3, :cond_f

    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput v3, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v0, v4, -0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v4, 0x1

    goto :goto_4

    :cond_f
    if-nez v6, :cond_c

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v2, v3, v2

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v1

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v1, v3}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    iget-object v3, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v3, v2

    if-gt v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I

    new-instance v2, Lcom/android/keyguard/PagedView$1;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/keyguard/PagedView$1;-><init>(Lcom/android/keyguard/PagedView;II)V

    iput-object v2, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/android/keyguard/PagedView;->REORDERING_SIDE_PAGE_HOVER_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/keyguard/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->startScrolling(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_28

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2a

    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v4, :cond_2c

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-nez v0, :cond_2e

    :cond_11
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mSidePageHoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/android/keyguard/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-eq v4, v3, :cond_1a

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/keyguard/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMaximumVelocity:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-virtual {v4, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v4, v0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float v0, v3, v0

    float-to-int v5, v0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v7, v6

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    cmpl-float v0, v0, v7

    if-lez v0, :cond_1b

    move v0, v1

    :goto_7
    iget v7, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v8, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v9, p0, Lcom/android/keyguard/PagedView;->mLastMotionXRemainder:F

    add-float/2addr v8, v9

    sub-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v3, v7

    iput v3, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mTotalMotionX:F

    const/high16 v7, 0x41c80000    # 25.0f

    cmpl-float v3, v3, v7

    if-lez v3, :cond_14

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p0, Lcom/android/keyguard/PagedView;->mFlingThresholdVelocity:I

    if-gt v3, v7, :cond_1c

    :cond_14
    move v3, v2

    :goto_8
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v6, v6

    const v8, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v6, v8

    cmpl-float v6, v7, v6

    if-lez v6, :cond_15

    int-to-float v6, v4

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v6

    int-to-float v7, v5

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_15

    if-nez v3, :cond_1d

    :cond_15
    :goto_9
    if-nez v0, :cond_1e

    :cond_16
    if-nez v3, :cond_21

    :cond_17
    :goto_a
    if-nez v0, :cond_23

    :cond_18
    if-nez v3, :cond_25

    :cond_19
    :goto_b
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_6

    :cond_1a
    return v1

    :cond_1b
    move v0, v2

    goto :goto_7

    :cond_1c
    move v3, v1

    goto :goto_8

    :cond_1d
    move v2, v1

    goto :goto_9

    :cond_1e
    if-lez v5, :cond_16

    if-nez v3, :cond_16

    :cond_1f
    iget v6, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v6, :cond_17

    if-eqz v2, :cond_22

    :cond_20
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    :goto_c
    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto/16 :goto_6

    :cond_21
    if-gtz v4, :cond_1f

    goto :goto_a

    :cond_22
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_20

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_23
    if-gez v5, :cond_18

    if-nez v3, :cond_18

    :cond_24
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_19

    if-nez v2, :cond_26

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    :goto_d
    invoke-virtual {p0, v0, v4}, Lcom/android/keyguard/PagedView;->snapToPageWithVelocity(II)V

    goto/16 :goto_6

    :cond_25
    if-ltz v4, :cond_24

    goto :goto_b

    :cond_26
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    goto :goto_d

    :cond_27
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    goto :goto_d

    :cond_28
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v2, :cond_29

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_6

    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    :cond_2a
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v0, v2, :cond_2b

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto/16 :goto_6

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    :cond_2c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v3, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0, p0, v0, v3}, Lcom/android/keyguard/PagedView;->mapPointFromViewToParent(Landroid/view/View;FF)[F

    move-result-object v0

    aget v3, v0, v2

    iput v3, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->isFlingingToDelete()Landroid/graphics/PointF;

    move-result-object v0

    if-nez v0, :cond_2d

    :goto_e
    if-nez v2, :cond_12

    iget v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    float-to-int v0, v0

    iget v2, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/keyguard/PagedView;->isHoveringOverDeleteDropTarget(II)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->onDropToDelete()V

    goto/16 :goto_6

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->onFlingToDelete(Landroid/graphics/PointF;)V

    move v2, v1

    goto :goto_e

    :cond_2e
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->isAnimatingWarpPage()Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "unhandled tap"

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PagedView;->animateWarpPageOffScreen(Ljava/lang/String;Z)V

    goto/16 :goto_5

    :pswitch_4
    iget v0, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    if-eq v0, v1, :cond_2f

    :goto_f
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->resetTouchState()V

    goto/16 :goto_0

    :cond_2f
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->snapToDestination()V

    goto :goto_f

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/keyguard/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method onTouchStateChanged(I)V
    .locals 3

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTouchStateChanged(old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mTouchState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected overScroll(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->dampedOverScroll(F)V

    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageBeginMoving()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageBeginWarp()V

    goto :goto_1
.end method

.method protected pageEndMoving()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mIsPageMoving:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onPageEndMoving()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    iput-boolean v1, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    return v2

    :cond_1
    return v3

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollRight()V

    return v3

    :sswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->scrollLeft()V

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->indexToPage(I)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2
.end method

.method protected screenScrolled(I)V
    .locals 0

    return-void
.end method

.method public scrollBy(II)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    return-void
.end method

.method public scrollLeft()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    if-gtz v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    if-gt p1, v0, :cond_2

    iput p1, p0, Lcom/android/keyguard/PagedView;->mOverScrollX:I

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mTouchX:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mSmoothingTime:F

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_1
    invoke-super {p0, v2, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->overScroll(F)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    aget v1, v0, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    aget v0, v0, v3

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    goto :goto_1
.end method

.method setCurrentPage(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateCurrentPageScroll()V

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicator()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setDataIsReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mIsDataReady:Z

    return-void
.end method

.method setDeleteDropTarget(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mDeleteDropTarget:Landroid/view/View;

    return-void
.end method

.method public setMinScale(F)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->requestLayout()V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnlyAllowEdgeSwipes(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/PagedView;->mOnlyAllowEdgeSwipes:Z

    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 0

    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageSpacing:I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidateCachedOffsets()V

    return-void
.end method

.method public setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V
    .locals 3

    iput-object p1, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mPageSwitchListener:Lcom/android/keyguard/PagedView$PageSwitchListener;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/PagedView$PageSwitchListener;->onPageSwitched(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setScaleX(F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionX:F

    iget v1, p0, Lcom/android/keyguard/PagedView;->mParentDownMotionY:F

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/keyguard/PagedView;->mapPointFromParentToView(Landroid/view/View;FF)[F

    move-result-object v0

    aget v1, v0, v2

    iput v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    aget v0, v0, v3

    iput v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->updateDragViewTranslationDuringDrag()V

    goto :goto_0
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mTopAlignPageWhenShrinkingForBouncer:Z

    return v0
.end method

.method protected showScrollingIndicator(Z)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/keyguard/PagedView;->mShouldShowScrollIndicator:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollingIndicator()Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->updateScrollingIndicatorPosition()V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->cancelScrollingIndicatorAnimations()V

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    const-string/jumbo v1, "alpha"

    new-array v2, v2, [F

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    return-void

    :cond_0
    const-string/jumbo v2, "snapToDestination"

    iget v3, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected snapToPage(I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    return-void
.end method

.method protected snapToPage(III)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    return-void
.end method

.method protected snapToPage(IIIZ)V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iput p1, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->notifyPageSwitching(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->pageBeginMoving()V

    invoke-virtual {p0, p3}, Lcom/android/keyguard/PagedView;->awakenScrollBars(I)Z

    if-nez p4, :cond_5

    if-eqz p3, :cond_6

    move v5, p3

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->notifyPageSwitched()V

    if-nez p4, :cond_8

    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PagedView;->mForceScreenScrolled:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->invalidate()V

    return-void

    :cond_2
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageWarpIndex()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/PagedView;->mNextPage:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->dispatchOnPageEndWarp()V

    iput-boolean v2, p0, Lcom/android/keyguard/PagedView;->mWarpPageExposed:Z

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    goto :goto_2

    :cond_5
    move v5, v2

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_4

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->computeScroll()V

    goto :goto_5
.end method

.method protected snapToPage(IIZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string/jumbo v1, "WidgetPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snapToPage.getChildOffset(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "WidgetPagedView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "snapToPage.getRelativeChildOffset(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/keyguard/PagedView;->snapToPage(IIIZ)V

    return-void
.end method

.method protected snapToPageImmediately(I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/PagedView;->snapToPage(IIZ)V

    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->isWarping()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    const-string/jumbo v0, "WidgetPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "snapToPage.getChildOffset(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "WidgetPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "snapToPageWithVelocity.getRelativeChildOffset(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getViewportWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getChildWidth(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/keyguard/PagedView;->mUnboundedScrollX:I

    sub-int/2addr v0, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mMinFlingVelocity:I

    if-lt v3, v4, :cond_2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    mul-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v4, v2

    int-to-float v2, v2

    invoke-virtual {p0, v3}, Lcom/android/keyguard/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/PagedView;->mMinSnapVelocity:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/keyguard/PagedView;->snapToPage(III)V

    return-void

    :cond_0
    const-string/jumbo v3, "snapToPageWithVelocity"

    iget v4, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/android/keyguard/PagedView;->cancelWarpAnimation(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/PagedView;->getPageSnapDuration()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/PagedView;->snapToPage(II)V

    return-void
.end method

.method public startPageWarp(I)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/android/keyguard/PagedView;->mPageWarpIndex:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/PagedView;->mPageSwapIndex:I

    goto :goto_0
.end method

.method public startReordering()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aput v3, v1, v3

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v4, v1}, Lcom/android/keyguard/PagedView;->boundByReorderablePages(Z[I)V

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v3

    if-le v1, v0, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/PagedView;->mReorderingStarted:Z

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->zoomOut()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return v4

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    goto :goto_0
.end method

.method public stopPageWarp()V
    .locals 0

    return-void
.end method

.method swapPages(II)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/keyguard/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/PagedView;->scrollTo(II)V

    iget-object v1, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    return-void
.end method

.method updateDragViewTranslationDuringDrag()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/PagedView;->mLastMotionX:F

    iget v1, p0, Lcom/android/keyguard/PagedView;->mDownMotionX:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mDownScrollX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/PagedView;->mLastMotionY:F

    iget v2, p0, Lcom/android/keyguard/PagedView;->mDownMotionY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    iget-object v2, p0, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTranslationY(F)V

    const-string/jumbo v2, "WidgetPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PagedView.updateDragViewTranslationDuringDrag(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string/jumbo v4, "scaleX"

    new-array v5, v1, [F

    aput v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, "scaleY"

    new-array v5, v1, [F

    aput v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$8;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/PagedView$8;-><init>(Lcom/android/keyguard/PagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    :goto_2
    return v2

    :cond_5
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method protected zoomOut()Z
    .locals 7

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleX()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move v0, v1

    :goto_1
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/PagedView;->getScaleY()F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/PagedView;->REORDERING_ZOOM_IN_OUT_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string/jumbo v4, "scaleX"

    new-array v5, v1, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, "scaleY"

    new-array v5, v1, [F

    iget v6, p0, Lcom/android/keyguard/PagedView;->mMinScale:F

    aput v6, v5, v2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/PagedView$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/PagedView$5;-><init>(Lcom/android/keyguard/PagedView;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    return v2
.end method
