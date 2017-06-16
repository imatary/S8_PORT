.class Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;
.super Landroid/os/Handler;
.source "SpenSmartScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;,
        Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;,
        Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;,
        Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final HANDLER_TIME:I = 0x0

.field private static final SMART_SCALE_HEIGHT_OFFSET:F = 0.18f

.field private static final SMART_SCALE_WIDTH_OFFSET:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "SmartScale"


# instance fields
.field private final m1CMPixel:F

.field private mActionUpTime:J

.field private mBottomScrollRegion:Landroid/graphics/Rect;

.field private mCenterX:F

.field private mCenterY:F

.field private final mDPI:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDiffX:F

.field private mDiffY:F

.field private mDistanceX:F

.field private mDistanceY:F

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mEffectFrame:I

.field private mFactor:F

.field private mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

.field private mFrameZoomInCount:I

.field private mFrameZoomOutCount:I

.field private mHorizontalEnterTime:J

.field private mHorizontalResponseTime:I

.field private mHorizontalVelocity:I

.field private mIsCancelFling:Z

.field private mLeftScrollRegion:Landroid/graphics/Rect;

.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

.field private mMaxDeltaX:F

.field private mMaxDeltaY:F

.field private mOrigRatio:F

.field private mRatio:F

.field private mRightScrollRegion:Landroid/graphics/Rect;

.field private mScrollResponseTimeAfterTouch:I

.field private mScrollX:F

.field private mScrollY:F

.field private mSmartScaleRegion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;",
            ">;"
        }
    .end annotation
.end field

.field private mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

.field private mTopScrollRegion:Landroid/graphics/Rect;

.field private mUseHorizontalScroll:Z

.field private mUseSmartScale:Z

.field private mUseVerticalScroll:Z

.field private mVerticalEnterTime:J

.field private mVerticalResponseTime:I

.field private mVerticalVelocity:I

.field private mZoomOutResponseTime:I

.field private mZoomRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iput v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    iput v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFactor:F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalResponseTime:I

    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalEnterTime:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalVelocity:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalResponseTime:I

    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalEnterTime:J

    const/16 v0, 0x14

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalVelocity:I

    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mActionUpTime:J

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollResponseTimeAfterTouch:I

    iput-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownTime:J

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownX:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownY:F

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mIsCancelFling:Z

    iput-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDPI:F

    const v0, 0x3ec9932d

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->m1CMPixel:F

    return-void
.end method

.method private Fling()V
    .locals 9

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const v6, 0x3e19999a    # 0.15f

    const/high16 v5, -0x3d380000    # -100.0f

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    mul-float v0, v4, v6

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    mul-float v1, v4, v6

    cmpg-float v4, v0, v5

    if-gez v4, :cond_2

    const/high16 v0, -0x3d380000    # -100.0f

    :cond_0
    :goto_0
    cmpg-float v4, v1, v5

    if-gez v4, :cond_3

    const/high16 v1, -0x3d380000    # -100.0f

    :cond_1
    :goto_1
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    sub-float/2addr v4, v0

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    sub-float v2, v4, v0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    sub-float v3, v4, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    float-to-int v5, v2

    int-to-float v5, v5

    float-to-int v6, v3

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangePan(FF)V

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v4}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    :goto_2
    return-void

    :cond_2
    cmpl-float v4, v0, v8

    if-lez v4, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_3
    cmpl-float v4, v1, v8

    if-lez v4, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangePan(FF)V

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2
.end method

.method private ReadyForZoomout()V
    .locals 2

    const-string v0, "SmartScale"

    const-string v1, "[SMART SCALE] READY FOR ZOOM OUT()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mEffectFrame:I

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomOutCount:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->ZoomOut()V

    return-void
.end method

.method private Scroll()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalVelocity:I

    sub-int/2addr v1, v4

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalVelocity:I

    add-int/2addr v1, v4

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalVelocity:I

    sub-int/2addr v0, v4

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v5, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalVelocity:I

    add-int/2addr v0, v4

    :cond_3
    if-eqz v0, :cond_5

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    int-to-float v5, v0

    add-float/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    const/4 v2, 0x1

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_9

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    const/4 v2, 0x0

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :cond_5
    if-eqz v1, :cond_7

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    int-to-float v5, v1

    add-float/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    const/4 v2, 0x1

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_a

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    const/4 v2, 0x0

    :cond_6
    :goto_1
    const/4 v3, 0x1

    :cond_7
    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangePan(FF)V

    :cond_8
    if-eqz v2, :cond_b

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual {p0, v4, v6, v7}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    return-void

    :cond_9
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    const/4 v2, 0x0

    goto :goto_0

    :cond_a
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    const/4 v2, 0x0

    goto :goto_1

    :cond_b
    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    goto :goto_2
.end method

.method private ZoomIn()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomInCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomInCount:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomInCount:I

    if-gtz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangeScale(FFF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    const-string v0, "SmartScale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMART SCALE] ZOOM IN(), RATIO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFactor:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangeScale(FFF)V

    :cond_3
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "SmartScale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMART SCALE] ZOOM IN(), RATIO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private ZoomOut()V
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomOutCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomOutCount:I

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFactor:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomOutCount:I

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    float-to-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangeScale(FFF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    const-string v0, "SmartScale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMART SCALE] ZOOM OUT(), RATIO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "SmartScale"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SMART SCALE] ZOOM OUT(), RATIO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", STATE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangeScale(FFF)V

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public enableHorizontalSmartScroll(ZLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalResponseTime:I

    iput p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalVelocity:I

    return-void
.end method

.method public enableSmartScale(ZLandroid/graphics/Rect;IIF)V
    .locals 7

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->enableSmartScale(ZLandroid/graphics/Rect;IIFF)V

    return-void
.end method

.method public enableSmartScale(ZLandroid/graphics/Rect;IIFF)V
    .locals 13

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SmartScale"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMART SCALE] enableSmartScale use : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oratio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",dratio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", region="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v2

    float-to-int v4, v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v2

    float-to-int v5, v1

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    const/4 v8, 0x0

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v2, v4

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v12, 0x0

    move v7, v4

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v7, v2, v4

    const/4 v8, 0x0

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v2

    const/4 v12, 0x0

    move v10, v5

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v7, v2, v4

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v2, v5

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v2

    const/high16 v12, -0x40800000    # -1.0f

    move v8, v5

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v7, v2, v4

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v5

    iget v9, p2, Landroid/graphics/Rect;->right:I

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v11, v2

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v2

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v5

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v2, v4

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    const/high16 v11, -0x40800000    # -1.0f

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v2

    move v7, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    const/4 v7, 0x0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v2, v5

    iget v10, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v11, 0x0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v2

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    const/4 v7, 0x0

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v10, v2, v5

    const/4 v11, 0x0

    const/high16 v12, -0x40800000    # -1.0f

    move v8, v5

    move v9, v4

    invoke-direct/range {v6 .. v12}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int v6, v2, v4

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v2, v5

    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, -0x40800000    # -1.0f

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;-><init>(IIIIFF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, p3

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mEffectFrame:I

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    move/from16 v0, p5

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    move/from16 v0, p6

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mEffectFrame:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomInCount:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mEffectFrame:I

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomOutCount:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomRatio:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mEffectFrame:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFactor:F

    :goto_1
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v1, v2, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    invoke-interface {v1, v2, v3, v6}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangeScale(FFF)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFactor:F

    goto :goto_1
.end method

.method public enableVerticalSmartScroll(ZLandroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    iput-object p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalResponseTime:I

    iput p5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalVelocity:I

    return-void
.end method

.method public getCenterX()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    return v0
.end method

.method public getCenterY()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    return v0
.end method

.method public getState()Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$1;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenSmartScaleGestureDetector$State:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->ZoomIn()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->Scroll()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->ReadyForZoomout()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->ZoomOut()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->Fling()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isHorizontalSmartScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    return v0
.end method

.method public isSmartScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    return v0
.end method

.method public isVerticalSmartScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 6

    const/high16 v5, 0x40800000    # 4.0f

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mIsCancelFling:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    mul-float/2addr v0, v5

    div-float v0, p3, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    mul-float/2addr v0, v5

    div-float v0, p4, v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_5

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    sub-float/2addr v0, v1

    cmpg-float v0, v0, v4

    if-gez v0, :cond_6

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    :cond_3
    :goto_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->Fling()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceX:F

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDistanceY:F

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->LEFT:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onFlick(I)Z

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onFlick(I)Z

    goto/16 :goto_0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 9

    const/16 v8, 0xa

    const/16 v4, 0x9

    const/4 v5, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v6, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v2, v5, :cond_0

    if-ne v0, v4, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const-string v2, "SmartScale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMART SCALE] ON HOVER ENTER. STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->removeMessages(I)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->EDGE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v2, v3, :cond_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-ne v2, v5, :cond_4

    const-string v2, "SmartScale"

    const-string v3, "[SMART SCALE] ON HOVER ENTER. BUTTON_SECONDARY"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mSmartScaleRegion:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;

    iget-object v3, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->region:Landroid/graphics/Rect;

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v2, "SmartScale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMART SCALE] ON HOVER ENTER. SMART REGION CONTAINS x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->y:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->x:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_6

    iget v2, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->x:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    :cond_6
    iget v2, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->y:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_7

    iget v2, v1, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Region;->y:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    :cond_7
    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mEffectFrame:I

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFrameZoomInCount:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->ZoomIn()V

    goto/16 :goto_0

    :cond_8
    if-eq v0, v8, :cond_15

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->SCROLL_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v2, v3, :cond_15

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mActionUpTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollResponseTimeAfterTouch:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalEnterTime:J

    :cond_c
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_e

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalEnterTime:J

    :cond_f
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_10

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_10

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v2, v3, :cond_0

    :cond_10
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    if-eqz v2, :cond_11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalEnterTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalResponseTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_11

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mTopScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_11
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalEnterTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mVerticalResponseTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mBottomScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_12
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalEnterTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalResponseTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_13

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mLeftScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_14

    :cond_13
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalEnterTime:J

    sub-long/2addr v2, v4

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mHorizontalResponseTime:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRightScrollRegion:Landroid/graphics/Rect;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mScrollY:F

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_14
    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->SCROLL_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->Scroll()V

    goto/16 :goto_0

    :cond_15
    if-ne v0, v8, :cond_19

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v2, v3, :cond_17

    const-string v2, "SmartScale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMART SCALE] ON HOVER EXIT. STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    int-to-long v4, v3

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->sendEmptyMessageDelayed(IJ)Z

    :cond_16
    :goto_1
    const-string v2, "SmartScale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMART SCALE] ON HOVER EXIT. STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_17
    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseVerticalScroll:Z

    if-nez v2, :cond_18

    iget-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseHorizontalScroll:Z

    if-eqz v2, :cond_16

    :cond_18
    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangePan(FF)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    goto :goto_1

    :cond_19
    if-ne v0, v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v3, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v2, v3, :cond_0

    const-string v2, "SmartScale"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMART SCALE] ON HOVER ENTER. STATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangePan(FF)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v2}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    goto/16 :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    if-nez v0, :cond_8

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->removeMessages(I)V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v9, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v8, v9, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v9, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v8, v9, :cond_1

    :cond_0
    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterX:F

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mCenterY:F

    float-to-int v10, v10

    int-to-float v10, v10

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mOrigRatio:F

    invoke-interface {v8, v9, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangeScale(FFF)V

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v9, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->FLING_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v9, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-ne v8, v9, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    float-to-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-interface {v8, v9, v10}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onChangePan(FF)V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    invoke-interface {v8}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;->onUpdateScreenFrameBuffer()V

    :cond_3
    const/4 v8, 0x2

    if-ne v5, v8, :cond_7

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->ZOOMED_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    :cond_4
    :goto_0
    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mActionUpTime:J

    :cond_5
    const/4 v8, 0x6

    if-ne v0, v8, :cond_9

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownTime:J

    :cond_6
    :goto_1
    return-void

    :cond_7
    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    goto :goto_0

    :cond_8
    iget-boolean v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mUseSmartScale:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    if-ne v0, v8, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    sget-object v9, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    if-eq v8, v9, :cond_4

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;->READY_FOR_ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mState:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$State;

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mZoomOutResponseTime:I

    int-to-long v10, v9

    invoke-virtual {p0, v8, v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mIsCancelFling:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownTime:J

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownX:F

    iput v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownY:F

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto :goto_1

    :cond_a
    const/4 v8, 0x1

    if-ne v0, v8, :cond_10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownTime:J

    sub-long v2, v8, v10

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownX:F

    sub-float v8, v1, v8

    iput v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDiffX:F

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDownY:F

    sub-float v8, v4, v8

    iput v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDiffY:F

    const/high16 v8, 0x43480000    # 200.0f

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDiffX:F

    mul-float/2addr v8, v9

    long-to-float v9, v2

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDPI:F

    mul-float/2addr v9, v10

    div-float v6, v8, v9

    const/high16 v8, 0x43480000    # 200.0f

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDiffY:F

    mul-float/2addr v8, v9

    long-to-float v9, v2

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDPI:F

    mul-float/2addr v9, v10

    div-float v7, v8, v9

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDiffX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->m1CMPixel:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDiffY:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->m1CMPixel:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto/16 :goto_1

    :cond_b
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto/16 :goto_1

    :cond_c
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_e

    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_d

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    float-to-double v8, v8

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_d

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->LEFT:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    cmpg-float v8, v6, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto/16 :goto_1

    :cond_e
    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_f

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_f

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->TOP:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto/16 :goto_1

    :cond_f
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_6

    iget v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iget v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_6

    sget-object v8, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;->BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    iput-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mFlickDirection:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Direction;

    goto/16 :goto_1

    :cond_10
    const/4 v8, 0x5

    if-ne v0, v8, :cond_6

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mIsCancelFling:Z

    goto/16 :goto_1
.end method

.method public onZoom(FFF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaX:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mDeltaY:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mRatio:F

    return-void
.end method

.method public setLimitHeight(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaX:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mMaxDeltaY:F

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenSmartScaleGestureDetector$Listener;

    return-void
.end method
