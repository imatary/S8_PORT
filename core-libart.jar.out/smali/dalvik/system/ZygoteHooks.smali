.class public final Ldalvik/system/ZygoteHooks;
.super Ljava/lang/Object;
.source "ZygoteHooks.java"


# instance fields
.field private token:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativePostForkChild(JIZLjava/lang/String;)V
.end method

.method private static native nativePreFork()J
.end method

.method public static native startZygoteNoThreadCreation()V
.end method

.method public static native stopZygoteNoThreadCreation()V
.end method

.method private static waitUntilAllThreadsStopped()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/proc/self/task"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public postForkChild(IZLjava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    invoke-static {v0, v1, p1, p2, p3}, Ldalvik/system/ZygoteHooks;->nativePostForkChild(JIZLjava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->setRandomSeedInternal(J)V

    return-void
.end method

.method public postForkCommon()V
    .locals 0

    invoke-static {}, Ljava/lang/Daemons;->start()V

    return-void
.end method

.method public preFork()V
    .locals 2

    invoke-static {}, Ljava/lang/Daemons;->stop()V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->waitUntilAllThreadsStopped()V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->nativePreFork()J

    move-result-wide v0

    iput-wide v0, p0, Ldalvik/system/ZygoteHooks;->token:J

    return-void
.end method
