.class Lcom/android/phone/CallForwardEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "CallForwardEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallForwardEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallForwardEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CallForwardEditPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CallForwardEditPreference;Lcom/android/phone/CallForwardEditPreference$MyHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;-><init>(Lcom/android/phone/CallForwardEditPreference;)V

    return-void
.end method

.method private handleGetCFResponse(Landroid/os/Message;)V
    .locals 11

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse: done"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v8, "CallForwardEditPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCFResponse: TeleServiceFeature.UI.DISABLE_POPUPMSG_WHEN_DEACTIVATIONCF = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "disable_popupmsg_when_deactivationcf"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get10(Lcom/android/phone/CallForwardEditPreference;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    :cond_0
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    if-eqz v8, :cond_2

    const-string/jumbo v8, "CallForwardEditPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mCFU = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v10}, Lcom/android/phone/CallForwardEditPreference;->-get4(Lcom/android/phone/CallForwardEditPreference;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get4(Lcom/android/phone/CallForwardEditPreference;)Z

    move-result v8

    if-nez v8, :cond_1

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    :cond_1
    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v8, :cond_4

    const-string/jumbo v8, "CallForwardEditPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleGetCFResponse: ar.exception="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v9, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v8, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v9, v10, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    const-string/jumbo v8, "feature_sbm"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get4(Lcom/android/phone/CallForwardEditPreference;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->-set0(Lcom/android/phone/CallForwardEditPreference;Z)Z

    :cond_2
    :goto_1
    const-string/jumbo v8, "feature_kdi"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-wrap0(Lcom/android/phone/CallForwardEditPreference;)V

    :goto_2
    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    :cond_4
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v8, v8, Ljava/lang/Throwable;

    if-eqz v8, :cond_5

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "userObj is Throwable instance !!"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :try_start_0
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v10, 0x190

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    array-length v8, v2

    if-nez v8, :cond_6

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse: cfInfoArray.length==0"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v8, v8, Lcom/android/phone/CallForwardEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v9, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/16 v10, 0x190

    invoke-interface {v8, v9, v10}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse: IllegalStateException Can not perform this action after onSaveInstanceState"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_3

    :cond_6
    const-string/jumbo v8, "feature_sbm"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get12(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse. SERVICE_CLASS_NONE."

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->-set3(Lcom/android/phone/CallForwardEditPreference;I)I

    :cond_7
    :goto_4
    const/4 v4, 0x0

    array-length v6, v2

    :goto_5
    if-ge v4, v6, :cond_2

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse, cfInfoArray["

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "mServiceClass = "

    iget-object v10, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v10}, Lcom/android/phone/CallForwardEditPreference;->-get12(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get12(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v8

    aget-object v9, v2, v4

    iget v9, v9, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_9

    aget-object v5, v2, v4

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->-set7(Lcom/android/phone/CallForwardEditPreference;Z)Z

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get10(Lcom/android/phone/CallForwardEditPreference;)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8, v5, p1}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    :cond_8
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->-set7(Lcom/android/phone/CallForwardEditPreference;Z)Z

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse: check condition for popup display"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v8, p1, Landroid/os/Message;->arg2:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_9

    iget v8, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const-string/jumbo v8, "disable_popupmsg_when_deactivationcf"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_9
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_a
    const-string/jumbo v8, "volte_cmcc_cfu_time"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v8

    if-eqz v8, :cond_7

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get17(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-get14(Lcom/android/phone/CallForwardEditPreference;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x6

    iput v9, v8, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/CallForwardEditPreference;->-get3()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/CallForwardEditPreference;->-get2()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/CallForwardEditPreference;->-get1()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/CallForwardEditPreference;->-get0()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->-set6(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/phone/CallForwardEditPreference;->-set4(Lcom/android/phone/CallForwardEditPreference;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_4

    :cond_b
    const-string/jumbo v8, "feature_can"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_0

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d032b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_7
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d0334

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d032d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :try_start_1
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v3

    const-string/jumbo v8, "CallForwardEditPreference"

    const-string/jumbo v9, "handleGetCFResponse: is your activity running?"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_6

    :pswitch_0
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d031d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_7

    :pswitch_1
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0325

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_7

    :cond_c
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v8, v8, Lcom/android/phone/CallForwardEditPreference;->reason:I

    packed-switch v8, :pswitch_data_1

    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d032a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_7

    :pswitch_2
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d031c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_7

    :pswitch_3
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v8}, Lcom/android/phone/CallForwardEditPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f0d0324

    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_7

    :cond_d
    iget-object v8, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v8}, Lcom/android/phone/CallForwardEditPreference;->-wrap1(Lcom/android/phone/CallForwardEditPreference;)V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private handleReGetCFResponse(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    const-string/jumbo v1, "CallForwardEditPreference"

    const-string/jumbo v2, "handleReGetCFResponse : re-get"

    invoke-static {v1, v2, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string/jumbo v1, "support_additional_ss_query"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSINSIM()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/TelephonyConfig;->isSINSIM(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->-get12(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v4, v6, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v8, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v1, v7}, Lcom/android/phone/CallForwardEditPreference;->-set3(Lcom/android/phone/CallForwardEditPreference;I)I

    const-string/jumbo v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleReGetCFResponse. mServiceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->-get12(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget-object v3, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v3}, Lcom/android/phone/CallForwardEditPreference;->-get12(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v4, v6, v5}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v2, v8, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v1, v1, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v1, v6}, Lcom/android/phone/CallForwardEditPreference;->-set1(Lcom/android/phone/CallForwardEditPreference;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget-object v1, v1, Lcom/android/phone/CallForwardEditPreference;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v2, v2, Lcom/android/phone/CallForwardEditPreference;->reason:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v7, v3, v6, v4}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "CallForwardEditPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSetCFResponse: ar.exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    const-string/jumbo v1, "CallForwardEditPreference"

    const-string/jumbo v2, "sendMessageDelayed to re-get"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public checkDSAforCF()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->-get6(Lcom/android/phone/CallForwardEditPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "SelectSimStatus"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "SimStatus"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v0

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->-get6(Lcom/android/phone/CallForwardEditPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "dsa_is_activate"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    if-ne v3, v7, :cond_3

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->-get13(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    :goto_0
    if-ne v0, v8, :cond_2

    if-ne v1, v8, :cond_2

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "CallForwardEditPreference"

    const-string/jumbo v5, "DSA_IS_ACTIVATE"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    iget v4, v4, Lcom/android/phone/CallForwardEditPreference;->reason:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/CallForwardEditPreference$MyHandler;->this$0:Lcom/android/phone/CallForwardEditPreference;

    invoke-static {v4}, Lcom/android/phone/CallForwardEditPreference;->-get13(Lcom/android/phone/CallForwardEditPreference;)I

    move-result v4

    if-eq v4, v7, :cond_0

    :cond_4
    if-nez v3, :cond_2

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleGetCFResponse(Landroid/os/Message;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->checkDSAforCF()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallForwardEditPreference$MyHandler;->handleReGetCFResponse(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
