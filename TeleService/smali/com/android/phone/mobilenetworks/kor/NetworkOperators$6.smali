.class Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;
.super Landroid/os/Handler;
.source "NetworkOperators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/NetworkOperators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 23

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v18, "NetworkOperators"

    const-string/jumbo v19, "Search completed."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/List;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap12(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/util/List;I)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v18, "hideProgressPanel___EVENT_NETWORK_SELECTION_DONE"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v18, "dismissDialog___EVENT_NETWORK_SELECTION_DONE"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->dismissDialog(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x64

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    invoke-virtual {v15, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    const-string/jumbo v18, "disabled_pref_key"

    invoke-virtual {v5}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    const-string/jumbo v18, "Manual network selection failed!"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap5(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/Throwable;)V

    :goto_3
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v18, "Manual network selection succeeded!"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-set1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const-string/jumbo v18, "hideProgressPanel___EVENT_AUTO_SELECT_DONE"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x12c

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-set1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)Z

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "set mGotoHomeAfterselection to "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get5(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap19(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    const-string/jumbo v18, "Automatic network selection failed!"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap5(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x190

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const-string/jumbo v18, "hideProgressPanel___EVENT_AUTO_SELECT_DONE_AFTER_FAIL"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x190

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    goto :goto_4

    :cond_6
    const-string/jumbo v18, "Automatic network selection succeeded!"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x12c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    const/16 v19, 0x190

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap9(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap16(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get13(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/Preference;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get8(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get13(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/Preference;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/OperatorInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v14, v12}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap15(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo;)V

    goto/16 :goto_0

    :sswitch_6
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v16

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mNotupdateSelectionState = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get9(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get9(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Z

    move-result v18

    if-eqz v18, :cond_8

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap18(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap0(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/telephony/ServiceState;)Z

    move-result v18

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get7(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap21(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap21(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Lcom/android/phone/mobilenetworks/kor/RadioButtonPreference;)V

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/boundary/SettingProxy;->setAutoSelectNetworkCarrier(Z)V

    goto/16 :goto_0

    :sswitch_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get12()J

    move-result-wide v18

    sub-long v6, v18, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get10(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v18

    if-eqz v18, :cond_0

    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_a

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap1(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get11(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v22, 0x0

    aput-object v21, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;J)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    aput-object v21, v20, v22

    const v21, 0x7f0d0cd4

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get10(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/mobilenetworks/kor/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v18

    const-wide/16 v20, 0x3e8

    const/16 v19, 0x7d3

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap4(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v18, "EVENT_EF_WRITE_COMPLETED"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    const-string/jumbo v18, "Set Auto send oemapi_domestic_multi_imsi_change_set"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->sendImsiStatusChangeNoti()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap8(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v18, "EVENT_EF_WRITE_COMPLETED_DELAY"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    const/16 v19, 0x384

    invoke-virtual/range {v18 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->removeDialog(I)V

    const-string/jumbo v18, "gsm.sim.roaming"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get4(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap14(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_a
    new-instance v18, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6$1;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6$1;->start()V

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v18, "EVENT_BAND_SELECTED_INFORMED"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap17(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-static {}, Lcom/android/phone/mobilenetworks/boundary/PhoneProxy;->sendImsiStatusChangeNotiForNoWait()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap11(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v18

    const-wide/16 v20, 0xbb8

    const/16 v19, 0x2bc

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap3(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)V

    goto/16 :goto_0

    :sswitch_f
    const-string/jumbo v18, "NETWORK_START_SEARCH_FOR_SWITCH_BUTTON"

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-wrap10(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get2(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get3(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v18

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get3(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/preference/PreferenceCategory;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->pHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;-><init>(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;Landroid/os/Handler;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->mProgressThread:Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$ProgressThread;->start()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/mobilenetworks/kor/NetworkOperators$6;->this$0:Lcom/android/phone/mobilenetworks/kor/NetworkOperators;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/phone/mobilenetworks/kor/NetworkOperators;->-get6(Lcom/android/phone/mobilenetworks/kor/NetworkOperators;)Landroid/os/Handler;

    move-result-object v18

    const-wide/16 v20, 0x0

    const/16 v19, 0x7d3

    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :catch_0
    move-exception v8

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_6
        0x258 -> :sswitch_8
        0x2bc -> :sswitch_9
        0x3e9 -> :sswitch_c
        0x3ea -> :sswitch_d
        0x3eb -> :sswitch_b
        0x3ec -> :sswitch_e
        0x7d0 -> :sswitch_3
        0x7d1 -> :sswitch_4
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_7
        0x7d4 -> :sswitch_a
        0x7d5 -> :sswitch_f
    .end sparse-switch
.end method
