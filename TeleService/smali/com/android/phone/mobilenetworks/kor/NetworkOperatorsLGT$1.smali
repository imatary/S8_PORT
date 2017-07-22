.class Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;
.super Landroid/os/Handler;
.source "NetworkOperatorsLGT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    sparse-switch v13, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v13, "NetworkOperators_Lgt"

    const-string/jumbo v14, "Search completed."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-static {v14, v13, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap8(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/util/List;I)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v13, "hideProgressPanel___EVENT_NETWORK_SELECTION_DONE"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v13, "dismissDialog___EVENT_NETWORK_SELECTION_DONE"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->dismissDialog(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x64

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-virtual {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v10}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v13

    if-ge v7, v13, :cond_2

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    const-string/jumbo v13, "disabled_pref_key"

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_3

    const-string/jumbo v13, "Manual network selection failed!"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v15, 0x2

    invoke-static {v13, v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/lang/Throwable;I)V

    :goto_3
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v13, "Manual network selection succeeded!"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x12c

    if-ne v13, v14, :cond_5

    const-string/jumbo v13, "hideProgressPanel___EVENT_AUTO_SELECT_DONE"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x12c

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-virtual {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v13, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v13, :cond_6

    const-string/jumbo v13, "Automatic network selection failed!"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    iget-object v14, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Ljava/lang/Throwable;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x138a

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap12(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-set0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-virtual {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x190

    if-ne v13, v14, :cond_4

    const-string/jumbo v13, "hideProgressPanel___EVENT_AUTO_SELECT_DONE_AFTER_FAIL"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x190

    invoke-virtual {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->removeDialog(I)V

    goto :goto_4

    :cond_6
    const-string/jumbo v13, "Automatic network selection succeeded!"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-set3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Landroid/preference/Preference;)Landroid/preference/Preference;

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x12c

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x190

    const/16 v16, 0x12d

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->what:I

    const/16 v14, 0x190

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "SETTING_AUTO_SELECT_NETWORK : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isAutoSelectNetworkSetting()Z

    move-result v13

    if-eqz v13, :cond_8

    const-string/jumbo v13, "SELECT_AUTOMATIC but network mode is still Automatic, so it will finish()"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-virtual {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->finish()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap10(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)V

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap9(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mNotupdateSelectionState = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get3(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Z

    move-result v13

    if-eqz v13, :cond_9

    return-void

    :cond_9
    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->isManualSelection()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/CheckBoxPreference;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get5(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/CheckBoxPreference;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get7(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/SwitchPreference;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-virtual {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->invalidateOptionsMenu()V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/CheckBoxPreference;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get5(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/CheckBoxPreference;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get7(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/preference/SwitchPreference;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    goto :goto_5

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap1(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto/16 :goto_0

    :sswitch_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get8()J

    move-result-wide v14

    sub-long v4, v14, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v13

    if-eqz v13, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v13, v4, v14

    if-lez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v15}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get6(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v15, v4, v5}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap0(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;J)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const v15, 0x7f0d0c63

    invoke-virtual {v13, v15, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x3e8

    const/16 v16, 0x7d3

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x138a

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap12(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)V

    goto/16 :goto_0

    :sswitch_a
    const-string/jumbo v13, "NETWORK_START_SEARCH_FOR_SWITCH_BUTTON"

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap7(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    const/16 v14, 0x1388

    invoke-static {v13, v14}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap12(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    new-instance v14, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->pHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;Landroid/os/Handler;)V

    iput-object v14, v13, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    iget-object v13, v13, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->progressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;

    invoke-virtual {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$ProgressThread;->start()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/os/Handler;

    move-result-object v13

    const-wide/16 v14, 0x0

    const/16 v16, 0x7d3

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)Landroid/os/Handler;

    move-result-object v13

    const/16 v14, 0x7d5

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT$1;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;

    invoke-static {v13}, Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;->-wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperatorsLGT;)V

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x12d -> :sswitch_3
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_7
        0x3ec -> :sswitch_8
        0x7d0 -> :sswitch_4
        0x7d1 -> :sswitch_5
        0x7d2 -> :sswitch_6
        0x7d3 -> :sswitch_9
        0x7d5 -> :sswitch_a
    .end sparse-switch
.end method
