.class public abstract Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;
.super Landroid/view/SurfaceView;
.source "Unknown"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/android/keyguard/sec/opentheme/common/LockscreenCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

.field protected mHolder:Landroid/view/SurfaceHolder;

.field private mIsCreated:Z

.field private mIsScreenOn:Z

.field private mMinInterval:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private startDraw()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-eqz v0, :cond_3

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;-><init>(Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    :goto_1
    iget v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    if-gtz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->start()V

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    iget v1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    iput v1, v0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    goto :goto_0
.end method

.method private stopDraw()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->interrupt()V

    iput-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract drawFrame(Landroid/graphics/Canvas;)V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->stopDraw()V

    return-void
.end method

.method public screenTurnedOff()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsCreated:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->resumeThread()V

    goto :goto_0
.end method

.method public setMinInterval(I)V
    .locals 0

    iput p1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mMinInterval:I

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsCreated:Z

    invoke-direct {p0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->startDraw()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mIsCreated:Z

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "suspendThread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->mDrawThread:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->suspendThread()V

    goto :goto_0
.end method
