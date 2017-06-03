.class public final Ljava/lang/Daemons;
.super Ljava/lang/Object;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Daemons$Daemon;,
        Ljava/lang/Daemons$FinalizerDaemon;,
        Ljava/lang/Daemons$FinalizerWatchdogDaemon;,
        Ljava/lang/Daemons$HeapTaskDaemon;,
        Ljava/lang/Daemons$ReferenceQueueDaemon;
    }
.end annotation


# static fields
.field private static final MAX_FINALIZE_NANOS:J = 0x2540be400L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestGC()V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestConcurrentGC()V

    return-void
.end method

.method public static requestHeapTrim()V
    .locals 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->requestHeapTrim()V

    return-void
.end method

.method public static start()V
    .locals 1

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-get0()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->start()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->start()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->start()V

    invoke-static {}, Ljava/lang/Daemons$HeapTaskDaemon;->-get0()Ljava/lang/Daemons$HeapTaskDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$HeapTaskDaemon;->start()V

    return-void
.end method

.method public static stop()V
    .locals 1

    invoke-static {}, Ljava/lang/Daemons$HeapTaskDaemon;->-get0()Ljava/lang/Daemons$HeapTaskDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$HeapTaskDaemon;->stop()V

    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->-get0()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->stop()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->-get0()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->stop()V

    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->-get0()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->stop()V

    return-void
.end method
