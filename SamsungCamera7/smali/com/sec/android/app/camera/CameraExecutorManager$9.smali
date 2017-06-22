.class Lcom/sec/android/app/camera/CameraExecutorManager$9;
.super Ljava/lang/Object;
.source "CameraExecutorManager.java"

# interfaces
.implements Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CameraExecutorManager;->registerInterimStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CameraExecutorManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CameraExecutorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$9;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 2

    const-string v0, "CameraExecutorManager"

    const-string v1, "onParamFillingReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CameraExecutorManager"

    const-string v1, "onRuleCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 3

    const-string v1, "CameraExecutorManager"

    const-string v2, "onScreenStatesRequested"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraExecutorManager$9;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->getSupportedModeSetInCurrentState()Ljava/util/LinkedHashSet;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1200(Lcom/sec/android/app/camera/CameraExecutorManager;)Ljava/util/LinkedHashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/util/LinkedHashSet;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 2

    const-string v0, "CameraExecutorManager"

    const-string v1, "onStateReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraExecutorManager$9;->this$0:Lcom/sec/android/app/camera/CameraExecutorManager;

    # invokes: Lcom/sec/android/app/camera/CameraExecutorManager;->processState(Lcom/samsung/android/sdk/bixby/data/State;)V
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/CameraExecutorManager;->access$1300(Lcom/sec/android/app/camera/CameraExecutorManager;Lcom/samsung/android/sdk/bixby/data/State;)V

    return-void
.end method
