.class public Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PinchHelper.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;
    }
.end annotation


# static fields
.field private static final mDTAnimDuration:J = 0x96L

.field private static final mDec:F = 0.00125f


# instance fields
.field private MAX_SCALE:I

.field private SCALE_FLING_DELAY:J

.field private currScale:F

.field dst:Landroid/graphics/RectF;

.field private mActualImageRect:Landroid/graphics/RectF;

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mDTAnimStartTime:J

.field private mDTEndScale:F

.field private mDTEndTransX:F

.field private mDTEndTransY:F

.field private mDTStartScale:F

.field private mDTStartTransX:F

.field private mDTStartTransY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageHeight:I

.field private mImageRect:Landroid/graphics/RectF;

.field private mImageWidth:I

.field private mIsDTAnimating:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPinchMatrix:[F

.field private mPreviousUpdate:J

.field private mScaleEndTime:J

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

.field private mScreenHeight:I

.field private mScreenToViewMatrix:Landroid/graphics/Matrix;

.field private mScreenWidth:I

.field private mTapTime:J

.field private mValues:[F

.field private mVelocityFactor:F

.field private mVelocityX:F

.field private mVelocityY:F

.field private mViewHeight:I

.field private mViewRect:Landroid/graphics/RectF;

.field private mViewWidth:I

.field mainLayout:Landroid/widget/FrameLayout;

.field marginLeft:F

.field marginTop:F

.field protected origHeight:F

.field protected origWidth:F

.field private scaleRef:F

.field private scaleStart:F


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;[FLcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleStart:F

    const v0, 0x3c75c290    # 0.015000001f

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityFactor:F

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->SCALE_FLING_DELAY:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPinchMatrix:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    return-void
.end method

.method private printMatrix(Landroid/graphics/Matrix;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/16 v1, 0x9

    new-array v0, v1, [F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const-string v1, "**************************************************"

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSCALE_X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSCALE_Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTRANS_X: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTRANS_Y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trans calculated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    int-to-float v2, v2

    aget v3, v0, v4

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    int-to-float v2, v2

    aget v3, v0, v5

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view width, height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image width, height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaled bitmap width, height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    int-to-float v2, v2

    aget v3, v0, v4

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    int-to-float v2, v2

    aget v3, v0, v5

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->l(Ljava/lang/String;)V

    return-void
.end method

.method private updateMatrix()V
    .locals 10

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginLeft:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginTop:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPinchMatrix:[F

    invoke-static {v2, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenWidth:I

    int-to-float v3, v3

    div-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    mul-float/2addr v2, v6

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPinchMatrix:[F

    neg-float v3, v0

    neg-float v4, v1

    invoke-static {v2, v7, v3, v4, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPinchMatrix:[F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    invoke-static {v2, v7, v3, v4, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPinchMatrix:[F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    sub-float/2addr v4, v8

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenWidth:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->dst:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v4, v1, v4

    invoke-static {v2, v7, v3, v4, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-void
.end method

.method correctTranslate()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    const/4 v5, 0x2

    aget v2, v4, v5

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    const/4 v5, 0x5

    aget v3, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v0

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v1

    cmpl-float v4, v0, v7

    if-nez v4, :cond_0

    cmpl-float v4, v1, v7

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->updateMatrix()V

    return-void
.end method

.method getCorrectedTranslate(FFFZ)F
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v2, p3, p2

    if-gtz v2, :cond_0

    sub-float v2, p2, p3

    div-float v1, v2, v3

    sub-float v2, p2, p3

    div-float v0, v2, v3

    :goto_0
    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    neg-float v2, p1

    add-float/2addr v2, v1

    :goto_1
    return v2

    :cond_0
    sub-float v1, p2, p3

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    cmpl-float v2, p1, v0

    if-lez v2, :cond_2

    neg-float v2, p1

    add-float/2addr v2, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getPointerIconType()I
    .locals 4

    const/16 v1, 0x3fc

    const/16 v0, 0x3e8

    const/high16 v3, 0x3f800000    # 1.0f

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public onDoubleTap(FF)V
    .locals 9

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    aget v2, v2, v8

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartScale:F

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    aget v2, v2, v5

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartScale:F

    const/high16 v2, 0x40a00000    # 5.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    aget v2, v2, v5

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    :goto_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    iput-boolean v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0

    :cond_1
    neg-float v2, p1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    goto :goto_1

    :cond_2
    neg-float v2, p2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    goto :goto_2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    const/high16 v6, 0x43fa0000    # 500.0f

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleEndTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->SCALE_FLING_DELAY:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    :goto_0
    iput p3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_2

    :goto_1
    iput p4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPreviousUpdate:J

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    move p3, v0

    goto :goto_0

    :cond_2
    move p4, v0

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onOrientationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->correctTranslate()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v2, v2

    div-float v0, v2, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    invoke-interface {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;->onScale(F)V

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->correctTranslate()V

    const/4 v2, 0x1

    return v2

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    div-float v0, v4, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleStart:F

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleEndTime:J

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleStart:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ZOOM_IN:Ljava/lang/String;

    const-string v2, "Zoom in"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleStart:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    float-to-double v0, v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    invoke-interface {v0, v1}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;->onZoomOut(F)V

    :cond_0
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    return-void

    :cond_1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->SCREEN_MAIN:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/lpe/util/Constants;->FEATURE_ZOOM_OUT:Ljava/lang/String;

    const-string v2, "Zoom out"

    invoke-static {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->insertEventSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    const/4 v3, 0x0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mainLayout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v4, 0x7f0e0111

    invoke-virtual {v2, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mainLayout:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mainLayout:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3fd

    invoke-static {v4, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_2

    move v0, v3

    :goto_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_3

    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->correctTranslate()V

    const/4 v2, 0x0

    return v2

    :cond_2
    neg-float v0, p3

    goto :goto_0

    :cond_3
    neg-float v1, p4

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mTapTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->onDoubleTap(FF)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mTapTime:J

    :goto_0
    const/4 v2, 0x0

    return v2

    :cond_0
    iput-wide v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mTapTime:J

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenToViewMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public reset()V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    int-to-float v4, v4

    div-float v2, v3, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginTop:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginLeft:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginLeft:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginTop:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginLeft:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->marginTop:F

    mul-float/2addr v4, v6

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->correctTranslate()V

    goto :goto_0
.end method

.method public setImageDimensions(II)V
    .locals 4

    const/4 v3, 0x0

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    int-to-float v0, p1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    int-to-float v0, p2

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageRect:Landroid/graphics/RectF;

    return-void
.end method

.method public setScaleWithAnimation(FFF)V
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    cmpl-float v2, p1, v6

    if-gtz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_2

    cmpg-float v2, p1, v6

    if-gez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    div-float p1, v2, v3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    :goto_1
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mValues:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    cmpl-float v2, p1, v6

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    :goto_2
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    iput-boolean v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, p1

    float-to-double v2, v2

    const-wide v4, 0x3ff004189374bc6aL    # 1.001

    cmpg-double v2, v2, v4

    if-gez v2, :cond_5

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    div-float p1, v6, v2

    iput v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    sub-float v3, p2, v3

    sub-float v4, v6, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    sub-float v3, p3, v3

    sub-float v4, v6, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    :goto_4
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    :goto_5
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    :cond_9
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    goto/16 :goto_3

    :cond_a
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    sub-float v3, p2, v3

    sub-float v4, v6, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v8}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v0

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    goto :goto_4

    :cond_b
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    sub-float v3, p3, v3

    sub-float v4, v6, p1

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    mul-float/2addr v4, v5

    invoke-virtual {p0, v2, v3, v4, v9}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->getCorrectedTranslate(FFFZ)F

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    goto :goto_5
.end method

.method public setScaleWithoutAnimation(FFF)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    move v0, p1

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    mul-float/2addr v2, v0

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->scaleRef:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v2, v2

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v2, v2

    div-float v0, v2, v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScaleListener:Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    invoke-interface {v2, v3}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper$OnScaleListener;->onScale(F)V

    :cond_1
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->correctTranslate()V

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    return-void

    :cond_3
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    div-float v0, v4, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method public setViewDimensions(IILandroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    iput p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenWidth:I

    iput p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenHeight:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenToViewMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mScreenToViewMatrix:Landroid/graphics/Matrix;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mImageHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mActualImageRect:Landroid/graphics/RectF;

    return-void
.end method

.method public update()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const v11, 0x3aa3d70a    # 0.00125f

    const-wide v12, 0x3f9eb851eb851eb8L    # 0.03

    const/high16 v10, 0x43160000    # 150.0f

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_0

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_7

    :cond_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPreviousUpdate:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPreviousUpdate:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    mul-float/2addr v6, v11

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    cmpl-float v5, v5, v4

    if-nez v5, :cond_1

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_4

    :cond_1
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origWidth:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewWidth:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    move v2, v4

    :goto_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->origHeight:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mViewHeight:I

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    move v3, v4

    :goto_1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->correctTranslate()V

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v12

    if-gez v5, :cond_2

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    :cond_2
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    cmpg-double v5, v6, v12

    if-gez v5, :cond_3

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mPreviousUpdate:J

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityX:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityFactor:F

    mul-float v2, v5, v6

    goto :goto_0

    :cond_6
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityY:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mVelocityFactor:F

    mul-float v3, v5, v6

    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartScale:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartScale:F

    sub-float/2addr v5, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float v1, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransX:F

    sub-float/2addr v5, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float v2, v4, v5

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTStartTransY:F

    sub-float/2addr v5, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    add-float v3, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTAnimStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x96

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mIsDTAnimating:Z

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndScale:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransX:F

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mDTEndTransY:F

    :cond_8
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    div-float v0, v1, v4

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    mul-float/2addr v4, v0

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_a

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->MAX_SCALE:I

    int-to-float v4, v4

    iput v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    :cond_9
    :goto_3
    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->updateMatrix()V

    iget-object v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {v4}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->requestRender()V

    goto/16 :goto_2

    :cond_a
    iget v4, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    cmpg-float v4, v4, v14

    if-gez v4, :cond_9

    iput v14, p0, Lcom/sec/android/mimage/photoretouching/lpe/core/PinchHelper;->currScale:F

    goto :goto_3
.end method
