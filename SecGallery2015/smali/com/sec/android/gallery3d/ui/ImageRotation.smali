.class public Lcom/sec/android/gallery3d/ui/ImageRotation;
.super Ljava/lang/Object;
.source "ImageRotation.java"


# static fields
.field private static final FINISH:I = 0x3

.field private static final PREPARED:I = 0x1

.field private static final PRE_INIT:I = -0x1

.field private static final ROTATE_DURATION:I = 0x12c

.field private static final STARTED:I = 0x2

.field private static imageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;


# instance fields
.field private degree:F

.field private duration:F

.field private endDegree:F

.field private isRotateClockWise:Z

.field private mCurrentScale:F

.field private mEndScale:F

.field private mStartScale:F

.field private final rotationArray:[F

.field private rotationState:I

.field private sLastWidth:F

.field private startDegree:F

.field private startTime:F


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationArray:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->isRotateClockWise:Z

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startDegree:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->endDegree:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startTime:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->duration:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->degree:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mStartScale:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mEndScale:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->sLastWidth:F

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mCurrentScale:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    return-void
.end method

.method private advanceAnimation()V
    .locals 12

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v3, v0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startTime:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->duration:F

    div-float v2, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    :cond_0
    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startDegree:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->endDegree:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startDegree:F

    sub-float/2addr v4, v5

    float-to-double v6, v2

    mul-double/2addr v6, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->degree:F

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mStartScale:F

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mEndScale:F

    iget v5, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mStartScale:F

    sub-float/2addr v4, v5

    float-to-double v6, v2

    mul-double/2addr v6, v10

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mCurrentScale:F

    :cond_1
    return-void
.end method

.method public static getImageRotation()Lcom/sec/android/gallery3d/ui/ImageRotation;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/ImageRotation;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/ui/ImageRotation;->imageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    sget-object v0, Lcom/sec/android/gallery3d/ui/ImageRotation;->imageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/sec/android/gallery3d/ui/ImageRotation;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/ui/ImageRotation;->imageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/ui/ImageRotation;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/ImageRotation;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/ui/ImageRotation;->imageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/gallery3d/ui/ImageRotation;->imageRotation:Lcom/sec/android/gallery3d/ui/ImageRotation;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startAnimation(F)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->isRotateClockWise:Z

    if-eqz v0, :cond_1

    const/high16 v0, -0x3d4c0000    # -90.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startDegree:F

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->endDegree:F

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->sLastWidth:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mStartScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mEndScale:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startTime:F

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->duration:F

    :cond_0
    return-void

    :cond_1
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->startDegree:F

    goto :goto_0
.end method


# virtual methods
.method public endRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    invoke-interface {p2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    :cond_0
    return-void
.end method

.method public init(Lcom/sec/android/gallery3d/ui/PhotoView;FZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    iput-boolean p3, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->isRotateClockWise:Z

    iput p2, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->sLastWidth:F

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setChangeNotifierActive(Z)V

    return-void
.end method

.method public isAnimationStarted()Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare()V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    :cond_0
    return-void
.end method

.method public startRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 13

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sub-int v0, v6, v12

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/ImageRotation;->startAnimation(F)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/ImageRotation;->advanceAnimation()V

    add-int v0, v8, v10

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-int v1, v12, v6

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    iget v11, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->mCurrentScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p2, v11, v11, v0}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationArray:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationArray:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->degree:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationArray:[F

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    add-int v0, v8, v10

    neg-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-int v1, v12, v6

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageRotation;->rotationState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->setChangeNotifierActive(Z)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
