.class Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;
.super Landroid/os/Handler;
.source "SpenZoomAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;,
        Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenZoomAnimation"

.field private static final ZOOM_HANDLER_TIME:I

.field private static mIndexZoomFactor:I


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mDeltaRatio:F

.field private mDoubleTapZoomable:Z

.field private mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

.field private mRatio:F

.field private final mZoomFactor:[F

.field private mZoomRatio:F

.field private mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    const/16 v0, 0x13

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomFactor:[F

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDeltaRatio:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDoubleTapZoomable:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    return-void

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
        0x3d8f5c29    # 0.07f
        0x3d8f5c29    # 0.07f
        0x3d4ccccd    # 0.05f
        0x3d4ccccd    # 0.05f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
    .end array-data
.end method

.method private ZoomIn()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomFactor:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    sput v4, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    const-string v0, "SpenZoomAnimation"

    const-string v1, "onCompleleZoomAnimation(), ZoomIn->IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;->onCompleted()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ZOOMIN_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomFactor:[F

    sget v2, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    aget v1, v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDeltaRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;->onChangeScale(FFF)V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->removeMessages(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private ZoomOut()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomFactor:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    sput v4, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    const-string v0, "SpenZoomAnimation"

    const-string v1, "onCompleleZoomAnimation(), ZoomOut->IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    invoke-interface {v0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;->onCompleted()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomFactor:[F

    sget v2, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mIndexZoomFactor:I

    aget v1, v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDeltaRatio:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ZOOMOUT_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mListener:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mCenterX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mCenterY:F

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$Listener;->onChangeScale(FFF)V

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->removeMessages(I)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v4, v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$1;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenZoomAnimation$ZoomState:[I

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->ZoomIn()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->ZoomOut()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isWorking()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomState:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    sget-object v1, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;->IDLE_STATE:Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation$ZoomState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDoubleTapEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDoubleTapZoomable:Z

    return-void
.end method

.method public startAnimation(FFFF)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDoubleTapZoomable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mCenterX:F

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mCenterY:F

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDeltaRatio:F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->ZoomIn()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mRatio:F

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mZoomRatio:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->mDeltaRatio:F

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenZoomAnimation;->ZoomOut()V

    goto :goto_0
.end method
