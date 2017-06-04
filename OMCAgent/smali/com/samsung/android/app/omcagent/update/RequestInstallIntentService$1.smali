.class Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "RequestInstallIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive broadcast meassage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "com.samsung.omcagent.intent.RES_DOWNLOAD_CANCEL"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    const-string v1, "isCancel"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->isCancel:Z
    invoke-static {v0, v1}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->access$002(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->isCancel:Z
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->access$000(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->setCancel()V

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;

    # getter for: Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;
    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;->access$100(Lcom/samsung/android/app/omcagent/update/RequestInstallIntentService;)Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->setCancel()V

    goto :goto_0
.end method
