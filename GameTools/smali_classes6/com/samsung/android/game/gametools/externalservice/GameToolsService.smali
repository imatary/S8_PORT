.class public Lcom/samsung/android/game/gametools/externalservice/GameToolsService;
.super Landroid/app/Service;
.source "GameToolsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;,
        Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PHONE_CALL:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final GC_ACTION_BATTERY_CHANGED:Ljava/lang/String; = "android.intent.action.BATTERY_CHANGED"

.field private static TARGET_BATTERY_PERCENTAGE:I


# instance fields
.field private SHOW_TOOLKIT:I

.field private STOP_RECORD:I

.field final TAG:Ljava/lang/String;

.field private mAppPackageName:Ljava/lang/String;

.field private mAppTitle:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;

.field public mCurrentPackageName:Ljava/lang/String;

.field mDetectorHandler:Landroid/os/Handler;

.field private mFloatingServiceStartHandler:Landroid/os/Handler;

.field private mGameToolsVersionName:Ljava/lang/String;

.field private mIsImcomingCall:Z

.field private mIsOffHook:Z

.field private mLatestResumeTime:J

.field mPhoneListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

.field private mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

.field private mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    sput v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->TARGET_BATTERY_PERCENTAGE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string/jumbo v0, "GameTools Service"

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppPackageName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mIsImcomingCall:Z

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mIsOffHook:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mLatestResumeTime:J

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->SHOW_TOOLKIT:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->STOP_RECORD:I

    new-instance v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mDetectorHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mFloatingServiceStartHandler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    new-instance v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$2;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mPhoneListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$MyBinder;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->SHOW_TOOLKIT:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->STOP_RECORD:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->isGameOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mIsImcomingCall:Z

    return v0
.end method

.method static synthetic access$402(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mIsImcomingCall:Z

    return p1
.end method

.method static synthetic access$502(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mIsOffHook:Z

    return p1
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->TARGET_BATTERY_PERCENTAGE:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    return-object v0
.end method

.method private declared-synchronized isGameOn()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadApplicationInfo(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/game/gamecast/common/controller/PackageManagerWrapper;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppTitle:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppPackageName:Ljava/lang/String;

    return-void
.end method

.method private onGamePause(Ljava/lang/String;Z)V
    .locals 9

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mLatestResumeTime:J

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v0, "GameTools Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGamePause. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mDetectorHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->SHOW_TOOLKIT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopRecordService()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setIsGameOn(Ljava/lang/String;ZZ)V

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT24"

    const/4 v3, 0x0

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isShowGameTools(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v4, 0x3e8

    :cond_0
    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopForegroundThisPid()V

    :goto_0
    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "onGamePause end"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v7

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopForegroundThisPid()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopForegroundThisPid()V

    throw v0
.end method

.method private onGameResume(Ljava/lang/String;Z)V
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mLatestResumeTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "UnExpected onResume"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x103012b

    invoke-direct {v6, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v8

    const-string/jumbo v0, "GameTools Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGameResume. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->loadApplicationInfo(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->isNeedRefreshBlackListPolicy()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v7, Lcom/samsung/android/game/gametools/floatingui/util/SCPMHelper;

    invoke-direct {v7, v6}, Lcom/samsung/android/game/gametools/floatingui/util/SCPMHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/samsung/android/game/gametools/floatingui/util/SCPMHelper;->loadPolicy()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setFloatingBlackList(Ljava/util/List;)V

    :cond_1
    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isNoAlertsOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "4012"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x1

    invoke-static {v6, v0, p2}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->checkPermissionAndNotificationForNoAlert(Landroid/content/Context;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1, p2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_THIS_APP_DOES_NOT_SUPPORT_PS_FUNCTION_OF_GAME_TOOLS:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_OPT_NO_ALERTS_WHILE_USING_APP:I

    invoke-virtual {v6, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisplayGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->startForegroundThisPid()V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->getinstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;

    move-result-object v0

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "GT20"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/game/gamecast/common/utility/ContextProviderUtil;->insertFeatureLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isKeyLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "4013"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_2
    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isShowGameTools(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "4014"

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_3
    const-string/jumbo v0, "4015"

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isGuideShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showGuideDelayed(J)V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->setIsGameOn(Ljava/lang/String;ZZ)V

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "onGameResume end"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mLatestResumeTime:J

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOn(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1, p2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOn(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1, p2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v0, "4012"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v0, "4013"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "4014"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/util/SAToolsUtil;->sendEventToSA(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_9
    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isGuideShown(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isDisclaimerConfirm(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setDisplayGameTools(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setKeyLock(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setNoAlertsOn(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->callDisclaimerActivity()V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mDetectorHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->SHOW_TOOLKIT:I

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/game/gamecast/common/model/SettingData;->setGuideShown(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_b
    invoke-static {v6}, Lcom/sec/game/gamecast/common/model/SettingData;->isGuideShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->showGuideDelayed(J)V

    goto/16 :goto_4
.end method

.method private declared-synchronized onGameStateChanged(ZLjava/lang/String;Z)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->onGameResume(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->onGamePause(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startForegroundThisPid()V
    .locals 4

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getInstance()Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->setProcessForeground(Landroid/content/Context;IZ)V

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "startForegroundThisPid"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private stopForegroundThisPid()V
    .locals 4

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->getInstance()Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/game/gamecast/common/utility/ActivityManagerProxy;->setProcessForeground(Landroid/content/Context;IZ)V

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "stopForegroundThisPid"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public floatingToast(Ljava/lang/String;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mIsImcomingCall:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mFloatingServiceStartHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$3;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getAppTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNameByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    aput-object v0, v2, v9

    move-object v8, p1

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v8
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v1, "GameTools Service"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    if-nez v1, :cond_0

    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onConfigurationChanged : mToolkitController null"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->configurationChanged(Landroid/content/res/Configuration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->isGameOn()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->isRecording()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->mRecordingGuide:Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingGuide;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/LockScreenManager;->mIsLocked:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->initialize()V

    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onConfigurationChanged toolkit initialize"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onConfigurationChanged ended"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_3
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->updateLayoutByConfigurationChange(I)V

    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onConfigurationChanged toolkit updateLayoutByConfigurationChange"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onConfigurationChanged no action"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onCreate() Start"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tools_version_local"

    const-string/jumbo v2, "NONE"

    invoke-static {p0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->getSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mGameToolsVersionName:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;Lcom/samsung/android/game/gametools/externalservice/GameToolsService$1;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mReceiver:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.game.gametools.onclicknoti"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mReceiver:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    const-string/jumbo v1, "GameTools Service"

    const-string/jumbo v2, "onCreate() end"

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "onDestroy() Start"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mReceiver:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mReceiver:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mReceiver:Lcom/samsung/android/game/gametools/externalservice/GameToolsService$AlwaysReceiver;

    :cond_0
    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->release()I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->destroyController()V

    iput-object v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mCurrentPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1, v2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->requestNoAlertsOnRuntime(ZLjava/lang/String;Z)Z

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "onDestroy() end"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "Kill Process"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public onLowMemory()V
    .locals 2

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "onLowMemory()"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "GameTools Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStartCommand(intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string/jumbo v4, "type"

    const/16 v5, -0x3e7

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "pkgName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "isGame"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->isPerformanceGameModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "GameTools Service"

    const-string/jumbo v5, "PerformanceGameMode ON"

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "GameTools Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "appType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sparse-switch v2, :sswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    :cond_2
    return v3

    :sswitch_0
    const-string/jumbo v4, "GameToolsVersionName"

    iget-object v5, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mGameToolsVersionName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    const-string/jumbo v4, "GameTools Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onStartCommand RESUMED : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1, v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->onGameStateChanged(ZLjava/lang/String;Z)V

    goto :goto_0

    :sswitch_1
    if-eqz v1, :cond_1

    const-string/jumbo v3, "GameTools Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onStartCommand PAUSED : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7, v1, v0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->onGameStateChanged(ZLjava/lang/String;Z)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "GameTools Service"

    const-string/jumbo v4, "onStartCommand STOP_RECORD"

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    invoke-virtual {v3, v7}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->setScreenWasLeftException(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->stopRecordService()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7d0 -> :sswitch_2
    .end sparse-switch
.end method

.method public onTrimMemory(I)V
    .locals 3

    const-string/jumbo v0, "GameTools Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    return-void
.end method

.method public showToolkit()V
    .locals 2

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "showToolkit"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/game/gametools/externalservice/GameToolsIntentService;->isGameOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "showToolkit : game ON"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mToolkitController:Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/toolkit/ToolkitController;->refresh()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "showToolkit : game OFF"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showToolkit(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mDetectorHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->SHOW_TOOLKIT:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public startRecordModule()V
    .locals 4

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;-><init>(Lcom/samsung/android/game/gametools/externalservice/GameToolsService;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mAppPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->createRecordButton(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public stopRecordService()V
    .locals 2

    const-string/jumbo v0, "GameTools Service"

    const-string/jumbo v1, "stopRecordService"

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/logger/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getProfileSource(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/view/module/RecordingTopToast;->reset()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;->finishModule()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/externalservice/GameToolsService;->mRecordingModule:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModule;

    :cond_1
    return-void
.end method
