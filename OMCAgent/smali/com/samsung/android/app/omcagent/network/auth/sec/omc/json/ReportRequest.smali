.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;
.source "ReportRequest.java"


# instance fields
.field private appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resourceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resultCode:Ljava/lang/String;

.field private salesCode:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private updateChannel:Ljava/lang/String;

.field private updateVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/omcagent/network/AppResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->getProcessingId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->salesCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateChannel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->getAppResultCode()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->getAppResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resultCode:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->getAppInfoList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v2, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v3, "appInfo List is null"

    invoke-virtual {v2, v3}, Lcom/samsung/android/common/log/Logger$Impl;->V(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->appList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/app/AppInfo;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->appList:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;-><init>(Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->getProcessingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->salesCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCPackageResultInfo;->getResultCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;->getProcessingId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->salesCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateChannel:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;->getResourceResultCode()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;->getResourceResultCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resultCode:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;->getResourceInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resourceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resourceList:Ljava/util/List;

    new-instance v4, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;-><init>(Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/network/OMCResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->getProcessingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->sessionId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/app/omcagent/network/DeviceInfo;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->salesCode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->getUpdateVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateVersion:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;->getResultCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resultCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->appList:Ljava/util/List;

    return-object v0
.end method

.method public getResourceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resourceList:Ljava/util/List;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSalesCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->salesCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->appList:Ljava/util/List;

    return-void
.end method

.method public setResourceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resourceList:Ljava/util/List;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->resultCode:Ljava/lang/String;

    return-void
.end method

.method public setSalesCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->salesCode:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setUpdateChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateChannel:Ljava/lang/String;

    return-void
.end method

.method public setUpdateVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->updateVersion:Ljava/lang/String;

    return-void
.end method
