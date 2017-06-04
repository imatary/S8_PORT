.class public Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;
.super Ljava/lang/Object;
.source "DownloadStateContext.java"


# instance fields
.field private appInfo:Lcom/samsung/android/app/omcagent/update/app/AppInfo;

.field private cancelAll:Z

.field private context:Landroid/content/Context;

.field private downloadRetryCnt:I

.field private isCancel:Z

.field private pause:Z

.field private position:I

.field private restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

.field private service:Landroid/app/Service;

.field private state:Lcom/samsung/android/app/omcagent/update/app/DownloadState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Service;ILcom/samsung/android/app/omcagent/update/app/AppInfo;ZZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->START_APPLICATION_SESSION:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->service:Landroid/app/Service;

    iput p3, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->position:I

    iput-object p4, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->appInfo:Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    iput-boolean p5, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isCancel:Z

    iput-boolean p6, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->cancelAll:Z

    iput-boolean p7, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->pause:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->downloadRetryCnt:I

    return-void
.end method


# virtual methods
.method public getAppInfo()Lcom/samsung/android/app/omcagent/update/app/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->appInfo:Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    return-object v0
.end method

.method public getCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isCancel:Z

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDownloadRetryCnt()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->downloadRetryCnt:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->position:I

    return v0
.end method

.method public getRestClient()Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->service:Landroid/app/Service;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/app/omcagent/update/app/DownloadState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    return-object v0
.end method

.method public increaseDownloadRetryCnt()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->downloadRetryCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->downloadRetryCnt:I

    return-void
.end method

.method public isCancelAll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->cancelAll:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->pause:Z

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/omcagent/update/app/DownloadState;->run(Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;)Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->state:Lcom/samsung/android/app/omcagent/update/app/DownloadState;

    return-void
.end method

.method public setAppInfo(Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->appInfo:Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    return-void
.end method

.method public setCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->isCancel:Z

    return-void
.end method

.method public setCancelAll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->cancelAll:Z

    return-void
.end method

.method public setPause(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->pause:Z

    return-void
.end method

.method public setRestClient(Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/update/app/DownloadStateContext;->restClient:Lcom/samsung/android/app/omcagent/network/cloud/omc/DownloadApkUIRestClient;

    return-void
.end method
