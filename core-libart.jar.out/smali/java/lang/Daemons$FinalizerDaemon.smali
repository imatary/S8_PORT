.class Ljava/lang/Daemons$FinalizerDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinalizerDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;


# instance fields
.field private finalizingObject:Ljava/lang/Object;

.field private final progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$FinalizerDaemon;
    .locals 1

    sget-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-object v0
.end method

.method static synthetic -get1(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Ljava/lang/Daemons$FinalizerDaemon;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Daemons$FinalizerDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$FinalizerDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const-string/jumbo v0, "FinalizerDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    return-void
.end method

.method private doFinalize(Ljava/lang/ref/FinalizerReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "FI_EXPLICIT_INVOCATION"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/ref/FinalizerReference;->remove(Ljava/lang/ref/FinalizerReference;)V

    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/ref/FinalizerReference;->clear()V

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v2, "Uncaught exception thrown by finalizer"

    invoke-static {v2, v0}, Ljava/lang/System;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    iput-object v3, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    throw v2
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Daemons$FinalizerDaemon;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/FinalizerReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    :goto_1
    invoke-direct {p0, v0}, Ljava/lang/Daemons$FinalizerDaemon;->doFinalize(Ljava/lang/ref/FinalizerReference;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-wrap0(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V

    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v4}, Ljava/lang/ref/ReferenceQueue;->remove()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/FinalizerReference;

    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->get()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->finalizingObject:Ljava/lang/Object;

    iget-object v4, p0, Ljava/lang/Daemons$FinalizerDaemon;->progressCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-wrap1(Ljava/lang/Daemons$FinalizerWatchdogDaemon;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0

    :cond_1
    return-void
.end method
