.class abstract Ljava/util/concurrent/CompletableFuture$Completion;
.super Ljava/util/concurrent/ForkJoinTask;
.source "CompletableFuture.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Completion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ForkJoinTask",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/CompletableFuture$AsynchronousCompletionTask;"
    }
.end annotation


# instance fields
.field volatile next:Ljava/util/concurrent/CompletableFuture$Completion;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$Completion;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method abstract isLive()Z
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CompletableFuture$Completion;->tryFire(I)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$Completion;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method

.method abstract tryFire(I)Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/CompletableFuture",
            "<*>;"
        }
    .end annotation
.end method
