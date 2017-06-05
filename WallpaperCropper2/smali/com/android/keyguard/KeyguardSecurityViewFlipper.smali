.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "Unknown"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardSecurityViewFlipper"


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    packed-switch p2, :pswitch_data_0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    :pswitch_0
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :pswitch_1
    const/high16 v0, -0x80000000

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    goto :goto_0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityView;->getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    goto :goto_0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eq v0, v4, :cond_2

    move v3, v2

    :goto_2
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->hideBouncer(I)V

    goto :goto_1

    :cond_2
    move v3, p1

    goto :goto_2
.end method

.method public needsInput()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v0

    goto :goto_0
.end method

.method public needsShowClockandNotifications()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsShowClockandNotifications()Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13

    const/high16 v12, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v3

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v10, v1, v8

    sub-int v11, v0, v9

    if-eq v5, v12, :cond_3

    move v1, v4

    :goto_1
    if-eq v6, v12, :cond_4

    move v0, v4

    :goto_2
    move v5, v1

    move v1, v0

    :goto_3
    if-lt v4, v7, :cond_5

    add-int v0, v5, v8

    add-int/2addr v1, v9

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setMeasuredDimension(II)V

    return-void

    :cond_0
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    iget v1, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-gtz v1, :cond_1

    move v1, v2

    :goto_4
    iget v8, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-gtz v8, :cond_2

    move v0, v3

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    goto :goto_4

    :cond_2
    iget v0, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    iget v12, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->width:I

    invoke-direct {p0, v10, v12}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v12

    iget v0, v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->height:I

    invoke-direct {p0, v11, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v0

    invoke-virtual {v6, v12, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v12, v2, v8

    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v6, v3, v9

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_3
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_0
.end method

.method public onResume(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    move v2, v0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    goto :goto_0
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eq v0, v4, :cond_2

    move v3, v2

    :goto_2
    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->showBouncer(I)V

    goto :goto_1

    :cond_2
    move v3, p1

    goto :goto_2
.end method

.method public showUsabilityHint()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->showUsabilityHint()V

    goto :goto_0
.end method

.method public startAppearAnimation()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    goto :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
