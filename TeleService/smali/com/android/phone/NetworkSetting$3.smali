.class Lcom/android/phone/NetworkSetting$3;
.super Landroid/os/Handler;
.source "NetworkSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0x190

    const/16 v5, 0x12c

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHandler msg.what"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EVENT_PLMN_REFRESH."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap20(Lcom/android/phone/NetworkSetting;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/ProgressButtonListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[NetworkSetting] ATT, Dismiss the Dialog after update of PLMN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    :sswitch_2
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Search completed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set6(Lcom/android/phone/NetworkSetting;Z)Z

    const-string/jumbo v2, "use_switch_preference_network_search"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get11(Lcom/android/phone/NetworkSetting;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get11(Lcom/android/phone/NetworkSetting;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get18(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get18(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Lcom/android/phone/NetworkSetting;->-wrap11(Lcom/android/phone/NetworkSetting;Ljava/util/List;I)V

    const-string/jumbo v2, "network_setting_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "1"

    invoke-static {}, Lcom/android/phone/NetworkSetting;->-get15()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap16(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get1(Lcom/android/phone/NetworkSetting;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EVENT_NETWORK_SCAN_COMPLETED, Set Automatic"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v2, "network_manual_selection_when_bootup"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get8(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mBootUpExtra"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->-get8(Lcom/android/phone/NetworkSetting;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set3(Lcom/android/phone/NetworkSetting;Z)Z

    :cond_6
    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    const-string/jumbo v2, "use_radio_preference_network_search"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get21(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->-get7(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/NetworkSetting;->-wrap21(Lcom/android/phone/NetworkSetting;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "hide_popup_progress_view"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get19(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get19(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/ProgressButtonPreference;->setProgressVisible(Z)V

    :cond_8
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/ProgressButtonListPreference;->setProgressVisible(Z)V

    goto/16 :goto_2

    :sswitch_3
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "EVENT_NETWORK_SELECTION_DONE hideProgressPanel"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap16(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "manual network selection: failed!"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    const-string/jumbo v2, "network_setting_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap6(Lcom/android/phone/NetworkSetting;)V

    :cond_a
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap2(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    :goto_3
    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    const-string/jumbo v2, "use_radio_preference_network_search"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get21(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->-get7(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/NetworkSetting;->-wrap21(Lcom/android/phone/NetworkSetting;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "manual network selection: succeeded!"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    const-string/jumbo v2, "usa_gsm_network_setting"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap7(Lcom/android/phone/NetworkSetting;)V

    goto :goto_3

    :cond_c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-wrap3(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_3

    :sswitch_4
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "0"

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap16(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    :cond_d
    const-string/jumbo v2, "network_setting_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get23(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set9(Lcom/android/phone/NetworkSetting;Z)Z

    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_e
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_15

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "EVENT_AUTO_SELECT_DONE hideProgressPanel"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    const-string/jumbo v2, "use_switch_preference_network_search"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get11(Lcom/android/phone/NetworkSetting;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get11(Lcom/android/phone/NetworkSetting;)Landroid/preference/PreferenceCategory;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_f
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get18(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2}, Lcom/android/phone/NetworkSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get18(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_10
    :goto_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "automatic network selection: failed!"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set1(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap2(Lcom/android/phone/NetworkSetting;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    :cond_11
    :goto_5
    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    const-string/jumbo v2, "use_radio_preference_network_search"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get21(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->-get7(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/NetworkSetting;->-wrap21(Lcom/android/phone/NetworkSetting;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v2, "hide_popup_progress_view"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get6(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v2

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get6(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/ProgressButtonPreference;->setProgressVisible(Z)V

    :cond_13
    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isSupportENSFeature()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/phone/ProgressButtonListPreference;->setProgressVisible(Z)V

    goto :goto_4

    :cond_14
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2, v5}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    goto :goto_4

    :cond_15
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_10

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "EVENT_AUTO_SELECT_DONE_AFTER_FAIL hideProgressPanel"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-virtual {v2, v8}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    goto/16 :goto_4

    :cond_16
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "automatic network selection: succeeded!"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_17

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-wrap3(Lcom/android/phone/NetworkSetting;I)V

    goto :goto_5

    :cond_17
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v8, :cond_11

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-wrap3(Lcom/android/phone/NetworkSetting;I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    goto/16 :goto_5

    :sswitch_5
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap8(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v2, "network_setting_tmo"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set7(Lcom/android/phone/NetworkSetting;Z)Z

    :cond_18
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-wrap14(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-wrap14(Lcom/android/phone/NetworkSetting;I)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v2, "VAU"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "XSA"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_19
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get13(Lcom/android/phone/NetworkSetting;)Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap13(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :cond_1b
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap12(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :sswitch_9
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap5(Lcom/android/phone/NetworkSetting;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v3, Lcom/android/phone/NetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    iput-object v3, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_1c

    invoke-static {}, Lcom/android/phone/NetworkSetting;->-get2()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v3, v3, Lcom/android/phone/NetworkSetting;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-set9(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-wrap14(Lcom/android/phone/NetworkSetting;I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iput-boolean v6, v2, Lcom/android/phone/NetworkSetting;->mSetToAutomaticMode:Z

    goto/16 :goto_0

    :cond_1c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_b
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-set6(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "mHandler - SELECT_MANUAL_TIMEOUT"

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap10(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get24(Lcom/android/phone/NetworkSetting;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHandler - updateDataState() ActionType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v4}, Lcom/android/phone/NetworkSetting;->-get0(Lcom/android/phone/NetworkSetting;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap10(Lcom/android/phone/NetworkSetting;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap19(Lcom/android/phone/NetworkSetting;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set0(Lcom/android/phone/NetworkSetting;I)I

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v3}, Lcom/android/phone/NetworkSetting;->-get14(Lcom/android/phone/NetworkSetting;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0xbb9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-set2(Lcom/android/phone/NetworkSetting;Z)Z

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v3, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-static {v2, v3}, Lcom/android/phone/NetworkSetting;->-wrap0(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v7}, Lcom/android/phone/NetworkSetting;->-set2(Lcom/android/phone/NetworkSetting;Z)Z

    goto/16 :goto_0

    :sswitch_d
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "remove femto cell search dialog"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const/16 v3, 0x384

    invoke-virtual {v2, v3}, Lcom/android/phone/NetworkSetting;->removeDialog(I)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2, v6}, Lcom/android/phone/NetworkSetting;->-wrap17(Lcom/android/phone/NetworkSetting;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get20(Lcom/android/phone/NetworkSetting;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-get12(Lcom/android/phone/NetworkSetting;)Lcom/android/phone/ProgressButtonListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v3, v3, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    invoke-virtual {v2, v3}, Lcom/android/phone/ProgressButtonListPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-boolean v2, v2, Lcom/android/phone/NetworkSetting;->mPLMN:Z

    if-nez v2, :cond_1e

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v2}, Lcom/android/phone/NetworkSetting;->-wrap1(Lcom/android/phone/NetworkSetting;)V

    :cond_1e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "femto cell conncet fail"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0649

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_6
    invoke-static {v6}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->setInternalMobileDataEnabled(Z)V

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v3, "femto cell conncet success"

    invoke-static {v2, v3, v6}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/phone/NetworkSetting$3;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v2, v2, Lcom/android/phone/NetworkSetting;->mContext:Landroid/content/Context;

    const v3, 0x7f0d064a

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0xc8 -> :sswitch_3
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_c
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_0
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_d
        0x7d0 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_8
        0x7d3 -> :sswitch_7
        0xbb9 -> :sswitch_b
    .end sparse-switch
.end method
