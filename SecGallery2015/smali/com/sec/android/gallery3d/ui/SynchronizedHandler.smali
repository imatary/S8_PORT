.class public Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.super Landroid/os/Handler;
.source "SynchronizedHandler.java"


# instance fields
.field private final mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/GLRoot;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->lockRenderThread()V

    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/GLRoot;->unlockRenderThread()V

    throw v0
.end method
