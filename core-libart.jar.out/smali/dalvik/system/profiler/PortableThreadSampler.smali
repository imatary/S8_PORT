.class Ldalvik/system/profiler/PortableThreadSampler;
.super Ljava/lang/Object;
.source "PortableThreadSampler.java"

# interfaces
.implements Ldalvik/system/profiler/ThreadSampler;


# instance fields
.field private depth:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStackTrace(Ljava/lang/Thread;)[Ljava/lang/StackTraceElement;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, v0

    iget v2, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    if-le v1, v2, :cond_1

    iget v1, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    invoke-static {v0, v3, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    :cond_1
    return-object v0
.end method

.method public setDepth(I)V
    .locals 0

    iput p1, p0, Ldalvik/system/profiler/PortableThreadSampler;->depth:I

    return-void
.end method
