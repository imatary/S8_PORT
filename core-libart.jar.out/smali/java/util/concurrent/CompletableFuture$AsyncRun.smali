.class final Ljava/util/concurrent/CompletableFuture$AsyncRun;
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
    accessFlags = 0x18
    name = "AsyncRun"
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
.field dep:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final exec()Z
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRawResult()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->getRawResult()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public final getRawResult()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->dep:Ljava/util/concurrent/CompletableFuture;

    iput-object v3, p0, Ljava/util/concurrent/CompletableFuture$AsyncRun;->fn:Ljava/lang/Runnable;

    iget-object v3, v0, Ljava/util/concurrent/CompletableFuture;->result:Ljava/lang/Object;

    if-nez v3, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->completeNull()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->postComplete()V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeThrowable(Ljava/lang/Throwable;)Z

    goto :goto_0
.end method

.method public bridge synthetic setRawResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture$AsyncRun;->setRawResult(Ljava/lang/Void;)V

    return-void
.end method

.method public final setRawResult(Ljava/lang/Void;)V
    .locals 0

    return-void
.end method
