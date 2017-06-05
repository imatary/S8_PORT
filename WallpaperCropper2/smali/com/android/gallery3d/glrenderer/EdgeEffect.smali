.class public Lcom/android/gallery3d/glrenderer/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ABSORB_START_ALPHA:F = 0.11f

.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 8.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 2.0f

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.4f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAB_HEIGHT_BUFFER_IN_DIP:F = 5.0f

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDuration:F

.field private mEdgeControlPointHeight:F

.field private mEdgePadding:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private final mTabHeight:F

.field private final mTabHeightBuffer:F

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v2, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->SIN:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/gallery3d/glrenderer/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDisplacement:F

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTargetDisplacement:F

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/glrenderer/GLPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    const v1, -0xff5a3c

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    sget-object v1, Lcom/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/android/gallery3d/glrenderer/GLPaint$Style;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/glrenderer/GLPaint;->setStyle(Lcom/android/gallery3d/glrenderer/GLPaint$Style;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTabHeight:F

    :goto_0
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTabHeightBuffer:F

    return-void

    :cond_0
    const/high16 v0, 0x42800000    # 64.0f

    invoke-direct {p0, v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->dipToPixels(F)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTabHeight:F

    goto :goto_0
.end method

.method private dipToPixels(F)F
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private update()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/gallery3d/glrenderer/AnimationTime;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYFinish:F

    iget v4, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDisplacement:F

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDisplacement:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v6, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    invoke-static {}, Lcom/android/gallery3d/glrenderer/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    iput v5, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaFinish:F

    iput v5, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    invoke-static {}, Lcom/android/gallery3d/glrenderer/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44fa0000    # 2000.0f

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    iput v5, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaFinish:F

    iput v5, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_2
    iput v6, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 14

    invoke-direct {p0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->update()V

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v0, v2}, Lcom/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDisplacement:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgeControlPointHeight:F

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgePadding:F

    add-float v6, v1, v2

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v7, v1, v2

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/glrenderer/GLPaint;->setAlpha(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgePadding:F

    sub-float v5, v0, v7

    add-float/2addr v7, v0

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    iget v10, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgePadding:F

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v11, v0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    move-object v0, p1

    move v8, v6

    invoke-interface/range {v0 .. v13}, Lcom/android/gallery3d/glrenderer/GLCanvas;->drawCubicBezierCurve(FFFFFFFFFFFFLcom/android/gallery3d/glrenderer/GLPaint;)V

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    const/4 v0, 0x1

    :cond_0
    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    if-nez v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v0}, Lcom/android/gallery3d/glrenderer/GLPaint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 5

    const v4, 0x3e19999a    # 0.15f

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    int-to-float v1, v0

    const v2, 0x3ca3d70a    # 0.02f

    mul-float/2addr v1, v2

    add-float/2addr v1, v4

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    const v1, 0x3de147ae    # 0.11f

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    div-int/lit8 v1, v0, 0x64

    mul-int/2addr v1, v0

    int-to-float v1, v1

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const v2, 0x3ccccccd    # 0.025f

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYFinish:F

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v0, v0, 0x6

    int-to-float v0, v0

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v0, v2

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaFinish:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTargetDisplacement:F

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 7

    const/4 v6, 0x1

    const v5, 0x3f666666    # 0.9f

    const/4 v4, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput p2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTargetDisplacement:F

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    if-eq v2, v6, :cond_1

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    :cond_1
    iput v6, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    iput-wide v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x43270000    # 167.0f

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPullDistance:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPullDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    const v2, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    const v1, 0x3e19999a    # 0.15f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPullDistance:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iput v4, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    :goto_0
    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaFinish:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYFinish:F

    return-void

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPullDistance:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    sub-float v0, v5, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    goto :goto_0
.end method

.method public onRelease()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPullDistance:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mState:I

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Lcom/android/gallery3d/glrenderer/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mDuration:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mPaint:Lcom/android/gallery3d/glrenderer/GLPaint;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 5

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    sget v1, Lcom/android/gallery3d/glrenderer/EdgeEffect;->SIN:F

    div-float/2addr v0, v1

    sget v1, Lcom/android/gallery3d/glrenderer/EdgeEffect;->COS:F

    mul-float/2addr v1, v0

    sub-float/2addr v0, v1

    int-to-float v1, p1

    iget v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTabHeight:F

    iget v3, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v1}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->dipToPixels(F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgePadding:F

    const/high16 v1, 0x41000000    # 8.0f

    invoke-direct {p0, v1}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->dipToPixels(F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgeControlPointHeight:F

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, p1, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    const/high16 v1, 0x40a00000    # 5.0f

    invoke-direct {p0, v1}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->dipToPixels(F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgePadding:F

    const/high16 v1, 0x41e80000    # 29.0f

    invoke-direct {p0, v1}, Lcom/android/gallery3d/glrenderer/EdgeEffect;->dipToPixels(F)F

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/glrenderer/EdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0
.end method
