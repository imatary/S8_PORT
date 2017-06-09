.class public Lcom/samsung/javaomp/runtime/OMPNestLock;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/samsung/javaomp/runtime/IOMPLock;


# instance fields
.field private volatile lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile ownerTask:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyLock()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public initLock()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public setLock()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getComparator()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    if-eq v1, v0, :cond_0

    new-instance v0, Lcom/samsung/javaomp/runtime/OMPRuntimeException;

    const-string/jumbo v1, "Nested lock cannot be set twice by the same thread but in different tasks"

    invoke-direct {v0, v1}, Lcom/samsung/javaomp/runtime/OMPRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public testLock()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getComparator()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    if-nez v1, :cond_2

    :cond_1
    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    return v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2
.end method

.method public unsetLock()V
    .locals 3

    invoke-static {}, Lcom/samsung/javaomp/runtime/OMP;->__getThreadStorage()Lcom/samsung/javaomp/runtime/__OMPThreadStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/javaomp/runtime/__OMPThreadStorage;->getComparator()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/javaomp/runtime/OMPNestLock;->ownerTask:Ljava/lang/Object;

    goto :goto_0
.end method
