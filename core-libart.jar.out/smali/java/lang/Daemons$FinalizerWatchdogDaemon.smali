.class Ljava/lang/Daemons$FinalizerWatchdogDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerWatchdogDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;


# instance fields
.field private needToWork:Z


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    .locals 1

    sget-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->goToSleep()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->wakeUp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "FinalizerWatchdogDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z

    return-void
.end method

.method private static finalizerTimedOut(Ljava/lang/Object;)V
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".finalize() timed out after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0xa

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Daemons$FinalizerDaemon;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/system/Os;->getpid()I

    move-result v5

    sget v6, Landroid/system/OsConstants;->SIGQUIT:I

    invoke-static {v5, v6}, Landroid/system/Os;->kill(II)V

    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-nez v1, :cond_0

    invoke-static {v3, v4}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-interface {v1, v5, v4}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "failed to send SIGQUIT"

    invoke-static {v5, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized getNeedToWork()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized goToSleep()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sleepFor(J)Z
    .locals 13

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long v2, v10, v8

    sub-long v6, p1, v2

    const-wide/32 v10, 0xf4240

    div-long v4, v6, v10

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-gtz v10, :cond_1

    const/4 v10, 0x1

    return v10

    :cond_1
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v10

    if-nez v10, :cond_0

    return v12

    :catch_1
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v10

    if-nez v10, :cond_0

    return v12
.end method

.method private declared-synchronized sleepUntilNeeded()Z
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    monitor-exit p0

    return v3

    :catch_1
    move-exception v1

    monitor-exit p0

    return v3

    :cond_0
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private waitForFinalization()Ljava/lang/Object;
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0x2540be400L

    invoke-direct {p0, v4, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepFor(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v6

    :cond_0
    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->getNeedToWork()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;

    move-result-object v0

    const-wide/32 v4, 0x1dcd6500

    invoke-direct {p0, v4, v5}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepFor(J)Z

    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->getNeedToWork()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Daemons$FinalizerDaemon;->-get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    return-object v6
.end method

.method private declared-synchronized wakeUp()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->needToWork:Z

    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->sleepUntilNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->waitForFinalization()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->isDebuggerActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->finalizerTimedOut(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
