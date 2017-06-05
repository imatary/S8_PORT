.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;
.super Landroid/view/View;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MovingImageView"
.end annotation


# static fields
.field private static final BASIC_IMAGE_SIZE:F = 2560.0f

.field private static final CATEGORY_CODE_PET:Ljava/lang/String; = "BGA"

.field private static final DEFAULT_ANIMATION_FRAME:I = 0x3e8

.field private static final DEFAULT_CAMERA_ZOOM:F = 1.5f

.field private static final DEFAULT_CAMERA_ZOOM_FOR_PET:F = 1.2f

.field private static final DOUBLE_TAP_ANIMATION_FRAME:I = 0x8

.field private static final FACE_ZOOMIN_ANIMATION_FRAME:I = 0x258

.field private static final KEY_WALLPAPER_INFO_CATEGORY_CODE:Ljava/lang/String; = "keyguard_wu_wallpaper_info_category_code"

.field private static final MAXIMUM_CAMERA_ZOOM:F = 2.5f

.field private static final MAXIMUM_CAMERA_ZOOM_FOR_PET:F = 1.5f

.field private static final MAX_GOAL_POINT:I = 0x2

.field private static final OVERLAP_ANIMATION_FRAME:I = 0x28

.field public static final RANDOM:I = -0x1

.field private static final REVERT_ANIMATION_FRAME:I = 0x8

.field private static final THRESHOLD_CAMERA_ZOOM:F = 1.2f

.field private static final TOUCH_MOVE_COE:F = 0.5f


# instance fields
.field private SECOND_BORDER:I

.field private mAnimationHandler:Landroid/os/Handler;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCameraCenterPosX:F

.field private mCameraCenterPosY:F

.field private mCameraZoomIn:F

.field private mCurrentAnimationFrame:I

.field private mCurrentBitmapPath:Ljava/lang/String;

.field private mCurrentCategoryCode:Ljava/lang/String;

.field private mDefaultCameraHeight:I

.field private mDefaultCameraWidth:I

.field private mDefaultOverlapCameraHeight:I

.field private mDefaultOverlapCameraWidth:I

.field private mDistance:F

.field private mDoubleTapCheckHandler:Landroid/os/Handler;

.field private mGoalAnimationFrame:I

.field private mIsAnimating:Z

.field private mIsDoubleTapWaiting:Z

.field private mIsOverlap:Z

.field private mIsPetImage:Z

.field private mLastPinchDistance:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mMovingCoe:F

.field private mNowGoalIndex:I

.field private mOverlapBitmap:Landroid/graphics/Bitmap;

.field private mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

.field private mOverlapBitmapHeight:I

.field private mOverlapBitmapWidth:I

.field private mOverlapCameraCenterPosX:F

.field private mOverlapCameraCenterPosY:F

.field private mOverlapCameraZoomIn:F

.field private mPanningGoalIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanningGoalX:F

.field private mPanningGoalY:F

.field private mPanningInterpolator:Landroid/view/animation/Interpolator;

.field private mPanningRandom:Z

.field private mPanningStartX:F

.field private mPanningStartY:F

.field private mPinchZoomPivotX:F

.field private mPinchZoomPivotY:F

.field private mPinchZoomStartMinThreshold:I

.field private mSavedCurrentAnimationFrame:I

.field private mSavedGoalAnimationFrame:I

.field private mSavedPanningGoalX:F

.field private mSavedPanningGoalY:F

.field private mSavedPanningStartX:F

.field private mSavedPanningStartY:F

.field private mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field private mSavedZoomStart:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

.field private mThresholdCameraZoom:F

.field private mTouchDownCameraPosX:F

.field private mTouchDownCameraPosY:F

.field private mTouchDownCameraZoom:F

.field private mTouchDownX:F

.field private mTouchDownY:F

.field private mTouchMoveStartMinThreshold:I

.field private mWindowHeight:I

.field private mWindowWidth:I

.field private mZoomingStart:F

.field private onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/high16 v5, 0x43200000    # 160.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    new-instance v0, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$1;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$2;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView$3;-><init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_lockscreen_second_border:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->onScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, p2, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    iput-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initBitmap()Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->initCamera()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v0, v0

    add-float/2addr v0, v5

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cocktailBarSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWindowWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mWindowHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MovingImageView() mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateFaceList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->panningAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    return v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->overlapAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;)Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimation(F)V

    return-void
.end method

.method private calculateAnimationFrame(FFFF)I
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private calculateDistance(FFFF)F
    .locals 2

    sub-float v0, p3, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private findNearestFaceIndexFromCurrentCameraPos()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private getCanvasScale(Z)F
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    :goto_0
    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v1, v1

    div-float v0, v1, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    goto :goto_0
.end method

.method private getCanvasTranslate(ZZ)F
    .locals 7

    const/4 v1, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    if-eq p2, v1, :cond_0

    if-eq p1, v1, :cond_4

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float v2, v1, v3

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    :goto_0
    int-to-float v1, v1

    move v6, v1

    move v1, v2

    move v2, v6

    cmpg-float v4, v1, v0

    if-gez v4, :cond_5

    :goto_1
    return v0

    :cond_0
    if-eq p1, v1, :cond_1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float v2, v1, v3

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    :goto_2
    int-to-float v1, v1

    move v6, v1

    move v1, v2

    move v2, v6

    cmpg-float v4, v1, v0

    if-gez v4, :cond_2

    :goto_3
    return v0

    :cond_1
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    sub-float v2, v1, v3

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    goto :goto_2

    :cond_2
    mul-float v0, v3, v5

    sub-float v0, v2, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    mul-float v0, v3, v5

    sub-float v0, v2, v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    div-float/2addr v1, v2

    mul-float/2addr v3, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    sub-float v2, v1, v3

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    goto :goto_0

    :cond_5
    mul-float v0, v3, v5

    sub-float v0, v2, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_6

    mul-float v0, v3, v5

    sub-float v0, v2, v0

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private getDefaultCameraZoomByCategory()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    return v0

    :cond_0
    const v0, 0x3f99999a    # 1.2f

    return v0
.end method

.method private getMaximumCameraZoomByCategory()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    return v0

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    return v0
.end method

.method private getRandom(FF)I
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-float v2, p2, p1

    float-to-double v2, v2

    mul-double/2addr v0, v2

    float-to-double v2, p1

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private handleDoubleTap()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Z)Z

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->updateGoalList()V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$502(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Z)Z

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleDoubleTap() mIsAnimating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsDoubleTapPuase : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handlePinchZoom(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    :cond_0
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomStartMinThreshold:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    return-void

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByRate(F)V

    cmpl-float v2, v1, v4

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    sub-float/2addr v3, v4

    mul-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    :cond_3
    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    return-void
.end method

.method private makeRandomPanningPoint()Landroid/graphics/Point;
    .locals 8

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v3, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v2, v3, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v2

    :goto_1
    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    mul-float v4, v3, v6

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v4

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v5, v5

    div-float v2, v5, v2

    mul-float v5, v2, v6

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    sub-float v6, v2, v5

    if-eq v0, v1, :cond_2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    sub-float/2addr v3, v2

    move v2, v4

    :goto_2
    cmpg-float v4, v3, v2

    if-gez v4, :cond_3

    if-eq v0, v1, :cond_4

    move v0, v2

    :goto_3
    invoke-direct {p0, v2, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v0

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v7

    add-float/2addr v2, v4

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v3

    move v2, v3

    goto :goto_3
.end method

.method private overlapAnimation()V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void
.end method

.method private panningAnimation()V
    .locals 5

    const/4 v3, 0x1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    if-ge v0, v1, :cond_0

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v0, v1, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$1;->$SwitchMap$com$android$keyguard$sec$effect$KeyguardEffectViewZoomPanning$CameraState:[I

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    :goto_2
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_6

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-eqz v1, :cond_7

    :goto_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_8

    :cond_2
    :goto_4
    const-string/jumbo v1, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "panningAnimation() state change :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eq v0, v3, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->restoreAnimationInformation()V

    :goto_5
    return-void

    :cond_4
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_5

    :pswitch_1
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    :pswitch_2
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    :pswitch_3
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    :pswitch_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    :pswitch_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-eq v1, v3, :cond_5

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_3

    :cond_8
    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    if-nez v1, :cond_2

    const/16 v1, 0x258

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private replaceBitmapAndCameraData()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "replaceBitmapAndCameraData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private restoreAnimationInformation()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-void
.end method

.method private revertBitmapToOverlapBitmap()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "revertBitmapToOverlapBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveCurrentAnimationInformation()V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedPanningGoalY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedZoomStart:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedCurrentAnimationFrame:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedGoalAnimationFrame:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mSavedState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    return-void
.end method

.method private setGoalOfDoubleTabPause()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "setGoalOfDoubleTabPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGoalOfOverlap()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    const/16 v0, 0x28

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "setGoalOfOverlap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGoalOfPanning()V
    .locals 7

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->makeRandomPanningPoint()Landroid/graphics/Point;

    move-result-object v1

    const/16 v2, 0x3e8

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningRandom:Z

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getDefaultCameraZoomByCategory()F

    move-result v2

    div-float/2addr v1, v2

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    :cond_0
    :goto_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    :cond_1
    :goto_2
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    :goto_3
    return-void

    :cond_2
    const-string/jumbo v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setGoalOfPanning() faceGoalIndex : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", go to ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    goto :goto_2

    :cond_5
    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    goto :goto_3
.end method

.method private setGoalOfTouchRelease()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningStartY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalY:F

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    return-void

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "setGoalOfTouchRelease()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sortFaceListClockwise()V
    .locals 0

    return-void
.end method

.method private updateFaceList()V
    .locals 2

    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "face is not detected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateGoalList()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->findNearestFaceIndexFromCurrentCameraPos()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mNowGoalIndex:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfPanning()V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningGoalIndexList:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfOverlap()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    goto :goto_1
.end method

.method private zoomAnimation(F)V
    .locals 5

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPanningInterpolator:Landroid/view/animation/Interpolator;

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void
.end method

.method private zoomAnimationByRate(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float v1, v2, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method

.method private zoomAnimationByValue(F)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getMaximumCameraZoomByCategory()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-void
.end method

.method public correctCameraLocation()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    goto :goto_1
.end method

.method public correctOverlapCameraLocation()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultOverlapCameraHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapWidth:I

    int-to-float v2, v2

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosX:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    add-float/2addr v0, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapCameraCenterPosY:F

    goto :goto_1
.end method

.method public getCurrentBitmapPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_1

    :cond_0
    return v7

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->invalidate()V

    return v7

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v2, v3

    mul-float/2addr v2, v8

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    div-float/2addr v3, v4

    mul-float/2addr v3, v8

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    add-float/2addr v4, v5

    mul-float/2addr v4, v8

    mul-float/2addr v0, v4

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    add-float/2addr v0, v4

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v0, v2

    mul-float/2addr v0, v8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    add-float/2addr v0, v1

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mPinchZoomPivotY:F

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastPinchDistance:F

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v0, v1, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eq v0, v7, :cond_5

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchDown:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    :goto_3
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iput v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->saveCurrentAnimationInformation()V

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraPosY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PinchZoom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_6

    :goto_4
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    iget v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iget v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->calculateDistance(FFFF)F

    move-result v3

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchMoveStartMinThreshold:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_2

    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    int-to-float v1, v1

    mul-float/2addr v1, v8

    iget v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    int-to-float v1, v2

    mul-float/2addr v1, v8

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    sub-float v0, v3, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->SECOND_BORDER:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mThresholdCameraZoom:F

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownCameraZoom:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->zoomAnimationByValue(F)V

    iput v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDistance:F

    invoke-virtual {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->correctCameraLocation()V

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handlePinchZoom(Landroid/view/MotionEvent;)V

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v0, 0x1

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    if-eq v0, v1, :cond_7

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchX:F

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownX:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mLastTouchY:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mTouchDownY:F

    goto/16 :goto_1

    :pswitch_5
    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-eq v1, v7, :cond_9

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_a

    :cond_8
    :goto_5
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    if-eq v1, v7, :cond_b

    iput-boolean v7, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_8

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfTouchRelease()V

    goto :goto_5

    :cond_b
    iput-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsDoubleTapWaiting:Z

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDoubleTapCheckHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->handleDoubleTap()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public handleUnlock()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    goto :goto_0
.end method

.method public initBitmap()Z
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewUtil;->getCurrentWallpaper(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    if-nez v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    if-eqz v1, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v2

    if-nez v2, :cond_b

    :goto_3
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c

    :goto_4
    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    :goto_5
    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_d

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "mBitmap is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "MovingImageView initBitmap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mStrMusicBitmapId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v6, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_6
    return v5

    :cond_5
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "initBitmap() : same bitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v1}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v1

    if-nez v1, :cond_7

    :goto_7
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->revertBitmapToOverlapBitmap()V

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->setGoalOfDoubleTabPause()V

    return v5

    :cond_7
    const-string/jumbo v1, "KeyguardEffectViewZoom"

    const-string/jumbo v2, "initBitmap() : revert bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    const-string/jumbo v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mCurrentBitmapPath() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentBitmapPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", newBitmapPath = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    iput-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    const-string/jumbo v1, "initBitmap() : new bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_b
    const-string/jumbo v2, "KeyguardEffectViewZoom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initBitmap() : overlap bitmap, mIsAnimating = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_c
    invoke-direct {p0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->replaceBitmapAndCameraData()V

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_f

    :goto_8
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "keyguard_wu_wallpaper_info_category_code"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    if-nez v0, :cond_10

    :cond_e
    iput-boolean v5, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    :goto_9
    return v6

    :cond_f
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mBitmapWidth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mBitmapHeight : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const-string/jumbo v0, "BGA"

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentCategoryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-boolean v6, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsPetImage:Z

    goto :goto_9
.end method

.method public initCamera()V
    .locals 6

    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowHeight:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mWindowWidth:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v2, v2

    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    :goto_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    if-gt v0, v2, :cond_3

    :goto_2
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    int-to-float v0, v0

    const/high16 v2, 0x45200000    # 2560.0f

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mMovingCoe:F

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mMusicWallpaper:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MovingImageView initCamera() : mIsOverlap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mIsDoubleTapPuase : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    iput v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDefaultCameraWidth : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mDefaultCameraHeight : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->mIsDoubleTapPuase:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-eq v0, v5, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    if-eq v0, v5, :cond_6

    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    :goto_4
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapHeight:I

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    sub-int/2addr v0, v2

    if-ltz v0, :cond_7

    :goto_5
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getRandom(FF)I

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmapWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    :goto_6
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosY:F

    return-void

    :cond_6
    sget-object v0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mZoomingStart:F

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraZoomIn:F

    iput-boolean v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsOverlap:Z

    goto :goto_4

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mDefaultCameraWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCameraCenterPosX:F

    goto :goto_6
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    return v0
.end method

.method public isUpdatableState()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningRandom:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->PanningFace:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomIn:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->ZoomOut:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Unlock:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->TouchRelease:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->DoubleTapPause:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v1, v2, :cond_0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v0

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v1

    invoke-direct {p0, v3, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    sget-object v1, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;->Overlap:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mCurrentAnimationFrame:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mGoalAnimationFrame:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasScale(Z)F

    move-result v0

    invoke-direct {p0, v4, v4}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v1

    invoke-direct {p0, v4, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->getCanvasTranslate(ZZ)F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mOverlapBitmapDrawingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public startAnimation()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v4

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation() mIsAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> true, mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v3
.end method

.method public stopAnimation()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->DEBUG:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "KeyguardEffectViewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAnimation() mIsAnimating = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mIsAnimating:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> false, mState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$MovingImageView;->mState:Lcom/android/keyguard/sec/effect/KeyguardEffectViewZoomPanning$CameraState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return v3
.end method
