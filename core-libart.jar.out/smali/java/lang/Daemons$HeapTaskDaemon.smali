.class Ljava/lang/Daemons$HeapTaskDaemon;
.super Ljava/lang/Daemons$Daemon;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Daemons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeapTaskDaemon"
.end annotation


# static fields
.field private static final INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;


# direct methods
.method static synthetic -get0()Ljava/lang/Daemons$HeapTaskDaemon;
    .locals 1

    sget-object v0, Ljava/lang/Daemons$HeapTaskDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Daemons$HeapTaskDaemon;

    invoke-direct {v0}, Ljava/lang/Daemons$HeapTaskDaemon;-><init>()V

    sput-object v0, Ljava/lang/Daemons$HeapTaskDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTaskDaemon;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "HeapTaskDaemon"

    invoke-direct {p0, v0}, Ljava/lang/Daemons$Daemon;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized interrupt(Ljava/lang/Thread;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->stopHeapTaskProcessor()V
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
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Daemons$HeapTaskDaemon;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->startHeapTaskProcessor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runHeapTasks()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
