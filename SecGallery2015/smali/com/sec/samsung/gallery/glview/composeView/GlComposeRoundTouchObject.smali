.class Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
.source "GlComposeRoundTouchObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;,
        Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;
    }
.end annotation


# static fields
.field private static final CIRCLE_THICKNEXX:F = 3.0f

.field private static final ROUND_RADIUS:F = 1.0f

.field private static final TIME_FADEDING_ANIM:I = 0x1f4

.field private static final TIME_PRESS_ANIM:I = 0xc8

.field private static final TIME_RIPPLE_ENLARGE_ANIM:I = 0x7d0

.field static final TOUCH_EFFECT_ALPHA:F = 0.08f

.field private static final VERTEX_CNT_RIPPLE:I = 0x48


# instance fields
.field private mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

.field private mDx:I

.field private mDy:I

.field private mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

.field private mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

.field private final mUseCircle:Z


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;IZ)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;I)V

    const/16 v0, 0x48

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setRoundedOption(IIF)V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mEmptyFill:Z

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mIndex:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setEmptyFillColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setAlpha(F)V

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mUseCircle:Z

    return-void
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mDx:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mDy:I

    return v0
.end method

.method private drawBorder(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7

    const v6, 0x8076

    const/16 v5, 0x1406

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderColor:[F

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderColor:[F

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderColor:[F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mEmptyFillColor:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mAlphaInh:F

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcCircleColors([FIIF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderColor:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v5, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertexBorderColorBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v5, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIILjava/nio/Buffer;)V

    const/4 v0, 0x5

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDisableClientState(I)V

    return-void
.end method

.method private initCircleObj()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    return-void
.end method

.method private initRippleAnimation()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method


# virtual methods
.method protected cancelAnimation()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->cancelAnim()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    :cond_1
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V
    .locals 10

    if-eqz p2, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mParent:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mExtChanged:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mExtChanged:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mx:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->my:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mz:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoll:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoll:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mScaleX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mScaleY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mScaleX:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixValInh:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mWidth:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mHeight:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :cond_3
    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixDisp:[F

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixValEx:[F

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixValInh:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget v0, v8, Lcom/sec/android/gallery3d/glcore/GlObject;->mAlphaInh:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mAlpha:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mAlphaInh:F

    :cond_4
    :goto_0
    if-eqz p3, :cond_c

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    if-eqz v0, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlCanvas:Lcom/sec/android/gallery3d/glcore/GlCanvas;

    const/4 v7, 0x0

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixDisp:[F

    array-length v0, v0

    if-ge v7, v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixDisp:[F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixDisp:[F

    aget v1, v1, v7

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_INT:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v1, v1

    sget v2, Lcom/sec/android/gallery3d/glcore/TUtils;->PRECISION_FLOAT:F

    div-float/2addr v1, v2

    aput v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixVal:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixDisp:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixValInh:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixValEx:[F

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mAlpha:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mAlphaInh:F

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mMatrixDisp:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    if-eqz v6, :cond_7

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mEmptyFill:Z

    if-eqz v0, :cond_c

    :cond_7
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlState;->getBlendType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setBlendType(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    :cond_8
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mEmptyFillRed:F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mEmptyFillGreen:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mEmptyFillBlue:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mAlphaInh:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertices:[F

    if-nez v0, :cond_9

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertices:[F

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mUseCircle:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundMode:I

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIF)V

    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mUseCircle:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderVertices:[F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderVertices:[F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundMode:I

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x40400000    # 3.0f

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mWidth:F

    div-float/2addr v5, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedBorderVertex([FIIFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderVertices:[F

    invoke-static {v0}, Lcom/sec/android/gallery3d/glcore/TUtils;->getFloatBufferFromFloatArray([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedBorderVertexBuffer:Ljava/nio/FloatBuffer;

    :cond_9
    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    div-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mUseCircle:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->drawBorder(Ljavax/microedition/khronos/opengles/GL11;)V

    :cond_a
    const/16 v0, 0x100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    const/16 v0, 0xb90

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColorMask(ZZZZ)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDepthMask(Z)V

    const/16 v0, 0x200

    const/4 v1, 0x1

    const/16 v2, 0xff

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    const/16 v0, 0x1e01

    const/16 v1, 0x1e00

    const/16 v2, 0x1e00

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glStencilOp(III)V

    const/16 v0, 0xff

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glStencilMask(I)V

    const/16 v0, 0x400

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    const/4 v0, 0x3

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mGlState:Lcom/sec/android/gallery3d/glcore/GlState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlState;->setRectVertex(Z)V

    const/4 v0, 0x6

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    div-int/lit8 v2, v2, 0x3

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glColorMask(ZZZZ)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDepthMask(Z)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glStencilMask(I)V

    const/16 v0, 0x202

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    const/16 v0, 0x202

    const/4 v1, 0x1

    const/16 v2, 0xff

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glStencilFunc(III)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;->inBoundDraw(Ljavax/microedition/khronos/opengles/GL11;ZZ)V

    :cond_b
    const/16 v0, 0xb90

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    :cond_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundedVertices:[F

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundVertexCnt:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundMode:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRoundRadius:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mWidth:F

    div-float/2addr v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mHeight:F

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mWidth:F

    div-float/2addr v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/android/gallery3d/glcore/TUtils;->calcRoundedVertex([FIIFF)V

    goto/16 :goto_2
.end method

.method initTouchAnimation()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    return-void
.end method

.method moved(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mXrb:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mXlt:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mYrb:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mYlt:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->cancelAnim()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-super {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->onDestroy()V

    return-void
.end method

.method protected onMoved(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onPressed(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onReleased(IIII)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method pressed(II)V
    .locals 1

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mDx:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mDy:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->initCircleObj()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->initTouchAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->initRippleAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->startPressAnim()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->access$000(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V

    return-void
.end method

.method released()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->cancelAnim()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V

    :cond_1
    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mFocused:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mFocused:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mCircleObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeCircleRippleObject;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->initCircleObj()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->initTouchAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->initRippleAnimation()V

    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->startFocusAnim()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->access$400(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mTouchButtonAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlTouchButtonAnimation;->cancelAnim()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject;->mRippleAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;->access$100(Lcom/sec/samsung/gallery/glview/composeView/GlComposeRoundTouchObject$GlRippleAnimation;)V

    goto :goto_0
.end method
