.class public Lcom/android/phone/settings/PhoneAccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mAccountList:Landroid/preference/PreferenceCategory;

.field private mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

.field private mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

.field private mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUseSipCalling:Landroid/preference/ListPreference;


# direct methods
.method static synthetic -get0(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)Landroid/telephony/SubscriptionManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private static buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-object v4

    :cond_1
    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public static buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 4

    const-string/jumbo v1, "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

    invoke-static {p0, p1, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "android.telecom.action.CONNECTION_SERVICE_CONFIGURE"

    invoke-static {p0, p1, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Phone account using old configuration intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getCallingAccounts(ZZ)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getEmergencyPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5, p2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v3, v2}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v5, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private getEmergencyPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .locals 3

    const/4 v0, 0x0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    const-string/jumbo v1, ""

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandleWithPrefix(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Z)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v2, p1}, Lcom/android/services/telephony/sip/SipPreferences;->setReceivingCallsEnabled(Z)V

    invoke-static {v0, p1}, Lcom/android/services/telephony/sip/SipUtil;->useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/services/telephony/sip/SipAccountRegistry;->restartSipService(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private initAccountList(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-nez v12, :cond_0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    return-void

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v17, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$2;-><init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;)V

    move-object/from16 v0, v17

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/16 v14, 0x64

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccount;

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    const/4 v11, 0x0

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v17

    if-eqz v17, :cond_8

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v16

    if-eqz v16, :cond_3

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v17, "android.telecom.action.SHOW_CALL_SETTINGS"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v17, 0x4000000

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-static {v11, v0}, Lcom/android/phone/SubscriptionInfoHelper;->addExtrasToIntent(Landroid/content/Intent;Landroid/telephony/SubscriptionInfo;)V

    :cond_3
    :goto_2
    new-instance v6, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/telecom/PhoneAccount;->hasCapabilities(I)Z

    move-result v13

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz v13, :cond_4

    const v17, 0x7f0d034c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    if-eqz v11, :cond_6

    invoke-virtual {v6, v11}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_6
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v6, v14}, Landroid/preference/Preference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    move v14, v15

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->buildPhoneAccountConfigureIntent(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v11

    goto :goto_2

    :cond_9
    return-void
.end method

.method private isPrimaryUser()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v1

    return v1
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    return-object p1
.end method

.method private shouldShowConnectionServiceList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateDefaultOutgoingAccountsModel()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const v4, 0x7f0d034b

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 0

    return-void
.end method

.method public onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v1, 0x7f040095

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/sip/SipPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v3, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;-><init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return v4

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v4, 0x7f07004b

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "phone_accounts_accounts_list_category_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v7, v6}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "default_outgoing_account"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/settings/AccountSelectionPreference;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v4, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->shouldShowConnectionServiceList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0, v6, v7}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getCallingAccounts(ZZ)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->initAccountList(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_5

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "phone_account_all_calling_accounts"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->isPrimaryUser()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/services/telephony/sip/SipPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "use_sip_calling_options_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    const v4, 0x7f090028

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/sip/SipPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    :cond_4
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "sip_receive_calls_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipPreferences;->isReceivingCallsEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mAccountList:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_8
    const v4, 0x7f090027

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "phone_accounts_sip_settings_category_key"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method
