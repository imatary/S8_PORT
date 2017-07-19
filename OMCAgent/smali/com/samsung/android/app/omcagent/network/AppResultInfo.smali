.class public Lcom/samsung/android/app/omcagent/network/AppResultInfo;
.super Lcom/samsung/android/app/omcagent/network/ResultInfo;
.source "AppResultInfo.java"


# static fields
.field private static final URL_APP_REPORT_RESULT:Ljava/lang/String; = "/v4/api/device/reportAppResult"

.field public static instance:Lcom/samsung/android/app/omcagent/network/AppResultInfo;


# instance fields
.field private appInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private resultCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->instance:Lcom/samsung/android/app/omcagent/network/AppResultInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/ResultInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/omcagent/update/app/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->appInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getAppResultCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->resultCode:I

    return v0
.end method

.method public getURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getReportUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCDef;->getServerHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getUriInterface()Ljava/lang/String;
    .locals 1

    const-string v0, "/v4/api/device/reportAppResult"

    return-object v0
.end method

.method public isVaild()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->processingId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readResultInfo(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->getURI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->setBaseUrl(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/AppPref;->getTransactionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/omcagent/common/Device;->readDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->setProcessingId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/omcagent/db/AppPref;->instance:Lcom/samsung/android/app/omcagent/db/AppPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/AppPref;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->updateVersion:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->updateVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getAppAndResVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->updateVersion:Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->instance:Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/update/app/AppInfoDB;->readNeedToReportAppInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->appInfoList:Ljava/util/List;

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getAppResultCode(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/omcagent/network/AppResultInfo;->resultCode:I

    return-void
.end method
