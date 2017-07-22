.class public Lcom/android/phone/callsettings/MultiNumberSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "MultiNumberSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mMultiNumberHelpPref:Lcom/android/phone/callsettings/UnclickablePreference;

.field private mMultiNumberKeypad:Landroid/preference/SwitchPreference;

.field private mMultiNumberManager:Landroid/preference/PreferenceScreen;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Landroid/widget/LinearLayout;

.field private mTextView:Landroid/widget/TextView;

.field private prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/MultiNumberSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/MultiNumberSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->updateVisibilityPre()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 2

    const-string/jumbo v0, "MultiNumber"

    const-string/jumbo v1, "initLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1001a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitchBar:Landroid/widget/LinearLayout;

    const v0, 0x7f1001a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f1001aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/android/phone/callsettings/MultiNumberSettings$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/MultiNumberSettings$1;-><init>(Lcom/android/phone/callsettings/MultiNumberSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitchBar:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/callsettings/MultiNumberSettings$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/MultiNumberSettings$2;-><init>(Lcom/android/phone/callsettings/MultiNumberSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->updateEnableSwitch()V

    return-void
.end method

.method private initPref()V
    .locals 2

    const-string/jumbo v0, "MultiNumber"

    const-string/jumbo v1, "initPref"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "multi_number_help"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/MultiNumberSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/UnclickablePreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberHelpPref:Lcom/android/phone/callsettings/UnclickablePreference;

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberHelpPref:Lcom/android/phone/callsettings/UnclickablePreference;

    const v1, 0x7f0d0ca8

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/UnclickablePreference;->setTitle(I)V

    const-string/jumbo v0, "sub_dail_pad_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/MultiNumberSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "multi_number_manager_preference"

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/MultiNumberSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberManager:Landroid/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private updateDeleteSubKeypadPre()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_keypad_cmcc_preference"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "MultiNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDeleteSubKeypadPre DPstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v5, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updateEnableSwitch()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_number_enable_cmcc"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "MultiNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEnablere DPstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/MultiNumberSettings;->setSwitchbarChecked(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/MultiNumberSettings;->setSwitchbarChecked(Z)V

    goto :goto_0
.end method

.method private updateVisibilityPre()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "MultiNumber"

    const-string/jumbo v1, "updateVisibilityPre"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberManager:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_number_enable_cmcc"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberManager:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberManager:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string/jumbo v1, "MultiNumber"

    const-string/jumbo v2, "onCreateView "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040090

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070042

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/MultiNumberSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/MultiNumberSettings;->initLayout(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->initPref()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->updateVisibilityPre()V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "MultiNumber"

    const-string/jumbo v1, "onDestroyView "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "MultiNumber"

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "MultiNumber"

    const-string/jumbo v2, "onPreferenceChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberKeypad:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_keypad_cmcc_preference"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    const-string/jumbo v1, "MultiNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set sub_keypad_cmcc_preference:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sub_keypad_cmcc_preference"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "MultiNumber"

    const-string/jumbo v4, "onPreferenceTreeClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mMultiNumberManager:Landroid/preference/PreferenceScreen;

    if-ne p2, v3, :cond_4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v6, :cond_0

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v3, "MultiNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[MultiSIM] onPreferenceTreeClick :: mIsDualSimTurnedOn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/phone/callsettings/CallSettingsTabFragment;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "TabTitleString"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v3, "CallSettingMenu"

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/MultiNumberSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v6

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MultiNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getInsertedSimCard()I

    move-result v3

    if-le v3, v6, :cond_2

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->isSimCardStatusOn(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "CallSettingTab"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_1
    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.SubNumberManager"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/MultiNumberSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "MultiNumber"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActivityNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "CallSettingTab"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "MultiNumber"

    const-string/jumbo v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->updateEnableSwitch()V

    invoke-direct {p0}, Lcom/android/phone/callsettings/MultiNumberSettings;->updateDeleteSubKeypadPre()V

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setSwitchbarChecked(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/MultiNumberSettings;->setTextViewLabel(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setTextViewLabel(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/MultiNumberSettings;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const v0, 0x7f0d0bcf

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0d0bd0

    goto :goto_0
.end method
