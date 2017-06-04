.class Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;
.super Ljava/lang/Object;
.source "SphericalGlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gallery360viewer/view/SphericalGlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleRunner"
.end annotation


# instance fields
.field private mActive:Z

.field final synthetic this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->mActive:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;Lcom/samsung/android/gallery360viewer/view/SphericalGlView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;-><init>(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->enable()V

    return-void
.end method

.method private enable()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->mActive:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->mActive:Z

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->mActive:Z

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Lcom/samsung/android/gallery360viewer/IOnGLIdleListener;->onGLIdle()V

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mIdleListeners:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$100(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->enable()V

    :cond_1
    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$600(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$600(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "SphericalGlView"

    const-string/jumbo v3, "Recycling the bitmap!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/view/SphericalGlView$IdleRunner;->this$0:Lcom/samsung/android/gallery360viewer/view/SphericalGlView;

    # getter for: Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->mBitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/samsung/android/gallery360viewer/view/SphericalGlView;->access$600(Lcom/samsung/android/gallery360viewer/view/SphericalGlView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
