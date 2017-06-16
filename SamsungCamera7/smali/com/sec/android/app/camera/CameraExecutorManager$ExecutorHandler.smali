.class Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;
.super Landroid/os/Handler;
.source "CameraExecutorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorHandler"
.end annotation


# instance fields
.field private final mManger:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/CameraExecutorManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->mManger:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, -0x1

    const/4 v10, 0x1

    const-string v7, "CameraExecutorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage msg : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/camera/CameraExecutorManager$ExecutorHandler;->mManger:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CameraExecutorManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/samsung/android/sdk/bixby/data/State;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->checkGroupTypeStateByStateId(I)I

    move-result v5

    const-string v7, "CameraExecutorManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleMessage processState : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", processParam : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    # setter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mLastNlgErrorType:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1402(Lcom/sec/android/app/camera/CameraExecutorManager;I)I

    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getDimKeyOfStateID(I)I

    move-result v0

    if-eq v0, v11, :cond_3

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->needToIgnoreDim(I)Z
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1500(Lcom/sec/android/app/camera/CameraExecutorManager;I)Z

    move-result v7

    if-nez v7, :cond_3

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mMenuDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/sec/android/app/camera/DimController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/sec/android/app/camera/DimController;->isSettingDisalbed(I)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Lcom/sec/android/app/camera/executor/RulePathState;->getNlgLandingStateID(I)I

    move-result v1

    if-ne v1, v11, :cond_2

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mLastLandingState:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1700(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V
    invoke-static {v2, v10, v4, v7, v12}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/camera/executor/RulePathState;->getName(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->sendResultWithNLG(ZILjava/lang/String;I)V
    invoke-static {v2, v10, v4, v7, v12}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1100(Lcom/sec/android/app/camera/CameraExecutorManager;ZILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    const-string v7, "CameraExecutorManager"

    const-string v8, "default case : nothing to do"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeChangeSettingBySingleValue(I)V
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1800(Lcom/sec/android/app/camera/CameraExecutorManager;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeChangeSettingByMultiValue(IIZ)V
    invoke-static {v2, v4, v3, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1900(Lcom/sec/android/app/camera/CameraExecutorManager;IIZ)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/data/State;->isLastState()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeShowMenu(IIZ)V
    invoke-static {v2, v4, v3, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$2000(Lcom/sec/android/app/camera/CameraExecutorManager;IIZ)V

    goto/16 :goto_0

    :pswitch_5
    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeLaunchToOtherApp(II)V
    invoke-static {v2, v4, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$2100(Lcom/sec/android/app/camera/CameraExecutorManager;II)V

    goto/16 :goto_0

    :pswitch_6
    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processStateTypeActionCapture(I)V
    invoke-static {v2, v4}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$2200(Lcom/sec/android/app/camera/CameraExecutorManager;I)V

    goto/16 :goto_0

    :pswitch_7
    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processStateByBuildCommand(I)Z
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$2300(Lcom/sec/android/app/camera/CameraExecutorManager;I)Z

    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mIsWaitCommandResult:Z
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$2400(Lcom/sec/android/app/camera/CameraExecutorManager;)Z

    move-result v7

    if-nez v7, :cond_0

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->sendResult(Z)V
    invoke-static {v2, v10}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$2500(Lcom/sec/android/app/camera/CameraExecutorManager;Z)V

    goto/16 :goto_0

    :pswitch_8
    # getter for: Lcom/sec/android/app/camera/CameraExecutorManager;->mCurrentRequestState:Lcom/samsung/android/sdk/bixby/data/State;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$600(Lcom/sec/android/app/camera/CameraExecutorManager;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v7

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processState(Lcom/samsung/android/sdk/bixby/data/State;)V
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1300(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
