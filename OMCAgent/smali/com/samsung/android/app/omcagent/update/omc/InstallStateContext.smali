.class public Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;
.super Ljava/lang/Object;
.source "InstallStateContext.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isAppOnly:Z

.field private isCancel:Z

.field private packagePath:Ljava/lang/String;

.field private resourceInfoList:Ljava/util/List;
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

.field private state:Lcom/samsung/android/app/omcagent/update/omc/InstallState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Service;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->VERIFY_OMC_PACKAGE:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->service:Landroid/app/Service;

    iput-boolean p3, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->isCancel:Z

    return-void
.end method


# virtual methods
.method public getCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->isCancel:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->service:Landroid/app/Service;

    return-object v0
.end method

.method public getSourcePackagePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->packagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceResourceInfoList()Ljava/util/List;
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

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->resourceInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/omc/InstallState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    return-object v0
.end method

.method public isAppOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->isAppOnly:Z

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/omc/InstallState;->run(Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;)Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->state:Lcom/samsung/android/app/omcagent/update/omc/InstallState;

    return-void
.end method

.method public setAppOnly()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->isAppOnly:Z

    return-void
.end method

.method public setCancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->isCancel:Z

    return-void
.end method

.method public setRestClient(Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadResourceRestClient;

    return-void
.end method

.method public setSourcePackagePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->packagePath:Ljava/lang/String;

    return-void
.end method

.method public setSourceResourceInfoList(Ljava/util/List;)V
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

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/omc/InstallStateContext;->resourceInfoList:Ljava/util/List;

    return-void
.end method
