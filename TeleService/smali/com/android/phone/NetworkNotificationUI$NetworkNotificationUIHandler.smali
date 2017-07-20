.class Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
.super Landroid/os/Handler;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkNotificationUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-get5(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->-get2()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_network_transition"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-get6(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "ABSENT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "display showNoServiceAndManualSelecionDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-wrap5(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "addRoamingRegFailNotification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-wrap1(Lcom/android/phone/NetworkNotificationUI;)V

    const-string/jumbo v3, "mobile_newtork_style_for_skt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-get4(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isFactoryMode()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->-get2()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isOtaRegistering(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-wrap4(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v3, "LGTReady"

    const-string/jumbo v4, "ril.domesticOtaReady"

    const-string/jumbo v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-get0(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-get0(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetworkNotificationUI"

    const-string/jumbo v4, "ril.domesticOtaReady property is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-get3(Lcom/android/phone/NetworkNotificationUI;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1388

    const/16 v6, 0x66

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v3}, Lcom/android/phone/NetworkNotificationUI;->-wrap2(Lcom/android/phone/NetworkNotificationUI;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v4, "support_data_off_notification"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->-get2()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isRestrictedNetworkPolicy(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getNotificationMgr()Lcom/android/phone/NotificationMgr;

    move-result-object v4

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/phone/NotificationMgr;->updateMobileDataNotification(Z)V

    goto/16 :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v4, "support_data_selection_popup"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isMobileDataOn()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v4}, Lcom/android/phone/NetworkNotificationUI;->-get1(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v4}, Lcom/android/phone/NetworkNotificationUI;->-get1(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "NetworkNotificationUI"

    const-string/jumbo v5, "REMOVE_MOBILE_DATA_SELECTION_POPUP : although data is enabled, data selection popup is showing !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-static {v4}, Lcom/android/phone/NetworkNotificationUI;->-get1(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    invoke-static {v3, v6}, Lcom/android/phone/NetworkNotificationUI;->sendDataConnectionIntent(ZZ)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch
.end method
