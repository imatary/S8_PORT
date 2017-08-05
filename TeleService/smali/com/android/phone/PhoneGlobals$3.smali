.class Lcom/android/phone/PhoneGlobals$3;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    const-string/jumbo v8, "KDI"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get0(Lcom/android/phone/PhoneGlobals;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v8

    const-string/jumbo v9, "ignore_sim_network_locked_events_bool"

    invoke-virtual {v8, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "nck_block_feature"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "1"

    const-string/jumbo v9, "ril.perso_nwk_puk"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "network perm blocked, do not show sim depersonal panel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "show sim depersonal panel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v12, v8, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "Skip the Network Lock Panel - It is already displayed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v9, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v9}, Lcom/android/phone/PhoneGlobals;->-set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "show sim depersonal panel- EVENT_SIM_NETWORK_SUBSET_LOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "KDI"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v12, v8, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "Skip the Network Lock Panel - It is already displayed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v9, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v9, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-static {v8, v9}, Lcom/android/phone/PhoneGlobals;->-set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "show sim service provider depersonal panel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "KDI"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v12, v8, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "Skip the Network Lock Panel - It is already displayed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    new-instance v9, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {v9, v10, v11}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/IccCardConstants$State;)V

    invoke-static {v8, v9}, Lcom/android/phone/PhoneGlobals;->-set5(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-boolean v8, v8, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iput-boolean v11, v8, Lcom/android/phone/PhoneGlobals;->mIsSim1Locked:Z

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get6(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->dismiss()V

    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, " dismiss EVENT_SIM_REMOVED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isMaximumPowerSavingMode()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_6
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isAbsentSimState(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-wrap2(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "Skip dismiss EVENT_SIM_REMOVED"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "Skip EVENT_SIM_REMOVED:SIM1"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_5
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "EVENT_DATA_ROAMING_DISCONNECTED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v8, "PhoneApp"

    const-string/jumbo v9, "EVENT_DATA_ROAMING_OK"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-static {v9, v8}, Lcom/android/phone/PhoneGlobals;->-wrap7(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_8
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :sswitch_9
    iget-object v9, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/AsyncResult;

    invoke-static {v9, v8}, Lcom/android/phone/PhoneGlobals;->-wrap6(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get7(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v9, "READY"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get3(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get3(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v10}, Lcom/android/phone/PhoneGlobals;->-set2(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    :cond_9
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get4(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8}, Lcom/android/phone/PhoneGlobals;->-get4(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-static {v8, v10}, Lcom/android/phone/PhoneGlobals;->-set3(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->-get9()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/services/telephony/sip/SipUtil;->startSipService()V

    goto/16 :goto_0

    :sswitch_d
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "AnykeyTapping"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "VolkeyTapping"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "PowerbuttonTapping"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAnykeyTapping = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mVolkeyTapping = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mPowerbuttonTapping = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-nez v1, :cond_a

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "anykey_mode"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    if-nez v4, :cond_b

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "volumekey_mode"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "incall_power_button_behavior"

    const/4 v10, 0x2

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_c
    if-nez v1, :cond_d

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "anykey_mode"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    if-nez v4, :cond_e

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "volumekey_mode"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_e
    if-nez v2, :cond_0

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "incall_power_button_behavior"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :sswitch_e
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    const-string/jumbo v9, "telecom"

    invoke-virtual {v8, v9}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telecom/TelecomManager;

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_touch"

    const/4 v10, -0x2

    invoke-static {v8, v9, v12, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const-string/jumbo v8, "PhoneApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EVENT_PALM_DOWN : value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->silenceRinger()V

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v10, "PALM"

    invoke-static {v8, v9, v10}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v10, "INCS"

    const-string/jumbo v11, "PALM"

    invoke-static {v8, v9, v10, v11}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.phone.action.ENABLE_UCE_TOGGLE"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v12, Lcom/android/phone/PhoneGlobals;->mUCEToggleEnabled:Z

    goto/16 :goto_0

    :sswitch_10
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v8, "com.android.phone.action.ENABLE_VIDEOCALL_TOGGLE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v8, v3}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    sput-boolean v12, Lcom/android/phone/PhoneGlobals;->mVIDEOCALLToggleEnabled:Z

    goto/16 :goto_0

    :sswitch_11
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->notifyDataDisconnectDomestic()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v8, p0, Lcom/android/phone/PhoneGlobals$3;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v8, v8, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectDomestic()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x8 -> :sswitch_b
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_0
        0xd -> :sswitch_c
        0xf -> :sswitch_d
        0x18 -> :sswitch_e
        0x1e -> :sswitch_11
        0x1f -> :sswitch_12
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x3e -> :sswitch_9
        0x3f -> :sswitch_a
        0x5a -> :sswitch_f
        0x5b -> :sswitch_10
    .end sparse-switch
.end method
