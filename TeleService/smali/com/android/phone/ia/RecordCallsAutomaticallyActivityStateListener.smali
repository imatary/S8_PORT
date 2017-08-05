.class public Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;
.super Ljava/lang/Object;
.source "RecordCallsAutomaticallyActivityStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecordCallsAutomaticallyActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    return-void
.end method

.method public onParamFillingReceived(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRuleCanceled(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->cancelIAExecutingState(Ljava/lang/String;)V

    return-void
.end method

.method public onScreenStatesRequested()Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    const-string/jumbo v1, "AutoRecordCalls"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const-string/jumbo v7, "RecordCallsAutomaticallyActivityStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateReceived, stateId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "RecordAllNumbers"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v7, v11}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->selectRecordType(I)I

    move-result v4

    if-ne v4, v10, :cond_4

    const-string/jumbo v7, "AutoRecordCalls"

    const-string/jumbo v8, "UnsavedNumbers"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v7, "RecordSelectNumbers"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v7, v10}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->selectRecordType(I)I

    move-result v4

    if-ne v4, v10, :cond_5

    const-string/jumbo v7, "AutoRecordCalls"

    const-string/jumbo v8, "SelectedNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "RecordUnsavedNumbers"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->selectRecordType(I)I

    move-result v4

    if-ne v4, v10, :cond_6

    const-string/jumbo v7, "AutoRecordCalls"

    const-string/jumbo v8, "SelectedNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "no"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "ManageRecordingNumbers"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v7}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "record_calls_automatically_on_off"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v7}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "record_calls_automatically_type"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "RecordCallsAutomaticallyActivityStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "autorecord : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v6, v10, :cond_3

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v7, v10}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->selectRecordType(I)I

    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.android.phone"

    const-string/jumbo v8, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, ":android:show_fragment"

    const-class v8, Lcom/android/phone/RecordCallsAutomaticallyList;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, ":android:no_headers"

    invoke-virtual {v1, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsAutomaticallyActivityStateListener;->mFragment:Lcom/android/phone/RecordCallsAutomaticallyActivity;

    invoke-virtual {v7, v1}, Lcom/android/phone/RecordCallsAutomaticallyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "RecordCallsAutomaticallyActivityStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ActivityNotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v7, "AutoRecordCalls"

    const-string/jumbo v8, "UnsavedNumbers"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v7, "AutoRecordCalls"

    const-string/jumbo v8, "SelectedNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "AutoRecordCalls"

    const-string/jumbo v8, "SelectedNumber"

    const-string/jumbo v9, "AlreadySet"

    const-string/jumbo v10, "yes"

    invoke-static {v7, v8, v9, v10}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0

    :cond_7
    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto/16 :goto_0
.end method
