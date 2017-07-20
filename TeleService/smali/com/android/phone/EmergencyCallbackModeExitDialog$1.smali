.class Lcom/android/phone/EmergencyCallbackModeExitDialog$1;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const-class v5, Lcom/android/phone/EmergencyCallbackModeService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-static {v4}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->-get0(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v3, v3, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyCallbackModeService;->getEmergencyCallbackModeTimeout()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v3, v3, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    invoke-virtual {v3}, Lcom/android/phone/EmergencyCallbackModeService;->getEmergencyCallbackModeCallState()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->-set0(Lcom/android/phone/EmergencyCallbackModeExitDialog;Z)Z

    :try_start_1
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-static {v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->-get0(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v2, v2, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$1$1;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog$1;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v2, "ECM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EmergencyCallbackModeExitDialog InterruptedException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "EmergencyCallbackMode"

    const-string/jumbo v3, "Failed to unbind from EmergencyCallbackModeService"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
