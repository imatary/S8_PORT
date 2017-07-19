.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportOMCRestClient;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;
.source "ReportOMCRestClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/OMCResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportRestClient;-><init>(Landroid/content/Context;Lcom/samsung/android/app/omcagent/network/ResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;Lcom/samsung/android/app/omcagent/omc/OmcInfo;)V

    return-void
.end method


# virtual methods
.method public generateBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance v1, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportOMCRestClient;->resultInfo:Lcom/samsung/android/app/omcagent/network/ResultInfo;

    check-cast v0, Lcom/samsung/android/app/omcagent/network/OMCResultInfo;

    iget-object v2, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/ReportOMCRestClient;->deviceInfo:Lcom/samsung/android/app/omcagent/network/DeviceInfo;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;-><init>(Lcom/samsung/android/app/omcagent/network/OMCResultInfo;Lcom/samsung/android/app/omcagent/network/DeviceInfo;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/ReportRequest;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
