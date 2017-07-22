.class public Lcom/android/phone/GsmUmtsVideoCallForwardOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsVideoCallForwardOptions.java"


# static fields
.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static mSimId:I


# instance fields
.field private final DBG:Z

.field private disableScreen:Z

.field private mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

.field private mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

.field private mFirstResume:Z

.field private mHotSwapFilter:Landroid/content/IntentFilter;

.field private mHotSwapReceiver:Landroid/content/BroadcastReceiver;

.field private mIcicle:Landroid/os/Bundle;

.field private mInitIndex:I

.field private mIsHotSwapRegister:Z

.field private mIsLaunchFromWidget:Z

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/CallForwardEditPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    sput v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->DBG:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsHotSwapRegister:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    return-void
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GsmUmtsVideoCallForwardOptions"

    const-string/jumbo v1, "Fragment finished. We ignore it."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallForwardEditPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const v9, 0x7f0d04fb

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string/jumbo v4, "enable_ss_settings_vowifi_regi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    :cond_2
    const-string/jumbo v4, "support_softphone"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableSoftphone(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-boolean v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    :cond_3
    const v4, 0x7f070066

    invoke-virtual {p0, v4}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v4, "button_vcfu_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    const-string/jumbo v4, "button_vcfb_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    const-string/jumbo v4, "button_vcfnry_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    const-string/jumbo v4, "button_vcfnrc_key"

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallForwardEditPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->onCreateMultiSIM(Landroid/preference/PreferenceScreen;)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    iget v7, v7, Lcom/android/phone/CallForwardEditPreference;->reason:I

    invoke-virtual {v4, p0, v7, v6}, Lcom/android/phone/CallForwardEditPreference;->setParentFragment(Landroid/app/Fragment;IZ)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    iput-object p1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "FROMWIDGET"

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const-string/jumbo v4, "show_callforward_allcalls_string"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v9}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    const-string/jumbo v7, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v4, Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;

    invoke-direct {v4, p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions$1;-><init>(Lcom/android/phone/GsmUmtsVideoCallForwardOptions;)V

    iput-object v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v7, v8}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsHotSwapRegister:Z

    const-string/jumbo v4, "show_callforward_allcalls_string"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_5
    iget-boolean v4, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_0
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->registerAirplainModeObserver()V

    return-void

    :cond_6
    move v4, v6

    goto :goto_0
.end method

.method public onCreateMultiSIM(Landroid/preference/PreferenceScreen;)V
    .locals 9

    const/4 v6, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string/jumbo v5, "feature_multisim"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v1

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsMultiSIM;->getSimState(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v5, "fragment_title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    if-ne v1, v6, :cond_4

    if-ne v2, v6, :cond_4

    const-string/jumbo v5, "GsmUmtsVideoCallForwardOptions"

    const-string/jumbo v6, "multisim DUAL SIM"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    const-string/jumbo v5, "CallSettingTab"

    invoke-virtual {v0, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    :cond_2
    :goto_0
    sget v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v3, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    const-string/jumbo v5, "enable_ss_settings_vowifi_regi"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_3
    iput-boolean v8, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    :goto_1
    return-void

    :cond_4
    if-ne v2, v6, :cond_5

    const-string/jumbo v5, "GsmUmtsVideoCallForwardOptions"

    const-string/jumbo v6, "multisim SIM2 Only"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v7, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    goto :goto_0

    :cond_5
    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    const-string/jumbo v5, "GsmUmtsVideoCallForwardOptions"

    const-string/jumbo v6, "multisim SIM2 PIN Unlock"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v7, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    goto :goto_0

    :cond_6
    if-ne v1, v6, :cond_7

    const-string/jumbo v5, "GsmUmtsVideoCallForwardOptions"

    const-string/jumbo v6, "multisim SIM1 Only"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v8, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "feature_ctc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    sput v7, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    goto :goto_0

    :cond_8
    iput-boolean v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsHotSwapRegister:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mHotSwapReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsHotSwapRegister:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "GsmUmtsVideoCallForwardOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsForeground:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    return-void

    :cond_3
    iget v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    sget v2, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v1, p0, v3, v2}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIsLaunchFromWidget:Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FROMWIDGET"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "FROMWIDGET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.callsettings.CallTypeSelectForForwarding"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->finish()V

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    const v1, 0x7f0d01ff

    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFU:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0264

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFB:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0265

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0266

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0d0267

    invoke-virtual {p0, v1}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    const v5, 0x7f0d01ff

    invoke-virtual {p0, v5}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/utils/SALogging;->sendSAViewFlowLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailableVoLTE()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsCommon;->isTWAPT(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    if-eqz v5, :cond_0

    const-string/jumbo v5, "GsmUmtsVideoCallForwardOptions"

    const-string/jumbo v6, "Under VoLTE, cfnrc removed for TW APT operator"

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iput-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/CallForwardEditPreference;

    :cond_0
    iget-boolean v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CallForwardEditPreference;

    sget v6, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    invoke-virtual {v5, p0, v8, v6}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    :cond_1
    iput-boolean v8, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mFirstResume:Z

    iput-object v7, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    :cond_2
    const-string/jumbo v5, "support_bixby"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingState()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "ShowVideoCallForwarding"

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->getIAExecutingStateId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/phone/ia/IAUtil;->isIAExecutingLastState()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "ShowVideoCallForwarding"

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->requestNLG(Ljava/lang/String;)V

    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v5}, Lcom/android/phone/ia/IAUtil;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_4
    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    iput v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mInitIndex:I

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CallForwardEditPreference;

    iget-object v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {v2}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v5, "toggle"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v2, v5}, Lcom/android/phone/CallForwardEditPreference;->setToggled(Z)Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    const-string/jumbo v5, "number"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    const-string/jumbo v5, "status"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v2, v1, v7}, Lcom/android/phone/CallForwardEditPreference;->handleCallForwardResult(Lcom/android/internal/telephony/CallForwardInfo;Landroid/os/Message;)V

    sget v5, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mSimId:I

    const/4 v6, 0x1

    invoke-virtual {v2, p0, v6, v5}, Lcom/android/phone/CallForwardEditPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    iget-boolean v5, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->disableScreen:Z

    if-eqz v5, :cond_6

    invoke-virtual {v2, v8}, Lcom/android/phone/CallForwardEditPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/phone/GsmUmtsVideoCallForwardOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CallForwardEditPreference;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "toggle"

    invoke-virtual {v1}, Lcom/android/phone/CallForwardEditPreference;->isToggled()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "number"

    iget-object v4, v1, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    iget-object v4, v1, Lcom/android/phone/CallForwardEditPreference;->callForwardInfo:Lcom/android/internal/telephony/CallForwardInfo;

    iget v4, v4, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/phone/CallForwardEditPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
