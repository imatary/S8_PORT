.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;
.super Ljava/lang/Object;
.source "ReportAppInfo.java"


# instance fields
.field private appResultCode:Ljava/lang/String;

.field private downloadType:Ljava/lang/String;

.field private mandatory:Ljava/lang/String;

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package"
    .end annotation
.end field

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/omcagent/update/app/AppInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "false"

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->mandatory:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    const-string v0, "samsungapps"

    :goto_1
    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->downloadType:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfo;->getResult()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->appResultCode:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method public getAppResultCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->appResultCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->downloadType:Ljava/lang/String;

    return-object v0
.end method

.method public getMandatory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->mandatory:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppResultCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->appResultCode:Ljava/lang/String;

    return-void
.end method

.method public setDownloadType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->downloadType:Ljava/lang/String;

    return-void
.end method

.method public setMandatory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->mandatory:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportAppInfo;->versionName:Ljava/lang/String;

    return-void
.end method
