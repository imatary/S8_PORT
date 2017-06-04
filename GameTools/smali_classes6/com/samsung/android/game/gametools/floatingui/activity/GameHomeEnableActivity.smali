.class public Lcom/samsung/android/game/gametools/floatingui/activity/GameHomeEnableActivity;
.super Landroid/app/Activity;
.source "GameHomeEnableActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/GameHomeEnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isGameHomeEnableSync(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/GameHomeEnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->isSelectedNotificationClose(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "GamesFolderFirstTime"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/GameHomeEnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->isGameLauncherPreloadVersion(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/GameHomeEnableActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/game/gametools/floatingui/notification/NotificationController;->makeAndShowHeadUpNotification(Landroid/content/Context;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/activity/GameHomeEnableActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
