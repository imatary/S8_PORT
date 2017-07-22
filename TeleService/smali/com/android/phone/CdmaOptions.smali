.class public Lcom/android/phone/CdmaOptions;
.super Ljava/lang/Object;
.source "CdmaOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaOptions$MyHandler;
    }
.end annotation


# static fields
.field private static index:I


# instance fields
.field private check:I

.field private mButtonAPNExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

.field private mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

.field private mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

.field private mCheckDun:Landroid/preference/CheckBoxPreference;

.field private mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

.field private mHomeSystemId:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrefActivity:Landroid/preference/PreferenceActivity;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mPrlPreferredOnly:I

.field private mXmlResId:I


# direct methods
.method static synthetic -get0(Lcom/android/phone/CdmaOptions;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CdmaOptions;->mHomeSystemId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/phone/CdmaOptions;)Landroid/preference/PreferenceActivity;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/CdmaOptions;)I
    .locals 1

    iget v0, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/phone/CdmaOptions;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CdmaOptions;->mHomeSystemId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/phone/CdmaOptions;I)I
    .locals 0

    iput p1, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/CdmaOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->checkPrlPreferredOnly()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CdmaOptions;->index:I

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceActivity;Landroid/preference/PreferenceScreen;Lcom/android/internal/telephony/Phone;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/phone/CdmaOptions;->check:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    iput v1, p0, Lcom/android/phone/CdmaOptions;->mHomeSystemId:I

    iput-object p1, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iput-object p2, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->create()V

    return-void
.end method

.method private checkPrlPreferredOnly()V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/CdmaOptions;->mPrlPreferredOnly:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f0900f5

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntryValues(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntries(I)V

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    const v1, 0x7f0900f4

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEntryValues(I)V

    goto :goto_0
.end method

.method public static deviceSupportsNvAndRuim()Z
    .locals 9

    const/4 v4, 0x0

    const-string/jumbo v5, "ril.subscription.types"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deviceSupportsnvAnRum: prop="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v2, v6, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v8, "NV"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v8, "RUIM"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deviceSupportsnvAnRum: nvSupported="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ruimSupported="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "CdmaOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryCdmaRoamingPreference()V
    .locals 3

    new-instance v0, Lcom/android/phone/CdmaOptions$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaOptions$MyHandler;-><init>(Lcom/android/phone/CdmaOptions;Lcom/android/phone/CdmaOptions$MyHandler;)V

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mHandler:Lcom/android/phone/CdmaOptions$MyHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaOptions$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->checkPrlPreferredOnly()V

    return-void
.end method

.method private updateDun()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "button_dun_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaOptions;->mCheckDun:Landroid/preference/CheckBoxPreference;

    const-string/jumbo v0, "support_cdma_dun"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "dun_init_check"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    const-string/jumbo v0, "trueFalse"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mCheckDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "trueFalse"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateOperatorSelectionExpand()V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v2, "button_carrier_sel_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getOperatorSelectionExpandEnabled(Ljava/lang/Object;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonOperatorSelectionExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected create()V
    .locals 8

    const/4 v7, 0x1

    const v5, 0x7f070024

    iput v5, p0, Lcom/android/phone/CdmaOptions;->mXmlResId:I

    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    iget v6, p0, Lcom/android/phone/CdmaOptions;->mXmlResId:I

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v6, "button_apn_key_cdma"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/phone/PhoneGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v5, "remove_cdma_options_apn_cdma"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonAPNExpand:Landroid/preference/PreferenceScreen;

    new-instance v6, Lcom/android/phone/CdmaOptions$1;

    invoke-direct {v6, p0}, Lcom/android/phone/CdmaOptions$1;-><init>(Lcom/android/phone/CdmaOptions;)V

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_1
    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v6, "cdma_system_select_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CdmaSystemSelectListPreference;

    iput-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v6, "cdma_subscription_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/phone/CdmaSubscriptionListPreference;

    iput-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    const-string/jumbo v5, "system_selection_automatic_ab_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->queryCdmaRoamingPreference()V

    :goto_0
    const-string/jumbo v5, "cdma_subscription_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/phone/CdmaOptions;->deviceSupportsNvAndRuim()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "Both NV and Ruim supported, ENABLE subscription type selection"

    invoke-static {v5}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v5, v7}, Lcom/android/phone/CdmaSubscriptionListPreference;->setEnabled(Z)V

    :goto_1
    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v5}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112005c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_7

    const-string/jumbo v5, "support_softphone"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    :goto_2
    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v7, :cond_8

    const/4 v2, 0x1

    :goto_3
    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    :cond_2
    const-string/jumbo v5, "carrier_settings_enable_bool"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v5, "carrier_settings_enable"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_3
    const-string/jumbo v5, "remove_cdma_options_carrier_sel"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->updateOperatorSelectionExpand()V

    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaOptions;->updateDun()V

    invoke-static {}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->getInstance()Lcom/android/phone/mobilenetworks/MobileNetworksManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/CdmaOptions;->mPrefScreen:Landroid/preference/PreferenceScreen;

    iget v7, p0, Lcom/android/phone/CdmaOptions;->mXmlResId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/phone/mobilenetworks/MobileNetworksManager;->removePreferences(Landroid/preference/PreferenceScreen;I)V

    return-void

    :cond_5
    iget-object v5, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v5, v7}, Lcom/android/phone/CdmaSystemSelectListPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "Both NV and Ruim NOT supported, REMOVE subscription type selection"

    invoke-static {v5}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public preferenceTreeClick(Landroid/preference/Preference;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cdma_system_select_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "preferenceTreeClick: return BUTTON_CDMA_ROAMING_KEY true"

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "cdma_subscription_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "preferenceTreeClick: return CDMA_SUBSCRIPTION_KEY true"

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "button_carrier_sel_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "feature_ctc"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/phone/mobilenetworks/PhoneOptionUtils;->getIrNetworkSettingIntent(Ljava/lang/Object;Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaOptions;->mPrefActivity:Landroid/preference/PreferenceActivity;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ActivityNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return v5
.end method

.method public showDialog(Landroid/preference/Preference;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cdma_system_select_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSystemSelect:Lcom/android/phone/CdmaSystemSelectListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSystemSelectListPreference;->showDialog(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "cdma_subscription_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaSubscription:Lcom/android/phone/CdmaSubscriptionListPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaSubscriptionListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
