.class public Lcom/sec/android/app/camera/engine/AeAfManagerImpl;
.super Ljava/lang/Object;
.source "AeAfManagerImpl.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/AeAfManager;
.implements Lcom/samsung/android/camera/core/SemCamera$AutoExposureCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$AutoFocusCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$MultiAutoFocusCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingAutoFocusCallback;
.implements Lcom/samsung/android/camera/core/SemCamera$PhaseAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;
    }
.end annotation


# static fields
.field private static final AF_WAIT_TIMER_EXPIRED_MSG:I = 0x4

.field private static final AUTOFOCUS_CANCELED:I = 0x2

.field private static final AUTOFOCUS_FAIL:I = 0x0

.field private static final AUTOFOCUS_FOCUSING:I = 0x3

.field private static final AUTOFOCUS_RESTART:I = 0x4

.field private static final AUTOFOCUS_SUCCESS:I = 0x1

.field private static final COMPLETE_TOUCH_AE_TIMER:I = 0x6

.field private static final DELAY_TIME_TO_RESET_TOUCH_AF:I = 0xbb8

.field private static final DELAY_TIME_TO_START_AUTO_FOCUS:I = 0xfa

.field private static final DELAY_TIME_TO_START_TOUCH_AE:I = 0x320

.field private static final DELAY_TIME_TO_WAIT_AE_RESULT:I = 0x4b0

.field private static final HALF_SHUTTER_DURATION:I = 0xc8

.field private static final MOVE_THRESHOLD_FOR_AFAE_MOVE:I = 0xa

.field private static final MOVE_THRESHOLD_FOR_ONETOUCH_SHOOTING:I = 0xf

.field private static final OBJECT_TRACKING_AREA_OFFSET:I = 0x1

.field private static final OBJECT_TRACKING_STATE_IDLE:I = 0x1

.field private static final OBJECT_TRACKING_STATE_OK:I = 0x2

.field private static final RESET_TOUCH_AF:I = 0x1

.field private static final START_AUTO_FOCUS_MSG:I = 0x2

.field private static final START_TOUCH_AE_MSG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AeAfManagerImpl"

.field private static final WAIT_TOUCH_AE_RESULT:I = 0x5


# instance fields
.field private mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

.field private mAfAeTouchCurrentPt:Landroid/graphics/Point;

.field private mAfAeTouchStartingPt:Landroid/graphics/Point;

.field private mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

.field private mAfMoveThreshold:I

.field private mAfState:I

.field private mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

.field private mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

.field private mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

.field private mIsDivideAFStarted:Z

.field private mIsTouchAEStarted:Z

.field private mIsTouchAeTimerExpired:Z

.field private mIsTouchAfActive:Z

.field private mLastTouchAePt:Landroid/graphics/Point;

.field private mLastTouchAfAePt:Landroid/graphics/Point;

.field private mLastTouchAfPt:Landroid/graphics/Point;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMoveThreshold:I

.field private mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

.field private mTouchAeLockState:I

.field private mTouchAfPosX:I

.field private mTouchAfPosY:I

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl$MainHandler;-><init>(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    iput-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    iput v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAfActive:Z

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getShootingModeFeature()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/engine/AeAfManagerImpl;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkDivideAFBoundary(II)Z
    .locals 4

    const v3, 0x7f0a02b7

    const v2, 0x7f0a02b6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTouchAEBoundary(II)Z
    .locals 4

    const v3, 0x7f0a02b7

    const v2, 0x7f0a02b6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertToTouchArea(IIIIII)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Area;",
            ">;"
        }
    .end annotation

    const/high16 v6, 0x44fa0000    # 2000.0f

    const/high16 v5, 0x447a0000    # 1000.0f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/samsung/android/camera/core/SemCamera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/camera/core/SemCamera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/camera/core/SemCamera$Area;

    iget-object v1, v2, Lcom/samsung/android/camera/core/SemCamera$Area;->rect:Landroid/graphics/Rect;

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, p2

    int-to-float v3, p4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, p1

    int-to-float v3, p5

    add-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, p2

    int-to-float v3, p6

    add-float/2addr v2, v3

    int-to-float v3, p4

    div-float/2addr v2, v3

    mul-float/2addr v2, v6

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-object v0

    :cond_0
    const-string v2, "AeAfManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToTouchArea : leftTop ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), previewWH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), focusWH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "AeAfManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertToTouchArea : areaList.get(0).rect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private getTransformedFocusArea(II)[Landroid/graphics/Point;
    .locals 4

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a037a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0379

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    :goto_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    goto :goto_0
.end method

.method private getTransformedFocusArea(IIII)[Landroid/graphics/Point;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v2, v10, [Landroid/graphics/Point;

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v2, v8

    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v8, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v7, v2, v9

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v6

    if-lt p1, v3, :cond_8

    if-gt p1, v4, :cond_8

    if-lt p2, v5, :cond_8

    if-gt p2, v0, :cond_8

    add-int v7, v3, p3

    if-gt p1, v7, :cond_5

    add-int p1, v3, p3

    :cond_0
    :goto_0
    add-int v7, v5, p4

    if-gt p2, v7, :cond_6

    add-int p2, v5, p4

    :cond_1
    :goto_1
    aget-object v7, v2, v8

    iput p1, v7, Landroid/graphics/Point;->x:I

    aget-object v7, v2, v8

    iput p2, v7, Landroid/graphics/Point;->y:I

    if-eqz v6, :cond_2

    if-ne v6, v10, :cond_7

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v3, v7, :cond_3

    sub-int/2addr p1, v3

    :cond_3
    sub-int/2addr p2, v5

    :cond_4
    :goto_2
    aget-object v7, v2, v9

    iput p1, v7, Landroid/graphics/Point;->x:I

    aget-object v7, v2, v9

    iput p2, v7, Landroid/graphics/Point;->y:I

    :goto_3
    return-object v2

    :cond_5
    sub-int v7, v4, p3

    if-lt p1, v7, :cond_0

    sub-int p1, v4, p3

    goto :goto_0

    :cond_6
    sub-int v7, v0, p4

    if-lt p2, v7, :cond_1

    sub-int p2, v0, p4

    goto :goto_1

    :cond_7
    sub-int/2addr p1, v3

    iget-object v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v5, v7, :cond_4

    sub-int/2addr p2, v5

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "AeAfManagerImpl"

    const-string v1, "handleMessage - returned. camera is inactive"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    goto :goto_0

    :pswitch_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setHalfShutter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AeAfManagerImpl"

    const-string v1, "START_AUTO_FOCUS is ignored."

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->getFaceCount()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetAfIndicatorPosition()V

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->setFocusMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideTouchEVSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->setAEAWBLockParameter(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelAutoFocus()V

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopObjectTrackingAF()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleTouchAE(I)V

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->restartTouchAF()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeWaitTouchAeResult()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAECompleted()V

    goto/16 :goto_0

    :pswitch_5
    iput-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    goto/16 :goto_0

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

.method private handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v1, "AeAfManagerImpl"

    const-string v2, "handleTouchAutoFocusEvent"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAfMessage()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(II)[Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfAePosition(II)V

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    aget-object v1, v0, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfPosition(II)V

    :cond_0
    return-void
.end method

.method private isDivideAFStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    return v0
.end method

.method private isObjectTrackingArea(FF)Z
    .locals 6

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getTouchAutoFocusBoundary()Landroid/graphics/Rect;

    move-result-object v1

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v5, 0x1

    iget v5, v1, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v5, 0x1

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v5, -0x1

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v5, -0x1

    int-to-float v5, v2

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    int-to-float v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    int-to-float v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    int-to-float v5, v0

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isTouchAEEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "AeAfManagerImpl"

    const-string v2, "Wrong state for touchAE"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isSingleEffect()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isStickerMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isScreenReaderActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isTalkBackServiceActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getShutterSpeed()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isTouchAeTimerExpired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    return v0
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v3, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "AeAfManagerImpl"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isStopPreviewPending()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "AeAfManagerImpl"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getFocusLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FRONT_AF:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v2

    if-eq v2, v1, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualBackCamera()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isDualFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraDualEffect()I

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_5
    sget-boolean v2, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_RECORDING_TOUCH_AF:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAFSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private needToResetTouchAe()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTouchAeParameter()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAeParameter"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableFaceRect(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAeTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetTouchAeParameter()V

    return-void
.end method

.method private sendMSGToStartTouchAE()V
    .locals 5

    const/4 v4, 0x3

    const-string v0, "AeAfManagerImpl"

    const-string v1, "sendMSGToStartTouchAE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setDivideAfPosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfPt:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private startAFWaitTimer()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startObjectTrackingAF(FF)V
    .locals 17

    const-string v1, "AeAfManagerImpl"

    const-string v8, "startObjectTrackingAF"

    invoke-static {v1, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v16

    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eqz v16, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_1

    :cond_0
    move/from16 v0, p1

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    move/from16 v0, p2

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/camera/engine/CommonEngine;->startObjectTrackingAF(Ljava/util/List;)V

    return-void

    :cond_1
    move/from16 v0, p2

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    move/from16 v0, p1

    float-to-int v1, v0

    add-int/lit8 v1, v1, -0x1

    sub-int v1, v4, v1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    goto :goto_0
.end method

.method private updateDivideAFPosition(IIZ)V
    .locals 5

    const v2, 0x7f0a0227

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v2}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setDivideAfPosition(II)V

    if-eqz p3, :cond_0

    aget-object v1, v0, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->x:I

    aget-object v3, v0, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onAfPosChanged(IIZ)V

    :cond_1
    return-void
.end method

.method private updateTouchAePosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private updateTouchAfAePosition(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method private updateTouchAfPosition(II)V
    .locals 4

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iput p2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onAfPosChanged(IIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAfState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    return v0
.end method

.method protected getCurrentTouchAfAePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    return-object v0
.end method

.method public getLastTouchAfAePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAfAePt:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getMeteringAreas()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Area;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getLastTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getLastTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAEPosition(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getTouchAEPosition(II)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/core/SemCamera$Area;",
            ">;"
        }
    .end annotation

    const-string v1, "AeAfManagerImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getTouchAEPosition, x = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", y = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v16

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a037a

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0379

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eqz v16, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    :cond_0
    div-int/lit8 v1, v6, 0x2

    sub-int v1, p1, v1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    :goto_1
    return-object v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02ea

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02e9

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    sub-int v1, v4, p1

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v1, v8

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    goto :goto_1
.end method

.method public getTouchAeLockState()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    return v0
.end method

.method protected isAeAfMoving()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAeMoving()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAfMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isAfMoving()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAfState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isObjectTrackingEnabled()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_OBJECT_TRACKING_AF:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->RECORDING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "AeAfManagerImpl"

    const-string v2, "Wrong state for touchAF"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isStopPreviewPending()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AeAfManagerImpl"

    const-string v2, "Preview is not started"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCamcorderResolution()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/util/CameraResolution;->getCamcorderObjectTrackingAvailableFeature(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isObjectTrackingSupported()Z

    move-result v0

    goto :goto_0
.end method

.method protected isTouchAeMoving()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchAfActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAfActive:Z

    return v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    move v3, v4

    :cond_1
    :goto_1
    return v3

    :pswitch_0
    const-string v5, "AeAfManagerImpl"

    const-string v6, "MotionEvent.ACTION_DOWN"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    iget v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAEEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkTouchAEBoundary(II)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "AeAfManagerImpl"

    const-string v5, "af is processing, so return"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    const/16 v6, 0x1c24

    const/4 v7, -0x1

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->sendBroadcastChangeSettings(II)V

    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mLastTouchAePt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateDivideAFPosition(IIZ)V

    :cond_3
    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAeAfMoving()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v3, v5, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->sendMSGToStartTouchAE()V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAeAfMoving()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v3

    if-eq v3, v9, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideFaceRect(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkDivideAFBoundary(II)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    goto :goto_2

    :pswitch_1
    const-string v5, "AeAfManagerImpl"

    const-string v6, "MotionEvent.ACTION_UP"

    invoke-static {v5, v6}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    iget v7, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    invoke-interface {v5, v6, v7}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->needToResetTouchAe()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingEnabled()Z

    move-result v5

    if-nez v5, :cond_f

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_FAST_REACTIVE_AF:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeAfRequest()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelAutoFocus()V

    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v5

    if-eq v5, v3, :cond_10

    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVSupported()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isLowLightDetectionSupported()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v5

    if-eq v5, v3, :cond_c

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    :cond_c
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->showTouchEVSlider()V

    :cond_d
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleTouchAE(I)V

    :cond_e
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    :cond_f
    sget-boolean v5, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v8, :cond_13

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkDivideAFBoundary(II)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_10
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    goto :goto_3

    :cond_11
    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_12

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeParameter()V

    :cond_12
    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getAfState()I

    move-result v5

    if-ne v5, v8, :cond_15

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->checkTouchAEBoundary(II)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_14
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateDivideAFPosition(IIZ)V

    iget-object v4, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    goto/16 :goto_1

    :cond_15
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v5, v1, v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchPreviewArea(II)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    iget v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownX:I

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    if-ge v5, v6, :cond_0

    iget v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchDownY:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMoveThreshold:I

    if-ge v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-eq v5, v3, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isObjectTrackingArea(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isObjectTrackingAFStarted()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopObjectTrackingAF()V

    goto/16 :goto_0

    :cond_16
    invoke-direct {p0, v1, v2, v4, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v5, v0, v3

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    aget-object v3, v0, v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startObjectTrackingAF(FF)V

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "AeAfManagerImpl"

    const-string v5, "MotionEvent.ACTION_CANCEL"

    invoke-static {v3, v5}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    :cond_17
    sget-boolean v3, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAeAfMoving()Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_18
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    if-le v5, v6, :cond_1a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfMoveThreshold:I

    if-le v5, v6, :cond_1a

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchStartingPt:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    if-eqz v5, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    :cond_19
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    :cond_1a
    :goto_4
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isDivideAFAESupported()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAeMoving()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v5, v6, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    goto/16 :goto_0

    :cond_1b
    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isEasyCamera()Z

    move-result v5

    if-nez v5, :cond_1a

    iget-boolean v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    if-eqz v5, :cond_1c

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeTouchAeMessage()V

    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v8, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v5

    if-ne v5, v3, :cond_1a

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAeParameter()V

    goto :goto_4

    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isAfMoving()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfAeTouchCurrentPt:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v5, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateDivideAFPosition(IIZ)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onAutoExposure(I)V
    .locals 3

    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAutoExposure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeWaitTouchAeResult()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->touchAECompleted()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAeTimerExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCaptureRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0
.end method

.method public onAutoFocus(ILcom/samsung/android/camera/core/SemCamera;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v1, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->SHUTDOWN:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutoFocusCallback.onAutoFocus : msg["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-Autofocus**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isHalfShutter()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;->onAutoFocus()V

    :cond_3
    if-eq p1, v4, :cond_4

    if-nez p1, :cond_a

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getTimer()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unlockAEAWB()V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->unlockAWB()V

    :cond_7
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    if-eq v0, v5, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-eq v0, v4, :cond_9

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isTouchAESupported()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAfMessage()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startResetTouchAeTimer()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->restartHideTouchEVMessage()V

    :cond_9
    :goto_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->onAutoFocusComplete()V

    goto/16 :goto_0

    :cond_a
    if-ne p1, v5, :cond_8

    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShutterPressed()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-eq v0, v4, :cond_9

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isDivideAFStarted()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    if-eq v0, v4, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getObjectTrackingAF()I

    move-result v0

    if-nez v0, :cond_9

    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startResetTouchAfTimer()V

    goto :goto_2
.end method

.method public onMultiAutoFocus([B)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onMultiAfChanged([B)V

    :cond_0
    return-void
.end method

.method public onObjectTrackingAutoFocus(Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingAutoFocus : focusState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-short v2, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AeAfManagerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onObjectTrackingAutoFocus : focusedArea = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusedArea:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AeAfManagerImpl"

    const-string v1, "onPause state, so do not update tracking af"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-short v0, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isObjectTrackingAFStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mShootingModeFeature:Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;->isFaceDetectionSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopFaceDetection()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "AeAfManagerImpl"

    const-string v1, "during capturing, skip tracking ui update"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderStarting()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecorderStopping()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "AeAfManagerImpl"

    const-string v1, "recording is starting or stopping, skip tracking ui update"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    iget-object v1, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusedArea:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;->onTrackingAfRectChanged(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_6
    iget-short v0, p1, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopObjectTrackingAF()V

    :cond_7
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    goto :goto_0
.end method

.method public onPhaseAutoFocus(SSSSS)V
    .locals 2

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    sub-int v0, p4, p2

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    invoke-interface {v1, v0, p3}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onPhaseAfChanged(II)V

    :cond_1
    return-void
.end method

.method public onShutterKeyPressed()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isAutoFocusSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->startAFWaitTimer()V

    :cond_1
    return-void
.end method

.method public removeAfMessages()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeCallbacksAndMessages()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected removeResetTouchAeTimer()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeResetTouchAeTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected removeResetTouchAfMessage()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeResetTouchAfMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public removeTouchAeMessage()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeTouchAeMessage"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    return-void
.end method

.method protected removeWaitTouchAeResult()V
    .locals 3

    const/4 v2, 0x5

    const-string v0, "AeAfManagerImpl"

    const-string v1, "removeWaitTouchAeResult"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public resetAfIndicatorPosition()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isCoverCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const v3, 0x7f0a0109

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const v3, 0x7f0a0108

    invoke-static {v3}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfPosition(II)V

    return-void
.end method

.method public resetTouchAE()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_TOUCH_AE:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    if-eqz v0, :cond_0

    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    iput-boolean v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAEStarted:Z

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetTouchAeParameter()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isTouchEVSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideTouchEVSlider()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setExposureValue(I)V

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setDivideAFStarted(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getAutoNightDetectionMode()I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0, v3}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->setAutoNightDetectionMode(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->isTouchAEProcessing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->removeTouchAeRequest()V

    goto :goto_0
.end method

.method public resetTouchAF()V
    .locals 2

    const-string v0, "AeAfManagerImpl"

    const-string v1, "resetTouchAF"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isDestroying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AeAfManagerImpl"

    const-string v1, "Camera is destroying, so return"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "AeAfManagerImpl"

    const-string v1, "current auto focus is locked, so do not resetTouchAF"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->resetTouchAf()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfActive(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->hideTouchEVSlider()V

    goto :goto_0
.end method

.method public resetTouchAfIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTouchAeLockState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAfActive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAF()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/engine/CommonEngine;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public restartTouchAF()V
    .locals 4

    const/4 v3, 0x1

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_AUTO_FOCUS:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->stopTouchAutoFocus()V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->resetTouchAE()V

    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->isTouchAutoFocusEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/Engine$CeState;->PREVIEWING:Lcom/sec/android/app/camera/interfaces/Engine$CeState;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->isCurrentState(Lcom/sec/android/app/camera/interfaces/Engine$CeState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfPosition(II)V

    iget v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosX:I

    iget v2, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAfPosY:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(II)[Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    aget-object v1, v0, v3

    iget v1, v1, Landroid/graphics/Point;->x:I

    aget-object v2, v0, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfPosition(II)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/engine/CommonEngine;->setHalfShutter(Z)V

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->lockAEAWB()V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/engine/CommonEngine;->scheduleAutoFocus()V

    :cond_1
    return-void
.end method

.method public setAeEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    return-void
.end method

.method public setAfEventListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    return-void
.end method

.method public setAfState(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAfEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AfEventListener;->onAfStateChanged(I)V

    :cond_0
    return-void
.end method

.method public setAutoFocusListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAutoFocusListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AutoFocusListener;

    return-void
.end method

.method protected setDivideAFStarted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsDivideAFStarted:Z

    return-void
.end method

.method protected setTouchAeLockState(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;->onAeStateChanged(I)V

    :cond_0
    return-void
.end method

.method protected setTouchAfActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAfActive:Z

    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowOrientation()I

    move-result v16

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->SUPPORT_PHASE_AF:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a037a

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a0379

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewSurfaceRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eqz v16, :cond_0

    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_2

    :cond_0
    div-int/lit8 v1, v6, 0x2

    sub-int v1, p1, v1

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    :goto_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAfActive(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    const/4 v8, 0x1

    invoke-interface {v1, v8}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->overrideFocusMode(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v1, v15}, Lcom/sec/android/app/camera/engine/CommonEngine;->setTouchAfPosition(Ljava/util/List;)V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02ea

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v8, 0x7f0a02e9

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    :cond_2
    div-int/lit8 v1, v7, 0x2

    sub-int v1, p2, v1

    const/4 v8, 0x0

    sub-int v9, v5, v7

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v2

    sub-int v1, v4, p1

    div-int/lit8 v8, v6, 0x2

    sub-int/2addr v1, v8

    const/4 v8, 0x0

    sub-int v9, v4, v6

    invoke-static {v1, v8, v9}, Lcom/sec/android/app/camera/util/Util;->clamp(III)I

    move-result v3

    move-object/from16 v8, p0

    move v9, v2

    move v10, v3

    move v11, v5

    move v12, v4

    move v13, v7

    move v14, v6

    invoke-direct/range {v8 .. v14}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->convertToTouchArea(IIIIII)Ljava/util/List;

    move-result-object v15

    goto :goto_1
.end method

.method public setTrackingAfListener(Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTrackingAfListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$TrackingAfListener;

    return-void
.end method

.method public startResetTouchAeTimer()V
    .locals 5

    const/4 v4, 0x6

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startResetTouchAETimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mIsTouchAeTimerExpired:Z

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected startResetTouchAfTimer()V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "AeAfManagerImpl"

    const-string v1, "startResetTouchAfTimer"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected touchAE(I)V
    .locals 4

    const/4 v2, 0x1

    const-string v0, "AeAfManagerImpl"

    const-string v1, "touchAE"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->resetFaceRect()V

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mEngine:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/engine/CommonEngine;->disableFaceRect(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->removeResetTouchAeTimer()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setTouchAeLockState(I)V

    if-ne p1, v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->setAfState(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getCurrentTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getCurrentTouchAfAePosition()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAEPosition(IIZ)Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateTouchAEPosition(IIZ)Z
    .locals 7

    const v4, 0x7f0a0227

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v4}, Lcom/samsung/android/glview/GLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->getTransformedFocusArea(IIII)[Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    aget-object v3, v0, v1

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAePosition(II)V

    aget-object v3, v0, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->updateTouchAfAePosition(II)V

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mAeEventListener:Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;

    aget-object v4, v0, v1

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v5, v0, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    iget v6, p0, Lcom/sec/android/app/camera/engine/AeAfManagerImpl;->mTouchAeLockState:I

    if-ne v6, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-interface {v3, v4, v5, v1}, Lcom/sec/android/app/camera/interfaces/AeAfManager$AeEventListener;->onAePosChanged(IIZ)V

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v1

    goto :goto_0
.end method
