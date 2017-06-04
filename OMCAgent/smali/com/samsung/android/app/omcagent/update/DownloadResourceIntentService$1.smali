.class Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;
.super Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;
.source "DownloadResourceIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/BaseBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

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

    const-string v1, "com.samsung.omcagent.intent.RES_DOWNLOAD_CANCEL"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "isCancel"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->setCancel()V

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService$1;->this$0:Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;

    iget-object v1, v1, Lcom/samsung/android/app/omcagent/update/DownloadResourceIntentService;->stateContext:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;->setCancel()V

    goto :goto_0
.end method
