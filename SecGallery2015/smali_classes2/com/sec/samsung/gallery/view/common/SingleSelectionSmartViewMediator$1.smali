.class Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;
.super Landroid/os/Handler;
.source "SingleSelectionSmartViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$000(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SingleSmartView"

    const-string/jumbo v2, "startDetailViewViaSmartView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mIsStartedView:Z
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$102(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mTopState:Lcom/sec/android/gallery3d/app/ActivityState;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$000(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # getter for: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->mSelectedPath:Lcom/sec/android/gallery3d/data/Path;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$200(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/ActivityState;->startDetailViewViaSmartView(Lcom/sec/android/gallery3d/data/Path;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator$1;->this$0:Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;

    # invokes: Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->dismiss()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;->access$300(Lcom/sec/samsung/gallery/view/common/SingleSelectionSmartViewMediator;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "SingleSmartView"

    const-string/jumbo v2, "fail to start detail view. topState=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
