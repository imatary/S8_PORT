.class public final Ldalvik/system/VMDebug;
.super Ljava/lang/Object;
.source "VMDebug.java"


# static fields
.field private static final KIND_ALLOCATED_BYTES:I = 0x2

.field private static final KIND_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_ALL_COUNTS:I = -0x1

.field private static final KIND_CLASS_INIT_COUNT:I = 0x20

.field private static final KIND_CLASS_INIT_TIME:I = 0x40

.field private static final KIND_EXT_ALLOCATED_BYTES:I = 0x2000

.field private static final KIND_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field private static final KIND_EXT_FREED_BYTES:I = 0x8000

.field private static final KIND_EXT_FREED_OBJECTS:I = 0x4000

.field private static final KIND_FREED_BYTES:I = 0x8

.field private static final KIND_FREED_OBJECTS:I = 0x4

.field private static final KIND_GC_INVOCATIONS:I = 0x10

.field public static final KIND_GLOBAL_ALLOCATED_BYTES:I = 0x2

.field public static final KIND_GLOBAL_ALLOCATED_OBJECTS:I = 0x1

.field public static final KIND_GLOBAL_CLASS_INIT_COUNT:I = 0x20

.field public static final KIND_GLOBAL_CLASS_INIT_TIME:I = 0x40

.field public static final KIND_GLOBAL_EXT_ALLOCATED_BYTES:I = 0x2000

.field public static final KIND_GLOBAL_EXT_ALLOCATED_OBJECTS:I = 0x1000

.field public static final KIND_GLOBAL_EXT_FREED_BYTES:I = 0x8000

.field public static final KIND_GLOBAL_EXT_FREED_OBJECTS:I = 0x4000

.field public static final KIND_GLOBAL_FREED_BYTES:I = 0x8

.field public static final KIND_GLOBAL_FREED_OBJECTS:I = 0x4

.field public static final KIND_GLOBAL_GC_INVOCATIONS:I = 0x10

.field public static final KIND_THREAD_ALLOCATED_BYTES:I = 0x20000

.field public static final KIND_THREAD_ALLOCATED_OBJECTS:I = 0x10000

.field public static final KIND_THREAD_CLASS_INIT_COUNT:I = 0x200000

.field public static final KIND_THREAD_CLASS_INIT_TIME:I = 0x400000

.field public static final KIND_THREAD_EXT_ALLOCATED_BYTES:I = 0x20000000

.field public static final KIND_THREAD_EXT_ALLOCATED_OBJECTS:I = 0x10000000

.field public static final KIND_THREAD_EXT_FREED_BYTES:I = -0x80000000

.field public static final KIND_THREAD_EXT_FREED_OBJECTS:I = 0x40000000

.field public static final KIND_THREAD_FREED_BYTES:I = 0x80000

.field public static final KIND_THREAD_FREED_OBJECTS:I = 0x40000

.field public static final KIND_THREAD_GC_INVOCATIONS:I = 0x100000

.field public static final TRACE_COUNT_ALLOCS:I = 0x1

.field private static final runtimeStatsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.gc-count"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.gc-time"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.bytes-allocated"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.bytes-freed"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.blocking-gc-count"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.blocking-gc-time"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.gc-count-rate-histogram"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "art.gc.blocking-gc-count-rate-histogram"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cacheRegisterMap(Ljava/lang/String;)Z
.end method

.method private static checkBufferSize(I)I
    .locals 3

    if-nez p0, :cond_0

    const/high16 p0, 0x800000

    :cond_0
    const/16 v0, 0x400

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "buffer size < 1024: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return p0
.end method

.method public static native countInstancesOfClass(Ljava/lang/Class;Z)J
.end method

.method public static native countInstancesOfClasses([Ljava/lang/Class;Z)[J
.end method

.method public static native crash()V
.end method

.method public static dumpHprofData(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "filename == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, v0}, Ldalvik/system/VMDebug;->dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public static native dumpHprofData(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native dumpHprofDataDdms()V
.end method

.method public static native dumpReferenceTables()V
.end method

.method public static native getAllocCount(I)I
.end method

.method public static native getHeapSpaceStats([J)V
.end method

.method public static native getInstructionCount([I)V
.end method

.method public static native getLoadedClassCount()I
.end method

.method public static native getMethodTracingMode()I
.end method

.method public static getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "statName == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    sget-object v1, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ldalvik/system/VMDebug;->getRuntimeStatInternal(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object v2
.end method

.method private static native getRuntimeStatInternal(I)Ljava/lang/String;
.end method

.method public static getRuntimeStats()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ldalvik/system/VMDebug;->getRuntimeStatsInternal()[Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Ldalvik/system/VMDebug;->runtimeStatsMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v4, v5, v0

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static native getRuntimeStatsInternal()[Ljava/lang/String;
.end method

.method public static native getVmFeatureList()[Ljava/lang/String;
.end method

.method public static native infopoint(I)V
.end method

.method public static native isDebuggerConnected()Z
.end method

.method public static native isDebuggingEnabled()Z
.end method

.method public static native lastDebuggerActivity()J
.end method

.method public static native printLoadedClasses(I)V
.end method

.method public static native resetAllocCount(I)V
.end method

.method public static native resetInstructionCount()V
.end method

.method public static setAllocationLimit(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static setGlobalAllocationLimit(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public static native startAllocCounting()V
.end method

.method private static startClassPrep()V
    .locals 0

    return-void
.end method

.method public static native startEmulatorTracing()V
.end method

.method private static startGC()V
    .locals 0

    return-void
.end method

.method public static native startInstructionCounting()V
.end method

.method public static startMethodTracing()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static startMethodTracing(Ljava/lang/String;IIZI)V
    .locals 1

    invoke-static {p1}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {p0, v0, p2, p3, p4}, Ldalvik/system/VMDebug;->startMethodTracingFilename(Ljava/lang/String;IIZI)V

    return-void
.end method

.method public static startMethodTracing(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "fd == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Ldalvik/system/VMDebug;->startMethodTracingFd(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V

    return-void
.end method

.method public static startMethodTracingDdms(IIZI)V
    .locals 1

    invoke-static {p0}, Ldalvik/system/VMDebug;->checkBufferSize(I)I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Ldalvik/system/VMDebug;->startMethodTracingDdmsImpl(IIZI)V

    return-void
.end method

.method private static native startMethodTracingDdmsImpl(IIZI)V
.end method

.method private static native startMethodTracingFd(Ljava/lang/String;Ljava/io/FileDescriptor;IIZI)V
.end method

.method private static native startMethodTracingFilename(Ljava/lang/String;IIZI)V
.end method

.method public static native stopAllocCounting()V
.end method

.method public static native stopEmulatorTracing()V
.end method

.method public static native stopInstructionCounting()V
.end method

.method public static native stopMethodTracing()V
.end method

.method public static native threadCpuTimeNanos()J
.end method
