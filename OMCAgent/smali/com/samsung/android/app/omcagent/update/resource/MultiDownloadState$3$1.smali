.class Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;
.super Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;
.source "MultiDownloadState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3;->run(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;)Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 9

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->this$0:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;-><init>(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public onComplete(JJ)V
    .locals 9

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource State: Completed to download resource("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getPosition()I

    move-result v3

    const/16 v8, 0x64

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->updateProgress(Landroid/content/Context;IJJI)V

    return-void
.end method

.method public onProgress(JJI)V
    .locals 9

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getPosition()I

    move-result v3

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->updateProgress(Landroid/content/Context;IJJI)V

    return-void
.end method

.method public onStart(J)V
    .locals 9

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource State: Starting to download resource("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$3$1;->getPosition()I

    move-result v3

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->updateProgress(Landroid/content/Context;IJJI)V

    return-void
.end method
