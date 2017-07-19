.class public Lcom/sec/android/wallpapercropper2/CropView;
.super Lcom/sec/android/wallpapercropper2/TiledImageView;
.source "CropView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/wallpapercropper2/CropView$1;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x96

.field private static final ANIMATION_INTERVAL_TIME:J = 0x6L

.field private static final ANIM_STATE_RUNNING:I = 0x1

.field private static final ANIM_STATE_STOP:I = 0x0

.field private static final DELAY_BEFORE_ANIMATION_STARTED:I = 0xc8

.field private static final FLOAT_PRECISION:F = 0.001f

.field private static final MAX_SCALE:F = 100.0f

.field private static final MSG_TILT_OFF:I = 0x2

.field private static final MSG_TILT_ON:I = 0x1

.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_180:I = 0xb4

.field private static final ROTATION_270:I = 0x10e

.field private static final ROTATION_90:I = 0x5a

.field private static final TAG:Ljava/lang/String; = "WallpaperCropView"

.field private static final THRESHOLD_DISTANCE:I = 0x28

.field private static final TILT_OFF_INTERVAL_ANIMATION_SCALE:F = 0.0018181823f

.field private static final TILT_ON_INTERVAL_ANIMATION_SCALE:F = 0.0020000006f

.field private static final TILT_SCALE:F = 1.1f


# instance fields
.field private extra_height:F

.field private extra_width:F

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationState:I

.field private mCenterX:F

.field private mCenterY:F

.field private mCurrentScale:F

.field private mInterval:F

.field mInverseRotateMatrix:Landroid/graphics/Matrix;

.field protected mIsGif:Z

.field private mIsScrollable:Z

.field private mIsTiltOn:Z

.field private mIsTouchDisableTemporary:Z

.field private mLastX:F

.field private mLastY:F

.field protected mLockTouchEvent:Z

.field private mMinScale:F

.field private mMinScaleH:F

.field private mMinScaleW:F

.field protected mRealHomePreviewBitmap:Landroid/graphics/Bitmap;

.field mRotateMatrix:Landroid/graphics/Matrix;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartX:F

.field private mScrollStartY:F

.field private mShouldApplyX:Z

.field private mShouldApplyY:Z

.field private mTempAdjustment:[F

.field private mTempCoef:[F

.field private mTempEdges:Landroid/graphics/RectF;

.field private mTempImageDims:[F

.field private mTempPoint:[F

.field private mTempRendererCenter:[F

.field private mTouchEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/sec/android/wallpapercropper2/CropView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/wallpapercropper2/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCurrentScale:F

    return v0
.end method

.method static synthetic -get2(Lcom/sec/android/wallpapercropper2/CropView;)F
    .locals 1

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInterval:F

    return v0
.end method

.method static synthetic -set0(Lcom/sec/android/wallpapercropper2/CropView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationState:I

    return p1
.end method

.method static synthetic -set1(Lcom/sec/android/wallpapercropper2/CropView;F)F
    .locals 0

    iput p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInterval:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/wallpapercropper2/CropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/wallpapercropper2/TiledImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTouchEnabled:Z

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsGif:Z

    iput-boolean v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLockTouchEvent:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempEdges:Landroid/graphics/RectF;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempPoint:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempCoef:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempImageDims:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempRendererCenter:[F

    new-instance v0, Lcom/sec/android/wallpapercropper2/CropView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/wallpapercropper2/CropView$1;-><init>(Lcom/sec/android/wallpapercropper2/CropView;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationState:I

    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    check-cast p1, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getEdgesHelper(Landroid/graphics/RectF;Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getHeight()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getImageDims()[F

    move-result-object v0

    aget v3, v0, v9

    aget v4, v0, v10

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v5}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    iget-object v6, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempRendererCenter:[F

    iget v7, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    sub-float v0, v7, v0

    aput v0, v6, v9

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    sub-float/2addr v0, v5

    aput v0, v6, v10

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v6, v9

    div-float v5, v3, v8

    add-float/2addr v0, v5

    aput v0, v6, v9

    aget v0, v6, v10

    div-float v5, v4, v8

    add-float/2addr v0, v5

    aput v0, v6, v10

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-boolean v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    const v5, 0x3f8ccccd    # 1.1f

    div-float/2addr v0, v5

    :cond_0
    div-float v5, v1, v8

    aget v7, v6, v9

    sub-float/2addr v5, v7

    sub-float v7, v3, v1

    div-float/2addr v7, v8

    add-float/2addr v5, v7

    mul-float/2addr v5, v0

    div-float/2addr v1, v8

    add-float/2addr v1, v5

    div-float v5, v2, v8

    aget v6, v6, v10

    sub-float/2addr v5, v6

    sub-float v6, v4, v2

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    div-float/2addr v2, v8

    add-float/2addr v2, v5

    iget v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_width:F

    add-float/2addr v5, v3

    div-float/2addr v5, v8

    mul-float/2addr v5, v0

    sub-float v5, v1, v5

    iget v6, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_width:F

    add-float/2addr v3, v6

    div-float/2addr v3, v8

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_height:F

    add-float/2addr v3, v4

    div-float/2addr v3, v8

    mul-float/2addr v3, v0

    sub-float v3, v2, v3

    iget v6, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_height:F

    add-float/2addr v4, v6

    div-float/2addr v4, v8

    mul-float/2addr v0, v4

    add-float/2addr v0, v2

    iput v5, p1, Landroid/graphics/RectF;->left:F

    iput v1, p1, Landroid/graphics/RectF;->right:F

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v1, 0x6

    if-ne v7, v1, :cond_0

    const/4 v1, 0x1

    move v6, v1

    :goto_0
    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    :goto_1
    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v2, 0x0

    move v15, v2

    move v2, v3

    move v3, v5

    move v5, v15

    :goto_2
    if-ge v5, v4, :cond_3

    if-ne v1, v5, :cond_2

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    move v6, v1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v3, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v2, v8

    goto :goto_3

    :cond_3
    if-eqz v6, :cond_4

    add-int/lit8 v1, v4, -0x1

    :goto_4
    int-to-float v4, v1

    div-float/2addr v3, v4

    int-to-float v1, v1

    div-float v4, v2, v1

    packed-switch v7, :pswitch_data_0

    :goto_5
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTouchEnabled:Z

    if-nez v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->isExpandMode()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-super/range {p0 .. p1}, Lcom/sec/android/wallpapercropper2/TiledImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_4
    move v1, v4

    goto :goto_4

    :pswitch_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScrollStartX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScrollStartY:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->onRelease()V

    goto :goto_5

    :pswitch_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    goto :goto_5

    :pswitch_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScrollStartX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScrollStartY:F

    goto :goto_5

    :pswitch_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->onRelease()V

    goto :goto_5

    :cond_5
    const/4 v1, 0x1

    return v1

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/wallpapercropper2/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->isExpandMode()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->isRotatedImage()Z

    move-result v8

    packed-switch v7, :pswitch_data_1

    :goto_6
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTouchDisableTemporary:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getOppositeCropView(Z)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v7, v7, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    div-float v7, v1, v7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    if-eqz v1, :cond_f

    const/high16 v1, -0x40800000    # -1.0f

    :goto_7
    mul-float/2addr v1, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v7, v7, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    sparse-switch v7, :sswitch_data_0

    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempEdges:Landroid/graphics/RectF;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v1}, Lcom/sec/android/wallpapercropper2/CropView;->getEdgesHelper(Landroid/graphics/RectF;Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v9, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempCoef:[F

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    aput v2, v1, v10

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    aput v2, v1, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v2, 0x0

    const/4 v10, 0x0

    aput v2, v1, v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v2, 0x0

    const/4 v10, 0x1

    aput v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->getHeight()I

    move-result v11

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v1, :cond_10

    int-to-float v1, v10

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v2, v1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleW:F

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v12

    :goto_a
    sub-float v1, v9, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScrollStartX:F

    sub-float v12, v3, v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    if-eqz v13, :cond_13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x42200000    # 40.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v13, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v13

    if-lez v1, :cond_12

    const/4 v1, 0x1

    :goto_b
    iget v13, v7, Landroid/graphics/RectF;->left:F

    neg-float v14, v2

    cmpl-float v13, v13, v14

    if-lez v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    iget v14, v7, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v14

    div-float/2addr v2, v9

    const/4 v14, 0x0

    aput v2, v13, v14

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    int-to-float v2, v10

    div-float v2, v12, v2

    int-to-float v12, v11

    div-float v12, v4, v12

    const/4 v13, 0x1

    invoke-virtual {v1, v2, v12, v13}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->onPull(FFI)V

    :cond_8
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v1, :cond_15

    int-to-float v1, v11

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v2, v1

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v1, :cond_16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleH:F

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v1, v12

    :goto_e
    sub-float v1, v9, v1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/wallpapercropper2/CropView;->mScrollStartY:F

    sub-float v12, v4, v12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    if-eqz v13, :cond_18

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x42200000    # 40.0f

    cmpl-float v13, v13, v14

    if-lez v13, :cond_18

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v13, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v13

    if-lez v1, :cond_17

    const/4 v1, 0x1

    :goto_f
    iget v13, v7, Landroid/graphics/RectF;->top:F

    neg-float v14, v2

    cmpl-float v13, v13, v14

    if-lez v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    iget v7, v7, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v7

    div-float/2addr v2, v9

    const/4 v7, 0x1

    aput v2, v13, v7

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    int-to-float v2, v11

    div-float v2, v12, v2

    int-to-float v7, v10

    div-float v7, v3, v7

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v7, v9}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->onPull(FFI)V

    :cond_9
    :goto_10
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTouchDisableTemporary:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getOppositeCropView(Z)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    const/4 v7, 0x0

    aput v6, v2, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput v6, v2, v7

    iput-object v2, v1, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    iget-object v2, v1, Lcom/sec/android/wallpapercropper2/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v6, v1, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez v8, :cond_1a

    iget v2, v1, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iget-object v6, v1, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    add-float/2addr v2, v6

    iput v2, v1, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    :goto_11
    invoke-direct {v1}, Lcom/sec/android/wallpapercropper2/CropView;->updateCenter()V

    invoke-virtual {v1}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsGif:Z

    if-nez v1, :cond_1b

    invoke-static {}, Lcom/android/gallery3d/util/Utils;->isNeedRound()Z

    move-result v1

    if-eqz v1, :cond_1b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v6, 0x0

    aget v2, v2, v6

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v6, 0x1

    aget v2, v2, v6

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->updateCenter()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    monitor-exit v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/wallpapercropper2/CropView;->mLastX:F

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/wallpapercropper2/CropView;->mLastY:F

    const/4 v1, 0x1

    return v1

    :pswitch_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempPoint:[F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mLastX:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v7, v7, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v2, v7

    const/4 v7, 0x0

    aput v2, v1, v7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mLastY:F

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v7, v7, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    div-float/2addr v2, v7

    const/4 v7, 0x1

    aput v2, v1, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eqz v6, :cond_d

    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    const/4 v7, 0x0

    aget v7, v1, v7

    add-float/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyY:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    const/4 v7, 0x1

    aget v1, v1, v7

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/wallpapercropper2/CropView;->updateCenter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    :cond_c
    const/4 v1, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyY:Z

    goto :goto_13

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyX:Z

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    const/4 v7, 0x0

    aget v7, v1, v7

    add-float/2addr v2, v7

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    :goto_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    const/4 v7, 0x1

    aget v1, v1, v7

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    goto :goto_13

    :cond_e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyX:Z

    goto :goto_14

    :cond_f
    const/high16 v1, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :sswitch_0
    iget v2, v2, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    goto/16 :goto_8

    :sswitch_1
    iget v2, v2, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    sub-float v1, v2, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    goto/16 :goto_8

    :sswitch_2
    iget v2, v2, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    sub-float v1, v2, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    goto/16 :goto_8

    :sswitch_3
    iget v2, v2, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    goto/16 :goto_8

    :cond_10
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleW:F

    goto/16 :goto_a

    :cond_12
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_14
    iget v13, v7, Landroid/graphics/RectF;->right:F

    int-to-float v14, v10

    add-float/2addr v14, v2

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    iget v14, v7, Landroid/graphics/RectF;->right:F

    sub-float v2, v14, v2

    int-to-float v14, v10

    sub-float/2addr v2, v14

    div-float/2addr v2, v9

    const/4 v14, 0x0

    aput v2, v13, v14

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    int-to-float v2, v10

    div-float v2, v12, v2

    int-to-float v12, v11

    div-float v12, v4, v12

    const/4 v13, 0x3

    invoke-virtual {v1, v2, v12, v13}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->onPull(FFI)V

    goto/16 :goto_c

    :cond_15
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_d

    :cond_16
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleH:F

    goto/16 :goto_e

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_18
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_19
    iget v13, v7, Landroid/graphics/RectF;->bottom:F

    int-to-float v14, v11

    add-float/2addr v14, v2

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v7, v2

    int-to-float v7, v11

    sub-float/2addr v2, v7

    div-float/2addr v2, v9

    const/4 v7, 0x1

    aput v2, v13, v7

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    int-to-float v2, v11

    div-float v2, v12, v2

    int-to-float v7, v10

    div-float v7, v3, v7

    const/4 v9, 0x2

    invoke-virtual {v1, v2, v7, v9}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->onPull(FFI)V

    goto/16 :goto_10

    :cond_1a
    iget v2, v1, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    iget-object v6, v1, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    add-float/2addr v2, v6

    iput v2, v1, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    goto/16 :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v6, 0x0

    aget v2, v2, v6

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    const/4 v6, 0x1

    aget v2, v2, v6

    add-float/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private isRotatedImage()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateCenter()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    iput v1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    return-void
.end method

.method private updateMinScale(IILcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V
    .locals 7

    const v6, 0x3f8ccccd    # 1.1f

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p4, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    const v2, 0x3f333333    # 0.7f

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-boolean v0, v0, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->mIsDualViewLockscreen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getCurrentDualModeView()Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    move-result-object v0

    sget-object v2, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;->DUAL_MODE_DUPLICATE:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity$DualModeView;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    const v2, 0x3f09d89e

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    :cond_0
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getImageDims()[F

    move-result-object v0

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->isExpandMode()Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 p1, p1, 0x2

    :cond_1
    int-to-float v3, p1

    div-float v2, v3, v2

    iput v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleW:F

    int-to-float v2, p2

    div-float v0, v2, v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleH:F

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleW:F

    iget v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScaleH:F

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    const-string/jumbo v0, "WallpaperCropView"

    const-string/jumbo v2, "|mMinScale = %f| / |mRrender.scale = %f|"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    mul-float/2addr v2, v6

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->isExpandMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    const v2, 0x3f89d89e

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCrop()Landroid/graphics/RectF;
    .locals 7

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempEdges:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/sec/android/wallpapercropper2/CropView;->getEdgesHelper(Landroid/graphics/RectF;Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-boolean v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    const v3, 0x3f8ccccd    # 1.1f

    div-float/2addr v0, v3

    :cond_1
    iget v3, v2, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    div-float/2addr v3, v0

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    div-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    add-float/2addr v4, v3

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v0

    add-float/2addr v0, v2

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isWideHome:Z

    if-eqz v5, :cond_2

    sub-float v5, v4, v3

    const/high16 v6, 0x3f100000    # 0.5625f

    mul-float/2addr v5, v6

    sub-float v6, v0, v2

    sub-float v5, v6, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    new-instance v6, Landroid/graphics/RectF;

    add-float/2addr v2, v5

    sub-float/2addr v0, v5

    invoke-direct {v6, v3, v2, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v6

    :cond_2
    :try_start_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v3, v2, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v5

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCurrentCenter()Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iget v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method getImageDims()[F
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_width:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    const v1, 0x7f06002b

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_height:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_width:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->extra_height:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempImageDims:[F

    aput v0, v2, v3

    aput v1, v2, v4

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v0, v2, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v2, v3

    aget v0, v2, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aput v0, v2, v4

    return-object v2
.end method

.method public getImageRotation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    return v0
.end method

.method public getPosition()[F
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method

.method public getRealHomePreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRealHomePreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getScale()F
    .locals 2

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSourceDimensions()Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v2}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->getImageHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public isInAnimation()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToLeft()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/wallpapercropper2/CropView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/wallpapercropper2/CropView$2;-><init>(Lcom/sec/android/wallpapercropper2/CropView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempEdges:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v2}, Lcom/sec/android/wallpapercropper2/CropView;->getEdgesHelper(Landroid/graphics/RectF;Z)V

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iget v0, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/CropView;->updateCenter()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    const/high16 v0, 0x42c80000    # 100.0f

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iget v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    :cond_0
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, v2, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/wallpapercropper2/CropView;->updateMinScale(IILcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->isTouchDisable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLockTouchEvent:Z

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->isExpandMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTouchDisableTemporary:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getOppositeCropView(Z)Lcom/sec/android/wallpapercropper2/CropView;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTouchDisableTemporary:Z

    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/CropView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/sec/android/wallpapercropper2/CropView;->isRotatedImage()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    iput-boolean v3, v0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyX:Z

    :cond_2
    :goto_0
    invoke-direct {v0, p1}, Lcom/sec/android/wallpapercropper2/CropView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    iput-boolean v3, v0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTouchDisableTemporary:Z

    :cond_3
    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    aget v1, v1, v2

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    iput-boolean v3, v0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyY:Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/android/wallpapercropper2/CropView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public recylePreview(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->source:Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;

    invoke-interface {v0, p1}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;->freePreview(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRealHomePreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRealHomePreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRealHomePreviewBitmap:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->freeTextures()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->image:Lcom/sec/android/wallpapercropper2/TiledImageRenderer;

    invoke-virtual {v0}, Lcom/sec/android/wallpapercropper2/TiledImageRenderer;->freeView()V

    return-void
.end method

.method public setCenter(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput p1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput p2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    return-void
.end method

.method public setIsGIFImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsGif:Z

    return-void
.end method

.method public setIsWideHome(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput-boolean p1, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isWideHome:Z

    return-void
.end method

.method public setLockTouchEvent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLockTouchEvent:Z

    return-void
.end method

.method public setRealHomePreviewBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRealHomePreviewBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setScale(F)V
    .locals 6

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, -0x40000000    # -2.0f

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iput p1, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->isExpandMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mContext:Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;

    invoke-virtual {v2}, Lcom/sec/android/wallpapercropper2/KeyguardCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v3, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    int-to-float v2, v2

    div-float/2addr v2, p1

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    if-eqz v5, :cond_1

    :goto_1
    div-float v0, v2, v0

    add-float/2addr v0, v4

    iput v0, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    int-to-float v2, v2

    div-float/2addr v2, p1

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    if-eqz v5, :cond_2

    :goto_2
    div-float v0, v2, v1

    add-float/2addr v0, v4

    iput v0, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    int-to-float v2, v2

    div-float/2addr v2, p1

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    if-eqz v5, :cond_3

    :goto_3
    div-float v0, v2, v0

    sub-float v0, v4, v0

    iput v0, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    int-to-float v2, v2

    div-float/2addr v2, p1

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget-boolean v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->isLeft:Z

    if-eqz v5, :cond_4

    :goto_4
    div-float v0, v2, v1

    sub-float v0, v4, v0

    iput v0, v3, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Lcom/sec/android/wallpapercropper2/TiledImageView;->setTileSource(Lcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Ljava/lang/Runnable;Z)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInverseRotateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v1, v1, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->rotation:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    iput v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLastY:F

    iput v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLastX:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempEdges:Landroid/graphics/RectF;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempPoint:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempCoef:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempAdjustment:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempImageDims:[F

    new-array v0, v2, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTempRendererCenter:[F

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyY:Z

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mShouldApplyX:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTouchDisableTemporary:Z

    iput-boolean v3, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsScrollable:Z

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/sec/android/wallpapercropper2/CropView;->updateMinScale(IILcom/sec/android/wallpapercropper2/TiledImageRenderer$TileSource;Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public setTilt(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationState:I

    return-void
.end method

.method public setTiltMode(Z)V
    .locals 6

    const-wide/16 v4, 0xc8

    const/4 v2, 0x1

    const v1, 0x3f8ccccd    # 1.1f

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mIsTiltOn:Z

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCurrentScale:F

    iput v2, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationState:I

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    const v0, 0x3b031271    # 0.0020000006f

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInterval:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mMinScale:F

    const v0, 0x3aee5013

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mInterval:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mAnimationHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mTouchEnabled:Z

    return-void
.end method

.method public updatePosition([F)V
    .locals 7

    const/high16 v6, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    const/4 v3, 0x0

    aget v3, p1, v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    mul-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    const/4 v3, 0x1

    aget v3, p1, v3

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->scale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v4, v4, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iget-object v5, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v5, v5, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    mul-float/2addr v5, v6

    invoke-static {v3, v4, v5}, Lcom/android/gallery3d/util/Utils;->clamp(FFF)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-virtual {p0}, Lcom/sec/android/wallpapercropper2/CropView;->invalidate()V

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iget-object v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mRendererWrapper:Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;

    iget v0, v0, Lcom/sec/android/wallpapercropper2/TiledImageView$ImageRendererWrapper;->centerY:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterY:F

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLastX:F

    iget v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mCenterX:F

    iput v0, p0, Lcom/sec/android/wallpapercropper2/CropView;->mLastY:F

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
