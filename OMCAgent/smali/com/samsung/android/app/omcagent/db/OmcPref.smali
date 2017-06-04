.class public Lcom/samsung/android/app/omcagent/db/OmcPref;
.super Lcom/samsung/android/common/util/Preference;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/db/OmcPref$APP_RESOURCE_VERSION;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$WAIT_WIFI;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$FW_UPDATED;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$INIT_TYPE_FOR_RESUME;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$PRESS_INSTALL_BTN;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$CHARGE_TYPE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$NETWORK_TYPE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$OPTIONAL_APP;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$RETRY_RESOURCE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$SIMCHANGED;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$ResourceVersion;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$REBOOT_TYPE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$LOAD_PRELOAD_STATE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$DOMAIN_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$UPDATE_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$NOTI_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$REPORT_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$PACKAGE_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$OMC_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$REQUEST_KEY;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$FWUPDATE_STATE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$CONTENT_TYPE;,
        Lcom/samsung/android/app/omcagent/db/OmcPref$UPDATE_TYPE;
    }
.end annotation


# static fields
.field private static final APP_INSTALL_STATE:Ljava/lang/String; = "OMC.App.Install.State"

.field public static final MAX_UPDATE_RETRY_COUNT:I = 0x3

.field private static final NONE:I = 0x0

.field public static final OMC_PREFS:Ljava/lang/String; = "OMC_PREFERENCE"

.field private static final STARTED:I = 0xa

.field public static instance:Lcom/samsung/android/app/omcagent/db/OmcPref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppAndResVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.APP.RES.VERSION"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppResultCode(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.APP.ResultCode"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppWidgetSize(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Widget.Size"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCIQVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.SECURITY.VERSION"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.Package.ContentType"

    const-string v2, "0"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Device.Category"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDomainPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Domain.prefix"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadResultCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.ResultCode"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Firmware.Version"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitType_forResume(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.INITTYPE.FORRESUME"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNotiType(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Noti.type"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOmcRequestMode(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Request.Mode"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getOptionalApp(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.OPT.APP"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getPackageHash(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.Package.Hash"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageSize(Landroid/content/Context;)J
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.Package.Size"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getLongPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreSalseCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.PRE.SALESCODE"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Preload.Flag"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRebootType(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.REBOOT.MODE"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReportUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.ResultUrl"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourceResultCode(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Resource.ResultCode"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getResourceRetryCount(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Resource.RetryCount"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getResourceVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.RESOURCE.VERSION"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceTransactionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.TransactionId"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateResultCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Update.ResultCode"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateRetryCountForReportOMCPackage(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Update.retryCount"

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpdateRetryCountForResource(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Update.retryCount"

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getUpdateType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.Package.UpdateType"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.DM.Package.UpdateVersion"

    const-string v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWaitWifiType(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.WAIT.WIFI.INTEGER"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasPackageAppsInfo(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Package.apps"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasPackageExtraInfo(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Package.etc"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hasPackageResourceInfo(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Package.resource"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public initOMCResult(Landroid/content/Context;)V
    .locals 12

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setRebootDevice(Landroid/content/Context;Z)Z

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-wide/16 v6, 0x0

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    const-string v11, ""

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setDownloadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public isAllAndFree(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isNetworkTypeAll(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->isFree(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAppInstallStart(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "OMC_PREFERENCE"

    const-string v2, "OMC.App.Install.State"

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForceInstall(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFree(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "OMC_PREFERENCE"

    const-string v3, "OMC.Charge.Type"

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkTypeAll(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "OMC_PREFERENCE"

    const-string v3, "OMC.Network.Type"

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkTypeWifiOnly(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "OMC_PREFERENCE"

    const-string v3, "OMC.Network.Type"

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPressedInstallBtn(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.SETUPWIZARD.BTN"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isRebootDevice(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Update.Reboot"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isResourceRetried(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    const-string v2, "OMC_PREFERENCE"

    const-string v3, "OMC.Res.Retry.State"

    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSimChanged(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.SIM.CHANGE"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSimSNChanged(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "SIM.SN.CHANGED"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isVersionUpdatedByFOTA(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.FW.UPDATED"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public needToUpdateRetry(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getUpdateRetryCountForReportOMCPackage(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pressInstallBtn(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.SETUPWIZARD.BTN"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAppAndResVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.APP.RES.VERSION"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppInstallNone(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.App.Install.State"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAppInstallStarted(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.App.Install.State"

    const/16 v2, 0xa

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAppResultCode(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.APP.ResultCode"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAppWidgetSize(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Widget.Size"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCIQVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.SECURITY.VERSION"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChargeType(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Charge.Type"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setConfigReportRetry(Landroid/content/Context;I)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Report.configs.retry"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Report.configs.retry"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setConfigReportState(Landroid/content/Context;I)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Report.configs.state"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Report.configs.state"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setContentType(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "OMC.DM.Package.ContentType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.ContentType"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setDeviceCategory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Device.Category"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDomainPrefix(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Domain.prefix"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDownloadResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "OMC.DM.ResultCode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.ResultCode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.TransactionId"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.TransactionId"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.ResultUrl"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.ResultUrl"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.Size"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.Size"

    invoke-interface {v0, v2, p5, p6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.Hash"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.Hash"

    invoke-interface {v0, v2, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.UpdateType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.UpdateType"

    invoke-interface {v0, v2, p8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.ContentType"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.ContentType"

    invoke-interface {v0, v2, p9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.UpdateVersion"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.DM.Package.UpdateVersion"

    invoke-interface {v0, v2, p10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setFirmwareVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Firmware.Version"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitType_forResume(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.INITTYPE.FORRESUME"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setNetworkType(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Network.Type"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setNotiType(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Noti.type"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setOmcRequestMode(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OmcRequestMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Request.Mode"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setOptionalApp(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.OPT.APP"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setPackageInfo(Landroid/content/Context;ZZZ)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "Package.apps"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Package.apps"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Package.resource"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Package.resource"

    invoke-interface {v0, v2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Package.etc"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "Package.etc"

    invoke-interface {v0, v2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setPreSalseCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.PRE.SALESCODE"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPreloadState(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Preload.Flag"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setRebootDevice(Landroid/content/Context;Z)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "OMC.Update.Reboot"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.Update.Reboot"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setRebootType(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.REBOOT.MODE"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setResourceResultCode(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Resource.ResultCode"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setResourceRetried(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Res.Retry.State"

    const/16 v2, 0xa

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setResourceRetriedNone(Landroid/content/Context;)V
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.Res.Retry.State"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setResourceRetryCount(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Resource.RetryCount"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setResourceVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.RESOURCE.VERSION"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setStringPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSimChangedInfo(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.SIM.CHANGE"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSimSNChanged(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "SIM.SN.CHANGED"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setUpdateResult(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v2, "OMC_PREFERENCE"

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->getPreference(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "OMC.Update.ResultCode"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "OMC.Update.ResultCode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method public setUpdateRetryCountForReportOMCPackage(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Update.retryCount"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setUpdateRetryCountForResource(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "Update.retryCount"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setVersionUpdatedByFOTA(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.FW.UPDATED"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setBooleanPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setWaitWifi(Landroid/content/Context;I)V
    .locals 2

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.WAIT.WIFI.INTEGER"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
