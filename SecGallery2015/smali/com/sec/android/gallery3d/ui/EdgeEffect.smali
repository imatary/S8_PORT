.class Lcom/sec/android/gallery3d/ui/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# static fields
.field private static final ABSORB_START_ALPHA:F = 0.11f

.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EDGE_CONTROL_POINT_HEIGHT_NON_TAB_IN_DIP:F = 29.0f

.field private static final EDGE_CONTROL_POINT_HEIGHT_TAB_IN_DIP:F = 19.0f

.field private static final EDGE_PADDING_NON_TAB_IN_DIP:F = 5.0f

.field private static final EDGE_PADDING_TAB_IN_DIP:F = 3.0f

.field private static final EPSILON:F = 0.001f

.field private static final MAX_ALPHA:F = 0.15f

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

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

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

.field private final mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

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

    sput v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->SIN:F

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDisplacement:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTargetDisplacement:F

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    const v1, 0x7f10014f

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setColor(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    sget-object v1, Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;->FILL:Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setStyle(Lcom/sec/android/gallery3d/glrenderer/GLPaint$Style;)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    const/16 v0, 0x55

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTabHeight:F

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTabHeightBuffer:F

    return-void
.end method

.method private update()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDisplacement:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput v8, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iput v7, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x4

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v7, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iput v7, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_2
    iput v8, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x0

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->update()V

    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDisplacement:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    sub-float v17, v1, v2

    const/high16 v15, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v15

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, v17

    mul-float/2addr v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float v16, v1, v2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgeControlPointHeight:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgePadding:F

    add-float v7, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float v19, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLPaint;->setAlpha(F)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgePadding:F

    sub-float v6, v16, v19

    add-float v8, v16, v19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgePadding:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v12, v1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPaint:Lcom/sec/android/gallery3d/glrenderer/GLPaint;

    move-object/from16 v1, p1

    move v9, v7

    invoke-interface/range {v1 .. v14}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->drawCubicBezierCurve(FFFFFFFFFFFFLcom/sec/android/gallery3d/glrenderer/GLPaint;)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    const/16 v18, 0x1

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    if-nez v1, :cond_1

    if-eqz v18, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5

    const v4, 0x3e19999a    # 0.15f

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    const v0, 0x3de147ae    # 0.11f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    const v0, 0x3ccccccd    # 0.025f

    int-to-float v1, p1

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x6

    int-to-float v1, v1

    const v2, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTargetDisplacement:F

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/EdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 10

    const/4 v6, 0x1

    const v9, 0x3f666666    # 0.9f

    const/4 v8, 0x0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput p2, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTargetDisplacement:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    if-eq v4, v6, :cond_1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    :cond_1
    iput v6, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    iput-wide v2, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x43270000    # 167.0f

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3e19999a    # 0.15f

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_2

    iput v8, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    :goto_1
    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v5, v6

    div-float/2addr v4, v5

    sub-float v4, v9, v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    div-float v1, v4, v9

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    goto :goto_1
.end method

.method public onRelease()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mPullDistance:F

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mState:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7

    int-to-float v3, p1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    sget v4, Lcom/sec/android/gallery3d/ui/EdgeEffect;->SIN:F

    div-float v1, v3, v4

    sget v3, Lcom/sec/android/gallery3d/ui/EdgeEffect;->COS:F

    mul-float v2, v3, v1

    sub-float v0, v1, v2

    int-to-float v3, p1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTabHeight:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mTabHeightBuffer:F

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_0

    const/high16 v3, 0x40400000    # 3.0f

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgePadding:F

    const/high16 v3, 0x41980000    # 19.0f

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgeControlPointHeight:F

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, p2

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3, v4, v5, p1, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgePadding:F

    const/high16 v3, 0x41e80000    # 29.0f

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dpToPixel(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/EdgeEffect;->mEdgeControlPointHeight:F

    goto :goto_0
.end method
