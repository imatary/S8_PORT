.class public Lcom/android/phone/AutoCSPView;
.super Landroid/preference/PreferenceActivity;
.source "AutoCSPView.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isZVVModel:Z

.field private mAutocspSettings:Landroid/preference/PreferenceScreen;

.field private mCarrierMatchAutoCSPDialog:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

.field private mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mEditTextAutoCSP:Landroid/preference/EditTextPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const-string/jumbo v0, "ZVV"

    invoke-static {}, Lcom/android/phone/TeleServiceFeature;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/AutoCSPView;->isZVVModel:Z

    return-void
.end method

.method private isSmartCSPEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "feature_multisim_carrier_match"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "carrier_match_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "carrier_match_smartcsp"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/phone/AutoCSPView;->mContext:Landroid/content/Context;

    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/android/phone/AutoCSPView;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/AutoCSPView;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "autocsp_settings_list"

    invoke-virtual {p0, v1}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v1, "feature_multisim_carrier_match"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    invoke-direct {v1}, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;-><init>()V

    iput-object v1, p0, Lcom/android/phone/AutoCSPView;->mCarrierMatchAutoCSPDialog:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    :cond_1
    const-string/jumbo v1, "ltn_auto_csp"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "chk_autocsp_check"

    invoke-virtual {p0, v1}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v1, "txt_autocsp_code"

    invoke-virtual {p0, v1}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v1, "feature_multisim_carrier_match"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/phone/AutoCSPView;->isSmartCSPEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/AutoCSPView;->mCarrierMatchAutoCSPDialog:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/AutoCSPView;->mCarrierMatchAutoCSPDialog:Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "carrier_match_autocsp_dialog_tag"

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/CarrierMatchAutoCSPDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.android.phone.CallFeaturesSetting.CONFIGURE_AUTOCSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/android/phone/AutoCSPView;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    :cond_3
    return-void

    :cond_4
    iput-object v2, p0, Lcom/android/phone/AutoCSPView;->mAutocspSettings:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "data_operator_code"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const v1, 0x7f0d0a81

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v4

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "autocsp_enabled"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :try_start_0
    iget-boolean v3, p0, Lcom/android/phone/AutoCSPView;->isZVVModel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "data_operator_code"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/16 v3, 0x64

    if-ge v0, v3, :cond_0

    const-string/jumbo v3, "txt_autocsp_code"

    invoke-virtual {p0, v3}, Lcom/android/phone/AutoCSPView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    iput-object v3, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "AutoCSPView"

    const-string/jumbo v4, "to get (Secure.AUTOCSP_ENABLED or Secure.AUTOCSP_OPERATOR_CODE) failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "autocsp_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    return v5
.end method

.method protected onResume()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const-string/jumbo v5, "ltn_auto_csp"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/phone/AutoCSPView;->isZVVModel:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "autocsp_enabled"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "data_operator_code"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-ne v1, v8, :cond_2

    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_0
    if-ltz v0, :cond_0

    const/16 v5, 0x64

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string/jumbo v5, "feature_multisim_carrier_match"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/phone/AutoCSPView;->isSmartCSPEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "AutoCSPView"

    const-string/jumbo v6, "to get (Secure.AUTOCSP_ENABLED or Secure.AUTOCSP_OPERATOR_CODE) failed"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/AutoCSPView;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "carrier_match_autocsp_dialog_tag"

    invoke-virtual {v5, v6}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v2, v4

    check-cast v2, Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    :cond_4
    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mCheckBoxAutoCSP:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/android/phone/AutoCSPView;->mEditTextAutoCSP:Landroid/preference/EditTextPreference;

    invoke-virtual {v5, v8}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
