.class public Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;
.super Landroid/support/design/widget/CoordinatorLayout$Behavior;
.source "ChannelCommentsBottomSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$SettleRunnable;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$State;,
        Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/design/widget/CoordinatorLayout$Behavior",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static final HIDE_FRICTION:F = 0.1f

.field private static final HIDE_THRESHOLD:F = 0.4f

.field private static final STATE_DRAGGING:I = 0x1

.field private static final STATE_EXPANDED:I = 0x2

.field public static final STATE_HIDDEN:I = 0x3

.field private static final STATE_SETTLING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CommentsBehavior"


# instance fields
.field private mActivePointerId:I

.field private mBottomOffset:I

.field private mCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

.field private mFooterRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialY:I

.field private mListRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mTopOffset:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mState:I

    new-instance v0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$1;-><init>(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mTopOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;Landroid/view/View;F)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->setStateInternal(I)V

    return-void
.end method

.method private checkTouchSlop(I)Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mInitialY:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mActivePointerId:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private setStateInternal(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$State;
        .end annotation
    .end param

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mState:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;->onStateChanged(I)V

    goto :goto_0
.end method

.method private shouldHide(Landroid/view/View;F)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, p2

    add-float v0, v2, v3

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3ecccccd    # 0.4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->reset()V

    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->recordMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->reset()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mInitialY:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mListRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mFooterRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v3, :cond_3

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v3, v2, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_4

    iget v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mInitialY:I

    invoke-virtual {p1, v1, v2, v5}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p3, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mActivePointerId:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mTopOffset:I

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f1200a6

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mListRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const v1, 0x7f12009c

    invoke-virtual {p1, v1}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mFooterRef:Ljava/lang/ref/WeakReference;

    return v2

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mBottomOffset:I

    invoke-static {p2, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    return-void
.end method

.method public onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->reset()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p3}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->recordMovement(Landroid/view/MotionEvent;)V

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->checkTouchSlop(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mViewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBottomSheetCallback(Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior;->mCallback:Lcom/sec/samsung/gallery/view/channelcomments/ChannelCommentsBottomSheetBehavior$BottomSheetCallback;

    return-void
.end method
