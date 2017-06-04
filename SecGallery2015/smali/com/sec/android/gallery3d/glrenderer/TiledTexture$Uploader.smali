.class public Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/glrenderer/TiledTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uploader"
.end annotation


# instance fields
.field private final mGlRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

.field private mIsQueued:Z

.field private final mTextures:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/sec/android/gallery3d/glrenderer/TiledTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    return-void
.end method


# virtual methods
.method public declared-synchronized addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->isReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/ui/GLRoot;->addOnGLIdleListener(Lcom/sec/android/gallery3d/ui/GLRoot$OnGLIdleListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onGLIdle(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;Z)Z
    .locals 10

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x4

    add-long v2, v4, v8

    :goto_1
    cmp-long v7, v4, v2

    if-gez v7, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    if-eqz v1, :cond_1

    # invokes: Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->uploadNextTile(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z
    invoke-static {v1, p1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->access$000(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mGlRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/ui/GLRoot;->requestRender()V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mTextures:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v6, 0x1

    :cond_3
    iput-boolean v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->mIsQueued:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
