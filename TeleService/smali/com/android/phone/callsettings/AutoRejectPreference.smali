.class public Lcom/android/phone/callsettings/AutoRejectPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectPreference$1;,
        Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    }
.end annotation


# instance fields
.field private actionBar:Landroid/app/ActionBar;

.field private mAutoRejectMaxCount:I

.field private mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

.field mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mBlockCategory:Landroid/preference/PreferenceGroup;

.field private mBlockList:Landroid/preference/PreferenceScreen;

.field private mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

.field public mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

.field private mListIndex:I

.field private mNetworkBlackList:Landroid/preference/PreferenceScreen;

.field private mRejectMsgCategory:Landroid/preference/PreferenceGroup;

.field private mRequestNubmerService:Landroid/preference/SwitchPreference;

.field mStateListener:Lcom/android/phone/ia/IAInterimListener;

.field private mVipModeBlackList:Landroid/preference/PreferenceScreen;

.field private mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

.field private mVipModeWhiteList:Landroid/preference/PreferenceScreen;

.field private prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/callsettings/AutoRejectPreference;)Lcom/android/phone/callsettings/KddiCBarring;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mCBarringKddi:Lcom/android/phone/callsettings/KddiCBarring;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/callsettings/AutoRejectPreference;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/phone/callsettings/AutoRejectPreference;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/callsettings/AutoRejectPreference;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v0, Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$1;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mCBarringListener:Lcom/android/phone/callsettings/CBarringMessageListener;

    return-void
.end method

.method private changeToBlockList()V
    .locals 3

    const v2, 0x7f0d0587

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->actionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d0588

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "feature_jpn"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d0590

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d0591

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d058b

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0d058c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private getAutoRejectMode(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v4, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, p1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {v1, v3}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    const-string/jumbo v2, "autoreject_mode_preference_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "autoreject_mode"

    iput-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    const-string/jumbo v2, "autoreject_mode_enable_sharedpref"

    iput-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const-string/jumbo v2, "dcm_enable_autoreject_mode_option"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "black_list_preference_category"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v2, "autoreject_mode_preference_outgoing_key"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "autoreject_outgoingcall_mode"

    iput-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    const-string/jumbo v2, "autoreject_outgoingcall_mode_enable_sharedpref"

    iput-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIndexFromValue(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0
.end method

.method private getValueFromIndex(I)I
    .locals 2

    const/4 v0, 0x2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AutoRejectPreference"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeAutoRejectDialog()Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->getIndexFromValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0588

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AutoRejectPreference$2;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$2;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    const v4, 0x7f0d0327

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/callsettings/AutoRejectPreference$3;

    invoke-direct {v3, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$3;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    const v4, 0x7f09002c

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private setAutoRejectMode(Ljava/lang/String;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 6

    const/4 v5, 0x1

    const v3, 0x7f0d0577

    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v5, :cond_1

    const v3, 0x7f0d0589

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const v3, 0x7f0d0561

    :cond_0
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    return-void

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    const v3, 0x7f0d058a

    goto :goto_0

    :cond_2
    const v3, 0x7f0d0561

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->registerAirplainModeObserver()V

    iput v5, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->addPreferencesFromResource(I)V

    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "network_black_list_kddi_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mNetworkBlackList:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "request_nubmer_service_kddi_preference"

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "black_list_preference_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    const-string/jumbo v2, "black_list_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    const-string/jumbo v2, "vip_mode_blocked_calls_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    const-string/jumbo v2, "vip_mode_black_list_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    const-string/jumbo v2, "vip_mode_white_list_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "reject_message_preference_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mRejectMsgCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mRejectMsgCategory:Landroid/preference/PreferenceGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mRejectMsgCategory:Landroid/preference/PreferenceGroup;

    const v2, 0x7f0d0546

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    :cond_0
    const-string/jumbo v1, "china_vip_mode"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockList:Landroid/preference/PreferenceScreen;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEasyModeOnCST()Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "support_softphone"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "reject_message_preference_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "network_black_list_kddi_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mNetworkBlackList:Landroid/preference/PreferenceScreen;

    :cond_4
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->prefSet:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "request_nubmer_service_kddi_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mRequestNubmerService:Landroid/preference/SwitchPreference;

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->actionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->actionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->changeToBlockList()V

    return-void

    :cond_7
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    :cond_8
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    :cond_9
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBlockCategory:Landroid/preference/PreferenceGroup;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    iput-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AutoRejectPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Activity for adding calls isn\'t found. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "support_bixby"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v1, "CallBlocking"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logExitState(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-interface {v0}, Lcom/android/phone/ia/IAInterimListener;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v8, v8, v3

    iget-object v8, v8, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    if-ne v8, p2, :cond_1

    :cond_0
    iget v8, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-eq v3, v8, :cond_2

    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/AutoRejectPreference;->showDialog(I)V

    return v9

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "0"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v8, "blockedlogsSpinner"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.app.firewall"

    const-string/jumbo v9, "com.sec.android.app.firewall.TabMainActivity"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/AutoRejectPreference;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v8

    return v8

    :catch_0
    move-exception v2

    const-string/jumbo v8, "AutoRejectPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Activity for adding calls isn\'t found. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "1"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.app.firewall"

    const-string/jumbo v9, "com.sec.android.app.firewall.TabMainActivity"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v8, "AutoRejectPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Activity for adding calls isn\'t found. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v8}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.app.firewall"

    const-string/jumbo v9, "com.sec.android.app.firewall.TabMainActivity"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/AutoRejectPreference;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const-string/jumbo v8, "AutoRejectPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Activity for adding calls isn\'t found. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    const-string/jumbo v1, "dcm_enable_autoreject_mode_option"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlockedCalls:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeBlackList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mVipModeWhiteList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_4
    const-string/jumbo v1, "support_bixby"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/android/phone/ia/AutoRejectPreferenceStateListener;

    invoke-direct {v1, p0}, Lcom/android/phone/ia/AutoRejectPreferenceStateListener;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mStateListener:Lcom/android/phone/ia/IAInterimListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "CallBlocking"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "CallBlocking"

    invoke-static {v1}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_5
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;Ljava/lang/String;)V

    :cond_6
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string/jumbo v2, "CallBlocking"

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->logEnterState(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
