.class Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameDrawThread"
.end annotation


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field private mCount:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field private mTick:I

.field final synthetic this$0:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    iput-object p2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized resumeThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isRunning:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    monitor-enter p0

    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    if-nez v2, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-nez v2, :cond_5

    :goto_2
    if-nez v2, :cond_6

    :cond_3
    :goto_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    const/16 v4, 0x3c

    if-eq v2, v4, :cond_8

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v10, v4, v8

    :try_start_2
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v12, v2

    cmp-long v2, v10, v12

    if-ltz v2, :cond_9

    move v2, v6

    :goto_5
    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v10, v2

    add-long/2addr v10, v8

    sub-long/2addr v10, v4

    const-wide/16 v12, 0x96

    cmp-long v2, v10, v12

    if-gtz v2, :cond_a

    move v2, v6

    :goto_6
    if-nez v2, :cond_b

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_3
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    if-lez v2, :cond_2

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v2, v3

    :goto_7
    if-eqz v2, :cond_3

    :try_start_4
    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_5
    :try_start_5
    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_7

    :cond_6
    :try_start_6
    iget-object v4, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_8
    if-nez v3, :cond_7

    :goto_9
    throw v0

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    long-to-double v0, v0

    const-wide v10, 0x42374876e8000000L    # 1.0E11

    div-double v0, v10, v0

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v10

    iget-object v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;

    invoke-static {v2}, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;->access$000(Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "fps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mCount:I

    move-wide v0, v4

    goto/16 :goto_4

    :cond_9
    move v2, v7

    goto/16 :goto_5

    :cond_a
    move v2, v7

    goto :goto_6

    :cond_b
    :try_start_7
    iget v2, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v10, v2

    add-long/2addr v8, v10

    sub-long v4, v8, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_8
.end method

.method public suspendThread()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->mTick:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/opentheme/common/OpenThemeSurfaceView$FrameDrawThread;->isSuspended:Z

    return-void
.end method
