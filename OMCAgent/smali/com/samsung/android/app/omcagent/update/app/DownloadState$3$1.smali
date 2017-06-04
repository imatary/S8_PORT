.class Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;
.super Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;
.source "DownloadState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;->run(Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;)Lcom/samsung/android/app/omcagent/update/app/DownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;

.field final synthetic val$stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLcom/samsung/android/app/omcagent/update/app/DownloadStateContext;)V
    .locals 11

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->this$0:Lcom/samsung/android/app/omcagent/update/app/DownloadState$3;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->val$stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "App State: Canceled download application pakcage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    return-void
.end method

.method public onComplete(JJ)V
    .locals 11

    const/16 v10, 0x64

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App State: Completed to download package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x96

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateProgress(Landroid/content/Context;ILjava/lang/String;IJJI)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getPosition()I

    move-result v5

    move-wide v6, p1

    move-wide v8, p3

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->updateProgress(Landroid/content/Context;IJJI)V

    return-void
.end method

.method public onPause()V
    .locals 5

    sget-object v1, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v2, "App State: Pause download application pakcage"

    invoke-virtual {v1, v2}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->targetPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getTargetFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x9b

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getTargetFile()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x82

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateUI(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onProgress(JJI)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->val$stateContext:Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;

    invoke-virtual {v0}, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isPause()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Detect pause event"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x96

    move-wide v6, p1

    move-wide v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateProgress(Landroid/content/Context;ILjava/lang/String;IJJI)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getPosition()I

    move-result v3

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->updateProgress(Landroid/content/Context;IJJI)V

    goto :goto_0
.end method

.method public onStart(J)V
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App State: Starting to download package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppManager;->instance:Lcom/samsung/android/app/omcagent/update/app/AppManager;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getFileName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x96

    move-wide v6, p1

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/app/omcagent/update/app/AppManager;->updateProgress(Landroid/content/Context;ILjava/lang/String;IJJI)V

    sget-object v3, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->instance:Lcom/samsung/android/app/omcagent/update/app/AppNotification;

    iget-object v4, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState$3$1;->getPosition()I

    move-result v5

    move-wide v6, p1

    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/app/omcagent/update/app/AppNotification;->updateProgress(Landroid/content/Context;IJJI)V

    return-void
.end method
