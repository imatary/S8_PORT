.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportResourceRestClient;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;
.source "ReportResourceRestClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/ResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    return-void
.end method


# virtual methods
.method public generateBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreloadState(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/omcagent/db/OmcPref$LOAD_PRELOAD_STATE;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;

    iget-object v1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportResourceRestClient;->resultInfo:Lcom/samsung/android/app/omcagent/network/ResultInfo;

    check-cast v1, Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;

    iget-object v3, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportResourceRestClient;->deviceInfo:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-direct {v2, v1, v3, v0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;-><init>(Lcom/samsung/android/app/omcagent/network/OMCResourceResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
