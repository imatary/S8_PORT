.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;
.super Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;
.source "DeviceCommonResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;,
        Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;
    }
.end annotation


# instance fields
.field protected omcEnable:Ljava/lang/String;

.field protected pollingInfo:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

.field protected statusReportInfo:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/JsonObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getOmcEnable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->omcEnable:Ljava/lang/String;

    return-object v0
.end method

.method public getPollingInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->pollingInfo:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    return-object v0
.end method

.method public getStatusReportInfo()Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->statusReportInfo:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    return-object v0
.end method

.method public setOmcEnable(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->omcEnable:Ljava/lang/String;

    return-void
.end method

.method public setPollingInfo(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->pollingInfo:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$PollingInfo;

    return-void
.end method

.method public setStatusReportInfo(Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse;->statusReportInfo:Lcom/samsung/android/app/omcagent/network/auth/sec/omc/json/DeviceCommonResponse$StatusReportInfo;

    return-void
.end method
