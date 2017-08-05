.class Lcom/android/keyguard/sec/AdaptiveEventManager$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$900(Lcom/android/keyguard/sec/AdaptiveEventManager;I)V

    const-string/jumbo v0, "AdaptiveEventManager"

    const-string/jumbo v1, "SendBroadcast() from Keyguard BootCompleted() Callback to Weather Deamon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPackageChanged(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "com.sec.android.app.shealth"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    const-string/jumbo v1, "com.sec.android.app.shealth.walkingmate.service.WalkingMateDayStepService"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->removeAdaptiveEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0, v6}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1202(Lcom/android/keyguard/sec/AdaptiveEventManager;Z)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$500(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0, v7}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$802(Lcom/android/keyguard/sec/AdaptiveEventManager;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    invoke-static {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1402(Lcom/android/keyguard/sec/AdaptiveEventManager;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    :goto_4
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "AdaptiveEventManager"

    const-string/jumbo v1, "Skip onUserSwitchComplete logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0, v6}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1002(Lcom/android/keyguard/sec/AdaptiveEventManager;Z)Z

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    invoke-static {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1402(Lcom/android/keyguard/sec/AdaptiveEventManager;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v0

    if-eq v0, v7, :cond_8

    move v0, v6

    :goto_5
    if-eqz v0, :cond_9

    :cond_7
    :goto_6
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$900(Lcom/android/keyguard/sec/AdaptiveEventManager;I)V

    const-string/jumbo v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SendBroadcast() from Keyguard onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") Callback to Weather Deamon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    move v0, v7

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-virtual {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$4;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v0

    goto :goto_6
.end method
