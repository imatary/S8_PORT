.class public Lcom/android/keyguard/CheckLongPressHelper;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mHasPerformedLongPress:Z

.field private mLongPressTimeout:I

.field private mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

.field private mScaledTouchSlop:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mLongPressTimeout:I

    iput-object p1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CheckLongPressHelper;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/CheckLongPressHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CheckLongPressHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return p1
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    goto :goto_0
.end method

.method public hasPerformedLongPress()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    return v0
.end method

.method public onMove(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownX:F

    sub-float v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownY:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/CheckLongPressHelper;->mScaledTouchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :goto_1
    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    :goto_2
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_0

    goto :goto_2
.end method

.method public postCheckForLongPress(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mDownY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mHasPerformedLongPress:Z

    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    iget v2, p0, Lcom/android/keyguard/CheckLongPressHelper;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    new-instance v0, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;-><init>(Lcom/android/keyguard/CheckLongPressHelper;)V

    iput-object v0, p0, Lcom/android/keyguard/CheckLongPressHelper;->mPendingCheckForLongPress:Lcom/android/keyguard/CheckLongPressHelper$CheckForLongPress;

    goto :goto_0
.end method
