.class public Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;
.super Ljava/lang/Object;
.source "PortraitHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$OnFaceDetectListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PEDIT_PortraitHelper"


# instance fields
.field private check_face_orientation:[I

.field private detected_face:I

.field private mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

.field private mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->check_face_orientation:[I

    invoke-static {}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->getInstance()Lcom/samsung/android/beauty/PhotoEditorBeauty;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    invoke-static {}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->Init()Z

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iput-object p2, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x2
        0x3
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;)Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    return-object v0
.end method


# virtual methods
.method public checkFace(Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;)Z
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v2, v5, [I

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewBuffer()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/android/mimage/photoretouching/lpe/core/ImageData;->getPreviewHeight()I

    move-result v7

    invoke-static {v5, v6, v7, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertARGBToYUV([III[I)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    aget v5, v2, v4

    aget v6, v2, v3

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->check_face_orientation:[I

    aget v7, v7, v0

    invoke-static {v1, v5, v6, v7}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->runFD([BIII)I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->detected_face:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->detected_face:I

    if-lez v5, :cond_1

    :cond_0
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->detected_face:I

    if-lez v5, :cond_2

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method public checkFace([III)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v5, 0x2

    new-array v2, v5, [I

    invoke-static {p1, p2, p3, v2}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->convertARGBToYUV([III[I)[B

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    aget v5, v2, v3

    aget v6, v2, v4

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->check_face_orientation:[I

    aget v7, v7, v0

    invoke-static {v1, v5, v6, v7}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->runFD([BIII)I

    move-result v5

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->detected_face:I

    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->detected_face:I

    if-lez v5, :cond_3

    :cond_2
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->detected_face:I

    if-lez v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public checkFacesForEvent(Lcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;[IIIZ)V
    .locals 8

    move-object v5, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;

    move-object v1, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$1;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;[IIILcom/sec/android/mimage/photoretouching/lpe/core/HistoryEvent;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public checkForFaces([III)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->checkFace([III)Z

    move-result v0

    return v0
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    invoke-static {}, Lcom/samsung/android/beauty/PhotoEditorBeauty;->Release()V

    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mJNIEngine:Lcom/samsung/android/beauty/PhotoEditorBeauty;

    :cond_0
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "portraithelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public updateUI(ZZ)V
    .locals 4

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string v1, "PEDIT_PortraitHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showtoast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mContext:Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;

    new-instance v2, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$2;

    invoke-direct {v2, p0}, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper$2;-><init>(Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/mimage/photoretouching/lpe/gl/GLContext;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/util/PortraitHelper;->mStateManager:Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/lpe/states/StateManager;->updatePortraitState()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
