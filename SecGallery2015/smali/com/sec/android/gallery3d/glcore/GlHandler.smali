.class public Lcom/sec/android/gallery3d/glcore/GlHandler;
.super Ljava/lang/Object;
.source "GlHandler.java"


# instance fields
.field public mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlRootView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object p1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-void
.end method


# virtual methods
.method public hasMessage(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->hasCommand(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMessage(ILjava/lang/Object;III)V
    .locals 0

    return-void
.end method

.method public removeAllMessage()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeCommand(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public removeMessage(I)V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCmd;

    invoke-direct {v0, p1, v1, v1, v1}, Lcom/sec/android/gallery3d/glcore/GlCmd;-><init>(IIII)V

    iput-object p0, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->removeCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V

    :cond_0
    return-void
.end method

.method public sendMessage(IIII)V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCmd;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/glcore/GlCmd;-><init>(IIII)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmdType:I

    iput-object p0, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V

    :cond_0
    return-void
.end method

.method public sendMessageDelayed(IIIIJ)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long v6, v2, p5

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCmd;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/gallery3d/glcore/GlCmd;-><init>(IIIIJ)V

    const/4 v0, 0x4

    iput v0, v1, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmdType:I

    iput-object p0, v1, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V

    :cond_0
    return-void
.end method

.method public sendMessageObject(ILjava/lang/Object;III)V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/glcore/GlCmd;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/sec/android/gallery3d/glcore/GlCmd;-><init>(IIII)V

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mCmdType:I

    iput-object p2, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mParmObj:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sec/android/gallery3d/glcore/GlCmd;->mThis:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/glcore/GlHandler;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setCommand(Lcom/sec/android/gallery3d/glcore/GlCmd;)V

    :cond_0
    return-void
.end method
