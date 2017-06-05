.class public Lcom/android/keyguard/KeyguardWidgetCarousel;
.super Lcom/android/keyguard/KeyguardWidgetPager;
.source "Unknown"


# static fields
.field private static CAMERA_DISTANCE:F

.field private static MAX_SCROLL_PROGRESS:F


# instance fields
.field private mAdjacentPagesAngle:F

.field protected mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

.field mFastFadeInterpolator:Landroid/view/animation/Interpolator;

.field mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

.field mTmpTransform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    sput v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    const v0, 0x461c4000    # 10000.0f

    sput v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->CAMERA_DISTANCE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    new-instance v0, Lcom/android/keyguard/KeyguardWidgetCarousel$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardWidgetCarousel$1;-><init>(Lcom/android/keyguard/KeyguardWidgetCarousel;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mFastFadeInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardWidgetCarousel$2;-><init>(Lcom/android/keyguard/KeyguardWidgetCarousel;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->kg_carousel_angle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    return-void
.end method

.method private getTransformForPage(II[F)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    neg-float v2, v2

    mul-float/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v4, v3

    div-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    mul-float/2addr v1, v3

    add-float/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/4 v3, 0x0

    aput v1, p3, v3

    const/4 v1, 0x1

    aput v0, p3, v1

    const/4 v0, 0x2

    aput v2, p3, v0

    return-void
.end method

.method private updatePageAlphaValues(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mShowingInitialHints:Z

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isReordering(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isPageMoving()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_3

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getOutlineAlphaForPage(IIZ)F

    move-result v3

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getAlphaForPage(IIZ)F

    move-result v4

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_3
.end method


# virtual methods
.method animatePagesToCarousel()V
    .locals 15

    const/4 v3, 0x0

    const/4 v14, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v6

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getAlphaForPage(IIZ)F

    move-result v7

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getOutlineAlphaForPage(IIZ)F

    move-result v8

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    invoke-direct {p0, v0, v3, v9}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getTransformForPage(II[F)V

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    const-string/jumbo v9, "contentAlpha"

    new-array v10, v1, [F

    aput v7, v10, v2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string/jumbo v9, "backgroundAlpha"

    new-array v10, v1, [F

    aput v8, v10, v2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const-string/jumbo v9, "pivotX"

    new-array v10, v1, [F

    iget-object v11, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    aget v11, v11, v2

    aput v11, v10, v2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const-string/jumbo v10, "pivotY"

    new-array v11, v1, [F

    iget-object v12, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    aget v12, v12, v1

    aput v12, v11, v2

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const-string/jumbo v11, "rotationY"

    new-array v12, v1, [F

    iget-object v13, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    aget v13, v13, v14

    aput v13, v12, v2

    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v11

    if-nez v0, :cond_4

    new-array v0, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v0, v2

    aput-object v8, v0, v1

    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mFastFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_3
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-gt v3, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v0, v2

    aput-object v8, v0, v1

    aput-object v9, v0, v14

    const/4 v7, 0x3

    aput-object v10, v0, v7

    const/4 v7, 0x4

    aput-object v11, v0, v7

    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_3
.end method

.method animatePagesToNeutral()V
    .locals 12

    const/4 v3, 0x0

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v6

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_4

    :goto_3
    const-string/jumbo v7, "contentAlpha"

    new-array v8, v1, [F

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v8, v2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string/jumbo v8, "backgroundAlpha"

    new-array v9, v1, [F

    const v10, 0x3f19999a    # 0.6f

    aput v10, v9, v2

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const-string/jumbo v9, "rotationY"

    new-array v10, v1, [F

    aput v11, v10, v2

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v10, v2

    aput-object v8, v10, v1

    const/4 v7, 0x2

    aput-object v9, v10, v7

    invoke-static {v6, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v6, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    if-eqz v0, :cond_5

    :goto_4
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    if-gt v3, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v11}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_4
.end method

.method public getAlphaForPage(IIZ)F
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p2, v2, :cond_3

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    invoke-virtual {p0, p2, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isOverScrollChild(IF)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p3, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v0

    if-eq p2, v0, :cond_6

    return v4

    :cond_2
    return v4

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-gt p2, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    if-eqz v0, :cond_1

    :cond_6
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v0

    sget v1, Lcom/android/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v3

    sub-float v0, v3, v0

    return v0
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    sget v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    return v0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v0

    return v0
.end method

.method protected onEndReordering()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->onEndReordering()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    return-void
.end method

.method protected reorderStarting()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->animatePagesToNeutral()V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 9

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    const/4 v1, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->updatePageAlphaValues(I)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getScrollProgress(ILandroid/view/View;I)F

    move-result v2

    invoke-virtual {p0, p1, v3, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mDragView:Landroid/view/View;

    if-ne v3, v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_2

    sget v5, Lcom/android/keyguard/KeyguardWidgetCarousel;->CAMERA_DISTANCE:F

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isOverScrollChild(IF)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v2

    int-to-float v5, v2

    div-float/2addr v5, v8

    int-to-float v2, v2

    div-float/2addr v2, v8

    mul-float/2addr v2, v4

    add-float/2addr v2, v5

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    neg-float v6, v6

    mul-float/2addr v4, v6

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    invoke-virtual {v3, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-virtual {v3, v7, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    :goto_2
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v7

    if-nez v2, :cond_6

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    :cond_4
    sget v4, Lcom/android/keyguard/KeyguardWidgetCarousel;->OVERSCROLL_MAX_ROTATION:F

    neg-float v4, v4

    mul-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v2, v2, v7

    if-gez v2, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v3, v4, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1
.end method

.method public showInitialPageHints()V
    .locals 7

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mShowingInitialHints:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    if-nez v0, :cond_3

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v3, v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_3
    const v0, 0x3f19999a    # 0.6f

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_2
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->animatePagesToCarousel()V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomIn(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
