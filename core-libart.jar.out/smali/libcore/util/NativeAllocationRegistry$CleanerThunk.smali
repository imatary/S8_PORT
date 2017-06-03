.class Llibcore/util/NativeAllocationRegistry$CleanerThunk;
.super Ljava/lang/Object;
.source "NativeAllocationRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/NativeAllocationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CleanerThunk"
.end annotation


# instance fields
.field private nativePtr:J

.field final synthetic this$0:Llibcore/util/NativeAllocationRegistry;


# direct methods
.method public constructor <init>(Llibcore/util/NativeAllocationRegistry;)V
    .locals 2

    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    return-void
.end method

.method public constructor <init>(Llibcore/util/NativeAllocationRegistry;J)V
    .locals 0

    iput-object p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-wide v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-static {v0}, Llibcore/util/NativeAllocationRegistry;->-get0(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v0

    iget-wide v2, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    invoke-static {v0, v1, v2, v3}, Llibcore/util/NativeAllocationRegistry;->applyFreeFunction(JJ)V

    :cond_0
    iget-object v0, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->this$0:Llibcore/util/NativeAllocationRegistry;

    invoke-static {v0}, Llibcore/util/NativeAllocationRegistry;->-get1(Llibcore/util/NativeAllocationRegistry;)J

    move-result-wide v0

    invoke-static {v0, v1}, Llibcore/util/NativeAllocationRegistry;->-wrap0(J)V

    return-void
.end method

.method public setNativePtr(J)V
    .locals 1

    iput-wide p1, p0, Llibcore/util/NativeAllocationRegistry$CleanerThunk;->nativePtr:J

    return-void
.end method
