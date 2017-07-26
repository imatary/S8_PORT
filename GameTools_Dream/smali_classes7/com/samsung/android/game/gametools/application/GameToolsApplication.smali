.class public Lcom/samsung/android/game/gametools/application/GameToolsApplication;
.super Landroid/app/Application;
.source "GameToolsApplication.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/application/GameToolsApplication;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private iniBroadCastReceiver()V
    .locals 3

    new-instance v1, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication$1;-><init>(Lcom/samsung/android/game/gametools/application/GameToolsApplication;)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "sec.app.policy.UPDATE.gametools"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.intent.action.DAYDREAM_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initializeAutoBitrateSetting()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrate(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getAutoBPS(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setAutoBitrate(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initiazlieBitrateSetting(), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getAutoBPS(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putVersionName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "tools_version_local"

    invoke-static {p0, v0, p1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->putSharedPreferenceString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private validationCheckResolutionSetting()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->checkValidResolution()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validationCheckResolutionSetting() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/model/SettingUtil;->getDeviceBasedResolutionList(Z)[Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method loadSCPMBlackList(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/util/SCPMHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/game/gametools/floatingui/util/SCPMHelper;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->getInstance(Landroid/content/Context;)Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/floatingui/util/SCPMHelper;->loadPolicy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/utility/NoAlertsUtil;->setFloatingBlackList(Ljava/util/List;)V

    return-void
.end method

.method public onCreate()V
    .locals 6

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string/jumbo v3, "GameToolsApplication onCreate"

    invoke-static {v3}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/sec/game/gamecast/common/utility/VersionUtil;->getNowVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->putVersionName(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/game/gamecast/common/utility/DeviceUtil;->isSemAvailable(Landroid/content/Context;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Version Name : "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "SEP enable : "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "SEP API Version : "

    sget v5, Landroid/os/Build$VERSION;->SEM_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "SEP Platform Version : "

    sget v5, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;-><init>()V

    const-string/jumbo v4, "767-399-9953102"

    invoke-virtual {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v3

    const-string/jumbo v4, "0.1"

    invoke-virtual {v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->setConfiguration(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->validationCheckResolutionSetting()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->initializeAutoBitrateSetting()V

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->iniBroadCastReceiver()V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->loadSCPMBlackList(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "occured :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/game/gamecast/common/logger/TLog;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method restartToolsService(IZLjava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "## GameToolsApplication restart Service ##"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/logger/TLog;->d(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.game.gametools.GAMETOOLS_INTENTSERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "isGame"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/application/GameToolsApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
