.class public Lcom/android/phone/PreferredNetworkDetailView;
.super Landroid/preference/PreferenceActivity;
.source "PreferredNetworkDetailView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferredNetworkDetailView$1;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static sSimId:I


# instance fields
.field private actionType:I

.field final app:Lcom/android/phone/PhoneGlobals;

.field editDialog:Landroid/widget/EditText;

.field private isNewItem:Z

.field mEUtranAct:Landroid/preference/CheckBoxPreference;

.field mGsmAct:Landroid/preference/CheckBoxPreference;

.field mGsmCompactAct:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field mNetworkId:Landroid/preference/Preference;

.field mNetworkIndex:Landroid/preference/Preference;

.field mNetworkName:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUtranAct:Landroid/preference/CheckBoxPreference;

.field private oldId:Ljava/lang/String;

.field private oldIndex:I

.field private oldName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/PreferredNetworkDetailView;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "PreferredNetworksDetailView"

    sput-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->isNewItem:Z

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneGlobals;

    new-instance v0, Lcom/android/phone/PreferredNetworkDetailView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworkDetailView$1;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private loadIndex()I
    .locals 6

    const/4 v5, -0x1

    sget-object v1, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "loadIndex"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pref.getInt(\"index\"+ sSimId, -1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "index"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    return v5
.end method

.method private onCreateMultiSim()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "sim_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "sim_id"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PreferredNetworkDetailView"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mActivePhone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsMultiSIM;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v0

    sget-object v2, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dataPreferSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    sput v5, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    goto :goto_0

    :cond_2
    if-ne v0, v6, :cond_0

    sput v6, Lcom/android/phone/PreferredNetworkDetailView;->sSimId:I

    goto :goto_0
.end method

.method private savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10

    sget-object v1, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePreferredNetworkInfo Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "PLMN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "GSM ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "GSM Compact ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Utran ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public makeCursorPosition()V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "config_hide_status_bar"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0400aa

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string/jumbo v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/phone/PreferredNetworkDetailView;->onCreateMultiSim()V

    :goto_0
    const-string/jumbo v2, "network_index"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    const-string/jumbo v2, "network_name"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    const-string/jumbo v2, "network_id"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    const-string/jumbo v2, "gsm_act"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "gsm_compact_act"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "utran_act"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v2, "eutran_act"

    invoke-virtual {p0, v2}, Lcom/android/phone/PreferredNetworkDetailView;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$2;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$2;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$3;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$3;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$4;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$4;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$5;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$5;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$6;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$6;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$7;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$7;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v3, Lcom/android/phone/PreferredNetworkDetailView$8;

    invoke-direct {v3, p0}, Lcom/android/phone/PreferredNetworkDetailView$8;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "new_item"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->isNewItem:Z

    const-string/jumbo v2, "type_action"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    const-string/jumbo v2, "index"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    sget-object v2, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oldIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    if-ne v2, v7, :cond_1

    invoke-direct {p0}, Lcom/android/phone/PreferredNetworkDetailView;->loadIndex()I

    move-result v2

    iput v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    :cond_1
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    :cond_2
    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    :cond_3
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    iget v3, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "act_gsm"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_7

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_1
    const-string/jumbo v2, "act_gsm_compact"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_2
    const-string/jumbo v2, "act_utran"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_3
    const-string/jumbo v2, "act_utran"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :goto_4
    const-string/jumbo v2, "network_mode_list_lte"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_4
    const-string/jumbo v2, "config_hide_status_bar"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->setHideLandscapeIndicatorBar(Landroid/app/Activity;)V

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneGlobals;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_4
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    const v7, 0x7f0d0394

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v5, 0x7f0400ac

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v5, 0x7f100214

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0d084b

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$9;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$9;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0d084c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$10;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$10;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v7, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$11;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$11;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const v5, 0x7f0d084d

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/android/phone/PreferredNetworkDetailView$12;

    invoke-direct {v5, p0}, Lcom/android/phone/PreferredNetworkDetailView$12;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    iget-boolean v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->isNewItem:Z

    if-nez v0, :cond_0

    const v0, 0x7f0d069f

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworkDetailView;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02009b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f0d047e

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworkDetailView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const v0, 0x7f0d0859

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworkDetailView;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020008

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12

    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v10

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    return v9

    :sswitch_1
    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "MENU_DELETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v9

    :goto_0
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v9

    :goto_1
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v9

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d085e

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    return v9

    :cond_0
    move v4, v10

    goto :goto_0

    :cond_1
    move v5, v10

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v6, v11

    goto :goto_2

    :cond_3
    move v6, v10

    goto :goto_2

    :sswitch_2
    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "MENU_SAVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "action type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0858

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_3
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v0, 0x5

    if-lt v8, v0, :cond_5

    const/4 v0, 0x6

    if-le v8, v0, :cond_6

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d085f

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    if-eq v0, v9, :cond_7

    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v4, v9

    :goto_4
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v5, v9

    :goto_5
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v6, v9

    :goto_6
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    :cond_7
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    move v4, v9

    :goto_7
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    move v5, v9

    :goto_8
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    move v6, v9

    :goto_9
    iget v7, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d085d

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v9

    :cond_8
    move v4, v10

    goto :goto_4

    :cond_9
    move v5, v10

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v6, v11

    goto :goto_6

    :cond_b
    move v6, v10

    goto :goto_6

    :cond_c
    move v4, v10

    goto :goto_7

    :cond_d
    move v5, v10

    goto :goto_8

    :cond_e
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mEUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_f

    move v6, v11

    goto :goto_9

    :cond_f
    move v6, v10

    goto :goto_9

    :sswitch_3
    sget-object v0, Lcom/android/phone/PreferredNetworkDetailView;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "MENU_DISCARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworkDetailView;->finish()V

    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method
