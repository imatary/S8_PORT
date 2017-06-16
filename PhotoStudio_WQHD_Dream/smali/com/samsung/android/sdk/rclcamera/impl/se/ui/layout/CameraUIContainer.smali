.class public Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;
.super Landroid/widget/RelativeLayout;
.source "CameraUIContainer.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# static fields
.field private static final NUM_POINTER_ALLOWED_FOR_PINCH:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitialZoomValueOnScaleBegin:I

.field private mNumberOfPointer:I

.field private mOverValue:I

.field private mPreOvervalue:I

.field private mPreviousCallbackValue:I

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private newZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    return-void
.end method

.method private handleTouchInternal(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->handleTouchInternal(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    const/4 v6, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isZoomAvailable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    if-ne v4, v6, :cond_0

    sget-object v4, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$integer;->__cp__zoom_velocity:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/sdk/rclcamera/impl/se/R$integer;->__cp__zoom_divide_factor:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getMaxZoomLevel()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getMaxZoomRatio()I

    move-result v5

    div-int/2addr v5, v1

    if-le v4, v5, :cond_2

    mul-int/2addr v2, v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, v2

    mul-double/2addr v4, v6

    double-to-int v0, v4

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getMaxZoomLevel()I

    move-result v5

    if-le v4, v5, :cond_5

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    if-ge v4, v0, :cond_5

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getMaxZoomLevel()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    iget v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    if-le v4, v5, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    :cond_3
    :goto_1
    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    if-gez v4, :cond_6

    iput v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    :cond_4
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->setZoomValue(I)V

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setZoom()V

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v4, v0

    if-gez v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    if-le v4, v0, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mInitialZoomValueOnScaleBegin:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    iget v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    if-ge v4, v5, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getMaxZoomLevel()I

    move-result v5

    if-le v4, v5, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->getMaxZoomLevel()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->newZoomValue:I

    goto :goto_2
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mNumberOfPointer:I

    if-eq v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->showNotSupportZoomToast()V

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isZoomAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getZoomValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mInitialZoomValueOnScaleBegin:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mOverValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreviousCallbackValue:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mPreOvervalue:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->startZoom()V

    move v0, v1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isZoomAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->stopZoom()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraUIContainer;->handleTouchInternal(Landroid/view/MotionEvent;)Z

    const/4 v0, 0x1

    return v0
.end method
