.class public abstract Lcom/sec/game/gamecast/common/view/CommonFloating;
.super Ljava/lang/Object;
.source "CommonFloating.java"

# interfaces
.implements Lcom/sec/game/gamecast/common/view/CommonFloatingViewInterface;


# instance fields
.field protected mInsideView:Landroid/view/View;

.field protected mIsLayoutAdded:Z

.field protected mLayout:Landroid/view/ViewGroup;

.field protected mParams:Landroid/view/WindowManager$LayoutParams;

.field protected mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mInsideView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mIsLayoutAdded:Z

    iput-object v1, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract addLayoutToWindow()V
.end method

.method public getInsideView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mInsideView:Landroid/view/View;

    return-object v0
.end method

.method public declared-synchronized getParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mParams:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWindowAddedLayout()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public declared-synchronized getWindowAddedLayoutVisibility()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract inflate()V
.end method

.method public declared-synchronized initialize()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mTag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "No tag error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/view/CommonFloating;->isLayoutAddedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/view/CommonFloating;->removeLayoutFromWindow()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/view/CommonFloating;->inflate()V

    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/view/CommonFloating;->setParams()V

    invoke-virtual {p0}, Lcom/sec/game/gamecast/common/view/CommonFloating;->addLayoutToWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLayoutAddedToWindow()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mIsLayoutAdded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract removeLayoutFromWindow()V
.end method

.method public declared-synchronized setLayoutTag(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mTag:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams()V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7d2

    const v4, 0x1000628

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWindowAddedLayoutVisibility(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/game/gamecast/common/view/CommonFloating;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract updateLayout()V
.end method
