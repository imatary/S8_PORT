.class public Lcom/android/phone/RecordCallsMenu;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RecordCallsMenu.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RecordCallsMenu$EmptyView;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mRecordNotification:Landroid/preference/SwitchPreference;

.field private mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsMenu;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->prefSet:Landroid/preference/PreferenceScreen;

    const v0, 0x7f0d01f1

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsMenu;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0238

    invoke-virtual {p0, v1}, Lcom/android/phone/RecordCallsMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "record_calls_automatically"

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SemSwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SemSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v0, "record_calls_notification"

    invoke-virtual {p0, v0}, Lcom/android/phone/RecordCallsMenu;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->updateRecordSetting()V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->actionBar:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->actionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallRecordings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    iget-object v1, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    if-ne p1, v1, :cond_2

    const-string/jumbo v1, "RecordCallsMenu"

    const-string/jumbo v2, "mRecordSetting clicked"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d01f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d023b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "record_calls_automatically_on_off"

    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    const-string/jumbo v1, "record_calls_automatically_on_off"

    invoke-static {v1, v0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->updateRecordSetting()V

    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "RecordCallsMenu"

    const-string/jumbo v2, "mRecordNotification clicked"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    const-string/jumbo v1, "record_calls_notification_on_off"

    invoke-static {v1, v0}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "record_calls_notification_on_off"

    int-to-long v4, v0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/phone/utils/SALogging;->sendSAEventSettingLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->updateRecordSetting()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/phone/ia/RecordCallsMenuStateListener;

    invoke-direct {v0, p0}, Lcom/android/phone/ia/RecordCallsMenuStateListener;-><init>(Lcom/android/phone/RecordCallsMenu;)V

    iput-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/android/phone/RecordCallsMenu;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "CallRecordings"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CallRecordings"

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallRecordings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/phone/RecordCallsMenu;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v0, Lcom/android/phone/RecordCallsMenu$EmptyView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/RecordCallsMenu$EmptyView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void
.end method

.method public updateRecordSetting()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "record_calls_automatically_on_off"

    invoke-static {v0, v3}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    const v1, 0x7f0d0c15

    invoke-virtual {v0, v1}, Landroid/preference/SemSwitchPreferenceScreen;->setSummary(I)V

    :cond_1
    const-string/jumbo v0, "record_calls_notification_on_off"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordSetting:Landroid/preference/SemSwitchPreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/RecordCallsMenu;->mRecordNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method
