.class Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;
.super Ljava/lang/Object;
.source "LibGLRootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glcore/LibGLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->mActive:Z

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->mActive:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 7

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v4, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v4

    const/4 v3, 0x0

    :try_start_0
    iput-boolean v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->mActive:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    # getter for: Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->access$100(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    const/4 v1, 0x0

    :try_start_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mCanvas:Lcom/sec/android/gallery3d/glrenderer/GLCanvas;

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-boolean v4, v4, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderRequested:Z

    invoke-interface {v2, v3, v4}, Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;->onGLIdle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    # getter for: Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v3}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->access$100(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v4, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v4

    if-eqz v1, :cond_1

    :try_start_4
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-boolean v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderRequested:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget-object v3, v3, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->enable()V

    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    :catch_0
    move-exception v0

    :try_start_5
    const-string/jumbo v3, "LibGLRootView"

    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "LibGLRootView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid case : mIdleListeners is empty, rootView type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    :cond_3
    :try_start_6
    const-string/jumbo v3, "LibGLRootView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid case : canvas or listener is null, rootView type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    iget v5, v5, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/glcore/LibGLRootView$IdleRunner;->this$0:Lcom/sec/android/gallery3d/glcore/LibGLRootView;

    # getter for: Lcom/sec/android/gallery3d/glcore/LibGLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v4}, Lcom/sec/android/gallery3d/glcore/LibGLRootView;->access$100(Lcom/sec/android/gallery3d/glcore/LibGLRootView;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
.end method
