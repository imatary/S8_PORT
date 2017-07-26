.class public Lcom/sec/game/gamecast/common/utility/GTHandler;
.super Ljava/lang/Object;
.source "GTHandler.java"


# static fields
.field public static final BACKGROUD_THREAD:I = 0x1

.field public static final MAIN_THREAD:I

.field private static mBGHandlerThread:Landroid/os/HandlerThread;

.field private static mBackgroundHandler:Landroid/os/Handler;

.field private static mIsStarted:Z

.field private static mMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(ILjava/lang/Runnable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GTHandler;->start()V

    :cond_1
    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Can\'t init GTHandler"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    packed-switch p0, :pswitch_data_0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static post(Ljava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/sec/game/gamecast/common/utility/GTHandler;->post(ILjava/lang/Runnable;)V

    return-void
.end method

.method public static postDelayed(ILjava/lang/Runnable;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GTHandler;->start()V

    :cond_1
    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Can\'t init GTHandler"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-eqz p1, :cond_3

    const-wide/16 v2, -0x1

    cmp-long v1, p2, v2

    if-lez v1, :cond_3

    packed-switch p0, :pswitch_data_0

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static postDelayed(Ljava/lang/Runnable;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/sec/game/gamecast/common/utility/GTHandler;->postDelayed(ILjava/lang/Runnable;J)V

    return-void
.end method

.method public static removeCallbacks(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeCallbacks(ILjava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBGHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :pswitch_1
    :try_start_1
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static removeCallbacksAndMessages()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBGHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method

.method private static declared-synchronized start()V
    .locals 4

    const-class v2, Lcom/sec/game/gamecast/common/utility/GTHandler;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v3, "BG Thread"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBGHandlerThread:Landroid/os/HandlerThread;

    sget-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBGHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    sget-object v3, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBGHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lcom/sec/game/gamecast/common/utility/GTHandler;->mIsStarted:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
