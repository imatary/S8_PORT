.class Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallWaitingSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallWaitingSwitchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallWaitingSwitchPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallWaitingSwitchPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallWaitingSwitchPreference;Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;-><init>(Lcom/android/phone/CallWaitingSwitchPreference;)V

    return-void
.end method

.method private checkDSAforCW()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v2}, Lcom/android/phone/CallWaitingSwitchPreference;->-get0(Lcom/android/phone/CallWaitingSwitchPreference;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "SelectSimStatus"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "SimStatus"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getActivatedSimNum()I

    move-result v2

    if-lt v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v2}, Lcom/android/phone/CallWaitingSwitchPreference;->-get0(Lcom/android/phone/CallWaitingSwitchPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "dsa_is_activate"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    if-ne v1, v5, :cond_2

    iget-object v2, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v2}, Lcom/android/phone/CallWaitingSwitchPreference;->-get2(Lcom/android/phone/CallWaitingSwitchPreference;)I

    move-result v2

    if-ne v2, v5, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v2, "CallWaitingSwitchPreference"

    const-string/jumbo v3, "DSA_IS_ACTIVATE"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v2, v4}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    if-ne v1, v6, :cond_3

    iget-object v2, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v2}, Lcom/android/phone/CallWaitingSwitchPreference;->-get2(Lcom/android/phone/CallWaitingSwitchPreference;)I

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    if-nez v1, :cond_1

    goto :goto_0
.end method

.method private handleGetCallWaitingResponse(Landroid/os/Message;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-interface {v4, v7, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    :cond_0
    :goto_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "CallWaitingSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleGetCallWaitingResponse: ar.exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v4, "feature_kdi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->IMS_404_NOT_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v4, v7, :cond_3

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eq v4, v5, :cond_3

    const-string/jumbo v4, "CallWaitingSwitchPreference"

    const-string/jumbo v7, "Do not show IMS_404_NOT_FOUND message"

    invoke-static {v4, v7, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-interface {v4, v7, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v5, v7, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get3(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    const/16 v7, 0x190

    invoke-interface {v4, v5, v7}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    :cond_5
    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallWaitingSwitchPreference;->setEnabled(Z)V

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "CallWaitingSwitchPreference"

    const-string/jumbo v7, "handleGetCallWaitingResponse: CW state successfully queried."

    invoke-static {v4, v7, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    const/4 v4, 0x0

    aget v4, v1, v4

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    aget v4, v1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/phone/CallWaitingSwitchPreference;->setChecked(Z)V

    const/4 v4, 0x0

    aget v4, v1, v4

    if-ne v4, v5, :cond_8

    const/4 v4, 0x1

    aget v4, v1, v4

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_8

    const/4 v3, 0x1

    :goto_4
    const-string/jumbo v4, "CallWaitingSwitchPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isChecked = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v4, v7, v8}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v4, "feature_multisim"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v4}, Lcom/android/phone/CallWaitingSwitchPreference;->-get2(Lcom/android/phone/CallWaitingSwitchPreference;)I

    move-result v4

    if-ne v4, v5, :cond_a

    const-string/jumbo v4, "volte_call_waiting_slot2"

    if-eqz v3, :cond_9

    :goto_5
    invoke-static {v4, v5}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v4, "CallWaitingSwitchPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetCallWaitingResponse: improper result: err ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_7
    move v4, v6

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    move v5, v6

    goto :goto_5

    :cond_a
    :try_start_1
    const-string/jumbo v7, "volte_call_waiting"

    if-eqz v3, :cond_b

    move v4, v5

    :goto_6
    invoke-static {v7, v4}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :cond_b
    move v4, v6

    goto :goto_6
.end method

.method private handleSetCallWaitingResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CallWaitingSwitchPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCallWaitingResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    const-string/jumbo v1, "CallWaitingSwitchPreference"

    const-string/jumbo v2, "handleSetCallWaitingResponse: re get"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->this$0:Lcom/android/phone/CallWaitingSwitchPreference;

    invoke-static {v1}, Lcom/android/phone/CallWaitingSwitchPreference;->-get1(Lcom/android/phone/CallWaitingSwitchPreference;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4, v2}, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->handleGetCallWaitingResponse(Landroid/os/Message;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->checkDSAforCW()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallWaitingSwitchPreference$MyHandler;->handleSetCallWaitingResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
