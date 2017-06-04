.class public Lcom/samsung/android/app/omcagent/db/TaskPref;
.super Lcom/samsung/android/common/util/Preference;
.source "TaskPref.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;
    }
.end annotation


# static fields
.field public static final OMC_PREFS:Ljava/lang/String; = "OMC_PREFERENCE"

.field public static instance:Lcom/samsung/android/app/omcagent/db/TaskPref;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/omcagent/db/TaskPref;

    invoke-direct {v0}, Lcom/samsung/android/app/omcagent/db/TaskPref;-><init>()V

    sput-object v0, Lcom/samsung/android/app/omcagent/db/TaskPref;->instance:Lcom/samsung/android/app/omcagent/db/TaskPref;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/common/util/Preference;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Clear DBs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/omcagent/db/TaskPref;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/omcagent/log/FileLog;->logShift()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/log/FileLog;->logShift()V

    throw v0
.end method

.method public getOMCState(Landroid/content/Context;)I
    .locals 3

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.State"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/omcagent/db/TaskPref;->getIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    const/16 v0, 0x64

    :try_start_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/omcagent/ui/OmcNotificationManager;->clearNotifictaion(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    const-string v1, "Initialize Internal Settings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->I(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->initOMCResult(Landroid/content/Context;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    sget-object v1, Lcom/samsung/android/app/omcagent/common/Device;->instance:Lcom/samsung/android/app/omcagent/common/Device;

    invoke-virtual {v1}, Lcom/samsung/android/app/omcagent/common/Device;->readFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setFirmwareVersion(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setUpdateRetryCountForReportOMCPackage(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setPackageInfo(Landroid/content/Context;ZZZ)Z

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setOmcRequestMode(Landroid/content/Context;I)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setSimChangedInfo(Landroid/content/Context;Z)V

    sget-object v0, Lcom/samsung/android/app/omcagent/db/OmcPref;->instance:Lcom/samsung/android/app/omcagent/db/OmcPref;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/omcagent/db/OmcPref;->setInitType_forResume(Landroid/content/Context;I)V

    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setOMCState(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/samsung/android/app/omcagent/log/FileLog;->logShift()V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/app/omcagent/log/FileLog;->logShift()V

    throw v0
.end method

.method public setOMCState(Landroid/content/Context;I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/omcagent/log/FileLog;->DEBUG:Lcom/samsung/android/common/log/Logger$Impl;

    invoke-static {p2}, Lcom/samsung/android/app/omcagent/db/TaskPref$OMC_STATE;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/common/log/Logger$Impl;->D(Ljava/lang/String;)V

    const-string v0, "OMC_PREFERENCE"

    const-string v1, "OMC.State"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/samsung/android/app/omcagent/db/TaskPref;->setIntPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
