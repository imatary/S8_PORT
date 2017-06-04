.class Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "DownloadAppIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive broadcast meassage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v1, "com.samsung.omcagent.intent.APP_DOWNLOAD_CANCEL"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->packageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$000(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    const-string v2, "cancel"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z
    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$102(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->setCancel(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->setCancel()V

    goto :goto_0

    :cond_2
    const-string v1, "com.samsung.omcagent.intent.APP_DOWNLOAD_CANCEL_ALL"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    const-string v2, "cancelAll"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z
    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$202(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$200(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v2

    # setter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z
    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$102(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z
    invoke-static {v1}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->isCancel:Z
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->setCancel(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->cancelAll:Z
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$200(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->setCancelAll(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->setCancel()V

    goto/16 :goto_0

    :cond_3
    const-string v1, "com.samsung.omcagent.intent.APP_DOWNLOAD_PAUSE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    const-string v2, "pause"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z
    invoke-static {v1, v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$302(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;Z)Z

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$300(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->setPause(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->pause:Z
    invoke-static {v2}, Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;->access$300(Lcom/samsung/android/app/omcagent/update/DownloadAppIntentService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;->setbPause(Z)V

    goto/16 :goto_0
.end method
