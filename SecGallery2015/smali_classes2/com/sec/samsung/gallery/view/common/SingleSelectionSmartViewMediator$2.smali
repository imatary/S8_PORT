.class Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;
.super Ljava/lang/Object;
.source "SingleSelectionSmartViewMediator.java"

# interfaces
.implements Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$OnGLIdleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->setGlIdleTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGLIdle()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mSelectedPath:Lcom/sec/android/gallery3d/data/Path;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$200(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mIsStartedView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$100(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "send message to startDetailView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mIsStartedView:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$102(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$400(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$400(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SingleSmartView"

    const-string/jumbo v1, "fail to start detailview via smartview"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$2;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # invokes: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->dismiss()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$300(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)V

    goto :goto_0
.end method
