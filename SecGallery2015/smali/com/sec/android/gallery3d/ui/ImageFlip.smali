.class public Lcom/sec/android/gallery3d/ui/ImageFlip;
.super Ljava/lang/Object;
.source "ImageFlip.java"


# static fields
.field private static final FINISH:I = 0x3

.field private static final PREPARED:I = 0x1

.field private static final PRE_INIT:I = -0x1

.field private static final STARTED:I = 0x2

.field private static imageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;


# instance fields
.field private duration:F

.field private mCurrentScale:F

.field private mStartScale:F

.field private rotationState:I

.field private startTime:F


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->startTime:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->duration:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mStartScale:F

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mCurrentScale:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    return-void
.end method

.method private advanceAnimation()V
    .locals 8

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v3, v0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->startTime:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->duration:F

    div-float v2, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    :cond_0
    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mStartScale:F

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    float-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mCurrentScale:F

    :cond_1
    return-void
.end method

.method public static getImageFlip()Lcom/sec/android/gallery3d/ui/ImageFlip;
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/ImageFlip;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/ui/ImageFlip;->imageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    sget-object v0, Lcom/sec/android/gallery3d/ui/ImageFlip;->imageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/sec/android/gallery3d/ui/ImageFlip;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/ui/ImageFlip;->imageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/ui/ImageFlip;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/ImageFlip;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/ui/ImageFlip;->imageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/gallery3d/ui/ImageFlip;->imageFlip:Lcom/sec/android/gallery3d/ui/ImageFlip;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startAnimation()V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mStartScale:F

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->startTime:F

    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->duration:F

    :cond_0
    return-void
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

.method public getProgress()F
    .locals 4

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float v2, v0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->startTime:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->duration:F

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    return-void
.end method

.method public prepare()V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    :cond_0
    return-void
.end method

.method public startRotation(Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    .locals 10

    iget v7, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_1
    const/4 v7, -0x1

    invoke-interface {p2, v7}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->getPositionController()Lcom/sec/android/gallery3d/ui/PositionController;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/ui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/ImageFlip;->startAnimation()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetToFullView()V

    :cond_2
    iget v7, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->rotationState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/ImageFlip;->advanceAnimation()V

    add-int v7, v2, v4

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-int v8, v6, v0

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-interface {p2, v7, v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    iget v5, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mCurrentScale:F

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3f4ccccd    # 0.8f

    iget v9, p0, Lcom/sec/android/gallery3d/ui/ImageFlip;->mCurrentScale:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-interface {p2, v7}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-interface {p2, v5, v7, v8}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    add-int v7, v2, v4

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-int v8, v6, v0

    neg-int v8, v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    const/4 v9, 0x0

    invoke-interface {p2, v7, v8, v9}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method
