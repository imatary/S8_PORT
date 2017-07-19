.class public Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;
.super Ljava/lang/Object;
.source "MultiDownloadStateContext.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isCancel:Z

.field private packagePath:Ljava/lang/String;

.field private resInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

.field private service:Landroid/app/Service;

.field private state:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Service;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;->START_RESOURCES_SESSION:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->service:Landroid/app/Service;

    iput-boolean p3, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->isCancel:Z

    return-void
.end method


# virtual methods
.method public getCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->isCancel:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getResourceInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->resInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->service:Landroid/app/Service;

    return-object v0
.end method

.method public getSourcePackagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    return-object v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;->run(Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;)Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadState;

    return-void
.end method

.method public setCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->isCancel:Z

    return-void
.end method

.method public setResourceInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->resInfoList:Ljava/util/List;

    return-void
.end method

.method public setRestClient(Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    return-void
.end method

.method public setSourcePackagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/resource/MultiDownloadStateContext;->packagePath:Ljava/lang/String;

    return-void
.end method
