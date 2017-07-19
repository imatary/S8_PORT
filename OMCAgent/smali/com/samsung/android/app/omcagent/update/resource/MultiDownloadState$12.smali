.class final Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$12;
.super Ljava/lang/Object;
.source "MultiDownloadState.java"

# interfaces
.implements Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;)Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Resource State: fail to copy resources pakcage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setResourceRetried(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->instance:Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceNotification;->downloadFail(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState$12;->REPORT_RESOURCES:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "COPY_RESOURCES_FAIL"

    return-object v0
.end method
