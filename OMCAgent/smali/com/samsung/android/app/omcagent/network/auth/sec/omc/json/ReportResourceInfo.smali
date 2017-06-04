.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;
.super Ljava/lang/Object;
.source "ReportResourceInfo.java"


# instance fields
.field private downloadType:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private resourceMode:Ljava/lang/String;

.field private resultCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResourceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resourceId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo$INSTALL_MODE;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resourceMode:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const-string v0, "samsungapps"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->downloadType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/resource/ResourceInfo;->getResult()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resultCode:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public getDownloadType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->downloadType:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resourceMode:Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resultCode:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->downloadType:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setResourceMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resourceMode:Ljava/lang/String;

    return-void
.end method

.method public setResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportResourceInfo;->resultCode:Ljava/lang/String;

    return-void
.end method
