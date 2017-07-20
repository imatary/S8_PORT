.class public Lcom/android/phone/ia/RecordCallsMenuStateListener;
.super Ljava/lang/Object;
.source "RecordCallsMenuStateListener.java"

# interfaces
.implements Lcom/android/phone/ia/IAInterimListener;


# instance fields
.field mFragment:Lcom/android/phone/RecordCallsMenu;


# direct methods
.method public constructor <init>(Lcom/android/phone/RecordCallsMenu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    return-void
.end method

.method private setRecordNoti(ZLjava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    const-string/jumbo v4, "record_calls_notification"

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    const-string/jumbo v4, "record_calls_automatically"

    invoke-static {v3, v4}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v3, "record_calls_notification_on_off"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v3, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v2, "CallRecordings"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-static {v2, p2, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "CallRecordings"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-static {v2, p2, v3, v4}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_0
.end method

.method private setRecordSetting(ZLjava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    const-string/jumbo v3, "record_calls_automatically"

    invoke-static {v2, v3}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eq v2, p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    const-string/jumbo v2, "record_calls_automatically_on_off"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    const-string/jumbo v1, "CallRecordings"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "no"

    invoke-static {v1, p2, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ia/IAConstants;->RESPONSE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "CallRecordings"

    const-string/jumbo v2, "AlreadySet"

    const-string/jumbo v3, "yes"

    invoke-static {v1, p2, v2, v3}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->supportedMenu(I)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

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

    const-string/jumbo v1, "CallRecordings"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public onStateReceived(Lcom/samsung/android/sdk/bixby/data/State;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/data/State;->getParameters()Ljava/util/List;

    move-result-object v3

    const-string/jumbo v7, "RecordCallsMenuStateListener"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onStateReceived, stateId : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/phone/ia/IAUtil;->setIAExecutingState(Lcom/samsung/android/sdk/bixby/data/State;)V

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v7, "NotificationsOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "NotificationsOn"

    invoke-direct {p0, v10, v7}, Lcom/android/phone/ia/RecordCallsMenuStateListener;->setRecordNoti(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v7, "NotificationsOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "NotificationsOff"

    invoke-direct {p0, v11, v7}, Lcom/android/phone/ia/RecordCallsMenuStateListener;->setRecordNoti(ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "CallRecordingsOn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "CallRecordingsOn"

    invoke-direct {p0, v10, v7}, Lcom/android/phone/ia/RecordCallsMenuStateListener;->setRecordSetting(ZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "CallRecordingsOff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "CallRecordingsOff"

    invoke-direct {p0, v11, v7}, Lcom/android/phone/ia/RecordCallsMenuStateListener;->setRecordSetting(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "AutoRecordCalls"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    const-string/jumbo v8, "record_calls_automatically"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v7

    if-nez v7, :cond_4

    const-string/jumbo v7, "record_calls_automatically_on_off"

    invoke-static {v7, v10}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {v2, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    const-string/jumbo v8, "record_calls_automatically"

    invoke-static {v7, v8}, Lcom/android/phone/ia/IAUtil;->getMenuPreference(Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v7, p0, Lcom/android/phone/ia/RecordCallsMenuStateListener;->mFragment:Lcom/android/phone/RecordCallsMenu;

    invoke-virtual {v7, v1}, Lcom/android/phone/RecordCallsMenu;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    sget-object v7, Lcom/android/phone/ia/IAConstants;->RESPONSE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v7}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method
