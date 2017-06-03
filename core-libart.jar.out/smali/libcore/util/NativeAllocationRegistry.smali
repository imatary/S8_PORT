.class public Llibcore/util/NativeAllocationRegistry;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/util/NativeAllocationRegistry$Allocator;,
        Llibcore/util/NativeAllocationRegistry$CleanerRunner;,
        Llibcore/util/NativeAllocationRegistry$CleanerThunk;
    }
.end annotation


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final freeFunction:J

.field private final size:J


# direct methods
.method static synthetic -get0(Llibcore/util/NativeAllocationRegistry;)J
    .locals 2

    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    return-wide v0
.end method

.method static synthetic -get1(Llibcore/util/NativeAllocationRegistry;)J
    .locals 2

    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    return-wide v0
.end method

.method static synthetic -wrap0(J)V
    .locals 0

    invoke-static {p0, p1}, Llibcore/util/NativeAllocationRegistry;->registerNativeFree(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid native allocation size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry;->classLoader:Ljava/lang/ClassLoader;

    iput-wide p2, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    iput-wide p4, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    return-void
.end method

.method public static native applyFreeFunction(JJ)V
.end method

.method private static registerNativeAllocation(J)V
    .locals 4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    return-void
.end method

.method private static registerNativeFree(J)V
    .locals 4

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    return-void
.end method


# virtual methods
.method public registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;
    .locals 4

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "referent is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "nativePtr is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    invoke-static {v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(J)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Llibcore/util/NativeAllocationRegistry$CleanerThunk;

    invoke-direct {v2, p0, p2, p3}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;-><init>(Llibcore/util/NativeAllocationRegistry;J)V

    invoke-static {p1, v2}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    new-instance v2, Llibcore/util/NativeAllocationRegistry$CleanerRunner;

    invoke-direct {v2, v0}, Llibcore/util/NativeAllocationRegistry$CleanerRunner;-><init>(Lsun/misc/Cleaner;)V

    return-object v2

    :catch_0
    move-exception v1

    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry;->freeFunction:J

    invoke-static {v2, v3, p2, p3}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    throw v1
.end method

.method public registerNativeAllocation(Ljava/lang/Object;Llibcore/util/NativeAllocationRegistry$Allocator;)Ljava/lang/Runnable;
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "referent is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-wide v4, p0, Llibcore/util/NativeAllocationRegistry;->size:J

    invoke-static {v4, v5}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(J)V

    new-instance v1, Llibcore/util/NativeAllocationRegistry$CleanerThunk;

    invoke-direct {v1, p0}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;-><init>(Llibcore/util/NativeAllocationRegistry;)V

    invoke-static {p1, v1}, Lsun/misc/Cleaner;->create(Ljava/lang/Object;Ljava/lang/Runnable;)Lsun/misc/Cleaner;

    move-result-object v0

    invoke-interface {p2}, Llibcore/util/NativeAllocationRegistry$Allocator;->allocate()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lsun/misc/Cleaner;->clean()V

    return-object v6

    :cond_1
    invoke-virtual {v1, v2, v3}, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->setNativePtr(J)V

    new-instance v4, Llibcore/util/NativeAllocationRegistry$CleanerRunner;

    invoke-direct {v4, v0}, Llibcore/util/NativeAllocationRegistry$CleanerRunner;-><init>(Lsun/misc/Cleaner;)V

    return-object v4
.end method
