.class public Lcom/android/keyguard/KeyguardGlowStripView;
.super Landroid/widget/LinearLayout;
.source "Unknown"


# static fields
.field private static final DURATION:I = 0x1f4

.field private static final SLIDING_WINDOW_SIZE:F = 0.4f


# instance fields
.field private mAnimationProgress:F

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private mDotDrawable:Landroid/graphics/drawable/Drawable;

.field private mDotSize:I

.field private mDotStripTop:I

.field private mDrawDots:Z

.field private mHorizontalDotGap:I

.field private mLeftToRight:Z

.field private mNumDots:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/keyguard/KeyguardGlowStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardGlowStripView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimationProgress:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDrawDots:Z

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView_dotSize:I

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    sget v1, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView_numDots:I

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    sget v1, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView_glowDot:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/keyguard/R$styleable;->KeyguardGlowStripView_leftToRight:I

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardGlowStripView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDrawDots:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardGlowStripView;F)F
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimationProgress:F

    return p1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3e4ccccd    # 0.2f

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDrawDots:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v4, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    if-lt v0, v2, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    int-to-float v2, v0

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    mul-float/2addr v2, v3

    add-float/2addr v2, v5

    iget v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimationProgress:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    div-float/2addr v2, v5

    sub-float v2, v6, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v3, v1

    iget v4, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotStripTop:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mHorizontalDotGap:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public makeEmGo()V
    .locals 5

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mLeftToRight:Z

    if-nez v3, :cond_2

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [F

    aput v0, v1, v4

    const/4 v0, 0x1

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardGlowStripView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardGlowStripView$1;-><init>(Lcom/android/keyguard/KeyguardGlowStripView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/keyguard/KeyguardGlowStripView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardGlowStripView$2;-><init>(Lcom/android/keyguard/KeyguardGlowStripView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotSize:I

    iget v2, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mNumDots:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mHorizontalDotGap:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardGlowStripView;->mDotStripTop:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardGlowStripView;->invalidate()V

    return-void
.end method
