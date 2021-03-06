.class public Lcom/android/settings/DeviceInfoSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DeviceInfoSettings$1;,
        Lcom/android/settings/DeviceInfoSettings$2;,
        Lcom/android/settings/DeviceInfoSettings$3;,
        Lcom/android/settings/DeviceInfoSettings$4;,
        Lcom/android/settings/DeviceInfoSettings$5;,
        Lcom/android/settings/DeviceInfoSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sSalesCode:Ljava/lang/String;

.field private static statusForChnRoot:Z


# instance fields
.field private mBixbyMsgHandler:Landroid/os/Handler;

.field mContext:Landroid/content/Context;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field mDevHitCountdown:I

.field mDevHitToast:Landroid/widget/Toast;

.field private mDeviceName:Landroid/preference/Preference;

.field private mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

.field private final mDeviceNameObserver:Landroid/database/ContentObserver;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mFunDisallowedBySystem:Z

.field mHits:[J

.field private mOnlineHelpPref:Landroid/preference/Preference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mUm:Landroid/os/UserManager;

.field private mUserManager:Landroid/os/UserManager;

.field variantName:[[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/settings/DeviceInfoSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/DeviceInfoSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/DeviceInfoSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/DeviceInfoSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    new-instance v0, Lcom/android/settings/DeviceInfoSettings$2;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/DeviceInfoSettings$3;

    invoke-direct {v0}, Lcom/android/settings/DeviceInfoSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/DeviceInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-array v0, v6, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    const/16 v0, 0xf

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "ATL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Spain"

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDI"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Ireland"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDE"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Ireland(Prepaid)"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "CNX"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Romania"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VD2"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Germany"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Germany(Prepaid)"

    aput-object v2, v1, v4

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDC"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Czech Republic"

    aput-object v2, v1, v4

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VOD"

    aput-object v2, v1, v3

    const-string/jumbo v2, "UK"

    aput-object v2, v1, v4

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VOP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "UK(Prepaid)"

    aput-object v2, v1, v4

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "TCL"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Portugal"

    aput-object v2, v1, v4

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDH"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Hungary"

    aput-object v2, v1, v4

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDF"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The Netherlands"

    aput-object v2, v1, v4

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VDP"

    aput-object v2, v1, v3

    const-string/jumbo v2, "The Netherlands(Prepaid)"

    aput-object v2, v1, v4

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "VGR"

    aput-object v2, v1, v3

    const-string/jumbo v2, "Greece"

    aput-object v2, v1, v4

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "OMN"

    aput-object v2, v1, v3

    const-string/jumbo v2, "ITALY"

    aput-object v2, v1, v4

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->variantName:[[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/DeviceInfoSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DeviceInfoSettings$1;-><init>(Lcom/android/settings/DeviceInfoSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/DeviceInfoSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$4;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/android/settings/DeviceInfoSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DeviceInfoSettings$5;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mBixbyMsgHandler:Landroid/os/Handler;

    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "status_info_root"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "rootbadge_display"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->checkRootingCondition()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/deviceinfo/AvoidRootPreference;->setAvoidRootVisible(Z)V

    goto :goto_0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendFeedback()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceSpecStringSummary "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreference(empty) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreference "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b121e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b121e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showKnoxVersion()V
    .locals 30

    const-string/jumbo v10, ""

    const-string/jumbo v9, ""

    :try_start_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    if-lez v12, :cond_13

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0928

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :cond_0
    :goto_1
    :try_start_1
    const-string/jumbo v27, "enterprise_policy_new"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_1

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b092b

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVer()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :cond_1
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b092c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getVersion()Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/EnterpriseKnoxManager$EnterpriseKnoxSdkVersion;->getInternalVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    :cond_2
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getInstance()Lcom/samsung/android/knox/custom/CustomDeviceManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/custom/CustomDeviceManager;->getSdkVersion()Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/custom/CustomDeviceManager$SdkVersion;->getInternalSdkVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v27, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0930

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    :cond_3
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_4

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b092a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v10

    :cond_4
    :goto_5
    :try_start_5
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxisl.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0934

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxisl.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v10

    :cond_5
    :goto_6
    :try_start_6
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxscep.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_6

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0933

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxscep.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v10

    :cond_6
    :goto_7
    :try_start_7
    const-string/jumbo v27, ""

    const-string/jumbo v28, "sys.enterprise.billing.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b092e

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "sys.enterprise.billing.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v10

    :cond_7
    :goto_8
    :try_start_8
    const-string/jumbo v27, ""

    const-string/jumbo v28, "sys.enterprise.otp.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b092f

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "sys.enterprise.otp.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v10

    :cond_8
    :goto_9
    :try_start_9
    const-string/jumbo v27, ""

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0931

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Landroid/os/SELinux;->getSEAndroidVersion()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v10

    :cond_9
    :goto_a
    :try_start_a
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxsso.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_a

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0932

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxsso.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    move-result-object v10

    :cond_a
    :goto_b
    :try_start_b
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knox.shareddevice.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_b

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0935

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knox.shareddevice.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_b

    move-result-object v10

    :cond_b
    :goto_c
    :try_start_c
    const-string/jumbo v27, ""

    const-string/jumbo v28, "ro.config.timaversion"

    const-string/jumbo v29, "No Policy Version"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    const-string/jumbo v27, "19"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const-string/jumbo v27, "3.0"

    const-string/jumbo v28, "ro.config.timaversion"

    const-string/jumbo v29, "No Policy Version"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_16

    const/16 v27, 0xe

    move/from16 v0, v27

    if-lt v14, v0, :cond_16

    const/16 v25, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v27

    sget-object v28, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_7_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v27

    if-ltz v27, :cond_14

    const-string/jumbo v22, "3.3"

    :goto_d
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.dmverity"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_c

    const/16 v27, 0x0

    add-int/lit8 v25, v27, 0x1

    :cond_c
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.rkp"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_d

    add-int/lit8 v25, v25, 0x2

    :cond_d
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.kap"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_e

    add-int/lit8 v25, v25, 0x4

    :cond_e
    const-string/jumbo v27, "true"

    const-string/jumbo v28, "ro.config.kap_default_on"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    add-int/lit8 v25, v25, 0x8

    :cond_f
    const/16 v27, 0xa

    move/from16 v0, v25

    move/from16 v1, v27

    if-ge v0, v1, :cond_15

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0929

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".00"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_e
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v10

    :cond_10
    :goto_f
    :try_start_d
    const-string/jumbo v27, ""

    const-string/jumbo v28, "net.knoxvpn.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_11

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b092d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "net.knoxvpn.version"

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v10

    :cond_11
    :goto_10
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_12

    const-string/jumbo v27, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v10}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    return-void

    :cond_13
    const/16 v27, 0x2e

    :try_start_e
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0928

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    move-result-object v9

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_3
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_4
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :catch_5
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catch_6
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :catch_7
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catch_8
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :catch_9
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    :catch_a
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    :catch_b
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :cond_14
    :try_start_f
    const-string/jumbo v22, "3.2"

    goto/16 :goto_d

    :cond_15
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0929

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, ".0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_e

    :cond_16
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0b0929

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "ro.config.timaversion"

    const-string/jumbo v29, "No Policy Version"

    invoke-static/range {v28 .. v29}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    move-result-object v23

    goto/16 :goto_e

    :catch_c
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :catch_d
    move-exception v4

    const-string/jumbo v27, "DeviceInfoSettings"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "KnoxVersion Exception : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10
.end method


# virtual methods
.method InitSecAddtionalPreferences()V
    .locals 41

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isSupportRootBadge(Landroid/content/Context;)Z

    move-result v38

    sput-boolean v38, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v38

    sput-object v38, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v38, "Enabled"

    const-string/jumbo v39, "ro.security.mdpp.ux"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_15

    const-string/jumbo v38, "security_sw_version"

    invoke-static {}, Lcom/android/settings/Utils;->showSecuritySWVersion()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v12

    sget-object v38, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-object/from16 v0, v38

    invoke-virtual {v12, v0}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v38

    if-ltz v38, :cond_16

    const-string/jumbo v38, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->showKnoxVersion()V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v39, "com.sec.knox.kccagent"

    invoke-static/range {v38 .. v39}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v39, "com.sec.knox.kccagent"

    const-string/jumbo v40, "com.sec.knox.kccc.agent.activities.KCCCSettings"

    invoke-static/range {v38 .. v40}, Lcom/android/settings/Utils;->isActivityExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v39, "com.sec.enterprise.knox.cloudmdm.smdms.agent.kc"

    invoke-static/range {v38 .. v39}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string/jumbo v39, "knox_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    const-string/jumbo v38, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v38, "VZW"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v38

    if-eqz v38, :cond_19

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v38

    const-string/jumbo v39, "CscFeature_Setting_ChangeApprovedModemVersion"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1

    const-string/jumbo v38, "none"

    const-string/jumbo v39, "ril.approved_modemver"

    const-string/jumbo v40, "none"

    invoke-static/range {v39 .. v40}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1a

    :cond_1
    const-string/jumbo v6, "gsm.version.baseband"

    :goto_4
    const-string/jumbo v38, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v6}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_2

    const-string/jumbo v38, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v38

    if-eqz v38, :cond_1b

    const-string/jumbo v38, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v6}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string/jumbo v38, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_3

    const-string/jumbo v38, "icon_glossary"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v38, "device_model"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v40, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getModelNumberExtra(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v38

    if-eqz v38, :cond_1c

    const-string/jumbo v38, "build_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    sget-object v40, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static/range {v39 .. v40}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getCMCCBuildNumberSummary(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v38, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v38, "VZW"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1d

    const-string/jumbo v38, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getFormattedKernelVersionVZW()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_7
    const/16 v35, 0x0

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v38

    if-eqz v38, :cond_1f

    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v38

    if-eqz v38, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0b1a38

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    :try_start_0
    const-string/jumbo v38, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_4

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v35

    :cond_4
    :goto_8
    :try_start_1
    const-string/jumbo v38, ""

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_5

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {}, Landroid/os/SELinux;->getSEPolicyBuildDate()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v35

    :cond_5
    :goto_9
    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "DeviceInfoSettings seStatus : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    const-string/jumbo v38, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string/jumbo v39, "selinux_status"

    const-string/jumbo v40, "ro.build.selinux"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v40

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "selinux.policy_version"

    const-string/jumbo v39, "No Policy Version"

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v38, "GOOGLE_POLICY"

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_6

    const-string/jumbo v38, "No Policy Version"

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    :cond_6
    const-string/jumbo v38, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_7
    const-string/jumbo v38, "XSG"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    const-string/jumbo v38, "XSD"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    const-string/jumbo v38, "XST"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    const-string/jumbo v38, "XSZ"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    const-string/jumbo v38, "XSM"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    const-string/jumbo v38, "XSS"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_8

    const-string/jumbo v38, "XSI"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_22

    :cond_8
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "country_cert_info_enable"

    invoke-static/range {v38 .. v39}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "country_cert_info_traid"

    invoke-static/range {v38 .. v39}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "country_cert_info_ta"

    invoke-static/range {v38 .. v39}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "country_cert_info_name"

    invoke-static/range {v38 .. v39}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v11, :cond_20

    if-eqz v10, :cond_20

    if-eqz v8, :cond_20

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "TRA ID : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\nTA : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v38, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v38, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_b
    const-string/jumbo v38, "SMA"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_9

    const-string/jumbo v38, "XTC"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_9

    const-string/jumbo v38, "XTE"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_9

    const-string/jumbo v38, "GLB"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_23

    :cond_9
    const-string/jumbo v38, "service_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v38, "ntc_approval"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceScreen;

    new-instance v38, Lcom/android/settings/DeviceInfoSettings$7;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings$7;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v38

    const-string/jumbo v39, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_24

    const-string/jumbo v38, "TFG"

    sget-object v39, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkForTFGCostaRicaSIM()Z

    move-result v38

    if-eqz v38, :cond_24

    :cond_a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v39, "com.samsung.ccr"

    invoke-static/range {v38 .. v39}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isPackageLoaded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_b

    const-string/jumbo v38, "DeviceInfoSettings"

    const-string/jumbo v39, "remove diagnostics_and_usage"

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v38, "diagnostics_and_usage"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v38

    const-string/jumbo v39, "CscFeature_Setting_EnableHwVersionDisplay"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_26

    const-string/jumbo v38, "ril.hw_ver"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_25

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v38

    if-eqz v38, :cond_c

    const/16 v38, 0x2e

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v38, -0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-eq v0, v1, :cond_c

    add-int/lit8 v38, v18, 0x2

    const/16 v39, 0x0

    move/from16 v0, v39

    move/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_c
    const-string/jumbo v38, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    const-string/jumbo v38, "ro.product.name"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v38, "hero"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_28

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCMCCModel()Z

    move-result v38

    if-eqz v38, :cond_28

    const-string/jumbo v38, "software_version_cmcc"

    const-string/jumbo v39, "ril.official_cscver"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "ril.approved_cscver"

    const-string/jumbo v39, "none"

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_d

    const-string/jumbo v38, "none"

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_27

    :cond_d
    :goto_f
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v38

    if-eqz v38, :cond_2a

    const-string/jumbo v38, "ril.hw_ver"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v38, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    if-eqz v4, :cond_29

    const-string/jumbo v38, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "CSCFEATURE_SETTINGS_ENABLEHWVERSIONDISPLAY:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const-string/jumbo v39, "com.ctc.epush"

    invoke-static/range {v38 .. v39}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_e

    const-string/jumbo v38, "ctc_epush"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "device_name"

    invoke-static/range {v38 .. v39}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v38

    const-string/jumbo v39, "user"

    invoke-virtual/range {v38 .. v39}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/UserManager;

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/DeviceInfoSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v38, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v38

    if-eqz v38, :cond_f

    if-nez v13, :cond_f

    const-string/jumbo v38, ""

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v39

    const-string/jumbo v40, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual/range {v39 .. v40}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_f

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v38

    const-string/jumbo v39, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual/range {v38 .. v39}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "device_name"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f
    const-string/jumbo v38, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1, v13}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "ro.csb_val"

    invoke-static/range {v38 .. v38}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "CSB debug keyindex= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v38, "unknown"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_10

    const-string/jumbo v38, "ABSENT"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-nez v38, :cond_10

    const-string/jumbo v38, ""

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2b

    :cond_10
    const-string/jumbo v38, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_11
    const-string/jumbo v38, "fcc_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceFccId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "rated_value"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "battery_capacity"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setDeviceSpecStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v38

    if-eqz v38, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getDeviceRated(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_30

    :cond_11
    const-string/jumbo v38, "customer_services"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_12
    const-string/jumbo v38, "persist.sys.iss.flag_altermodel"

    const/16 v39, 0x0

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_12

    const-string/jumbo v38, "device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "device_model"

    const-string/jumbo v39, "persist.sys.iss.altermodel"

    invoke-static/range {v39 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "baseband_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "build_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "selinux_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_12
    sget-boolean v38, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    if-eqz v38, :cond_31

    const-string/jumbo v38, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "status_info_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    const-string/jumbo v39, "com.samsung.android.app.omcagent"

    invoke-static/range {v38 .. v39}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_34

    const-string/jumbo v28, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    const-string/jumbo v39, "OMC.configuration.version"

    invoke-static/range {v38 .. v39}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v38, "ro.csc.omcnw_code"

    const-string/jumbo v39, ""

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string/jumbo v38, "ro.serialno"

    const-string/jumbo v39, "No ID"

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v38, "ro.boot.carrierid"

    const-string/jumbo v39, "No ID"

    invoke-static/range {v38 .. v39}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_33

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :goto_14
    const-string/jumbo v38, "omc_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v38

    if-nez v38, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v38

    if-eqz v38, :cond_35

    :cond_13
    const-string/jumbo v38, "my_phone_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_14
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/settings/Utils;->isSemAvailable(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_3f

    sget v38, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v39, 0x138e4

    move/from16 v0, v38

    move/from16 v1, v39

    if-lt v0, v1, :cond_3f

    const-string/jumbo v38, "samsung_experience_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/settings/Utils;->getSepPlatformVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->removePreferencesSimplifiedAboutDevice()V

    return-void

    :cond_15
    const-string/jumbo v38, "security_sw_version"

    invoke-static {}, Lcom/android/settings/Utils;->getASKSVersion()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v38, "security_sw_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v38, "knox_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string/jumbo v39, "knox_custom_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string/jumbo v39, "knox_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v38

    const-string/jumbo v39, "knox_custom_configurator"

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/DeviceInfoSettings;->mDeviceName:Landroid/preference/Preference;

    move-object/from16 v38, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0b05a5

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_1a
    const-string/jumbo v6, "ril.approved_modemver"

    goto/16 :goto_4

    :cond_1b
    const-string/jumbo v38, "software_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_1c
    const-string/jumbo v38, "build_number"

    sget-object v39, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    const-string/jumbo v38, "kernel_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :catch_0
    move-exception v15

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "KnoxVersion Exception : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8

    :catch_1
    move-exception v15

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "KnoxVersion Exception : "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0b1a37

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_a

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    const v39, 0x7f0b1a36

    invoke-virtual/range {v38 .. v39}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_a

    :cond_20
    :try_start_3
    const-string/jumbo v38, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_b

    :catch_2
    move-exception v14

    invoke-virtual {v14}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_b

    :cond_21
    :try_start_4
    const-string/jumbo v38, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_b

    :cond_22
    const-string/jumbo v38, "country_certification_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_23
    const-string/jumbo v38, "service_information"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "ntc_approval"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_24
    const-string/jumbo v38, "regulatory_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_25
    const-string/jumbo v38, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const v39, 0x7f0b121e

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    :cond_26
    const-string/jumbo v38, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_27
    const-string/jumbo v38, "hardware_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    :cond_28
    const-string/jumbo v38, "software_version_cmcc"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_29
    const-string/jumbo v38, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v38

    const v39, 0x7f0b121e

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_10

    :cond_2a
    const-string/jumbo v38, "hardware_version_spr"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_2b
    const-string/jumbo v38, "1"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2c

    const-string/jumbo v36, "Type: Samsung"

    :goto_18
    const-string/jumbo v38, "csb_value"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_2c
    const-string/jumbo v38, "2"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2d

    const-string/jumbo v36, "Type: Knox A"

    goto :goto_18

    :cond_2d
    const-string/jumbo v38, "3"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2e

    const-string/jumbo v36, "Type: Knox B"

    goto :goto_18

    :cond_2e
    const-string/jumbo v38, "4"

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2f

    const-string/jumbo v36, "Type: Knox C"

    goto :goto_18

    :cond_2f
    const-string/jumbo v36, "Type: Invalid"

    goto :goto_18

    :cond_30
    const-string/jumbo v38, "customer_services"

    const-string/jumbo v39, "1588-3366 / www.3366.co.kr"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_31
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isStatusLOSmenutree()Z

    move-result v38

    if-eqz v38, :cond_32

    const-string/jumbo v38, "status_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "status_info_root"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_32
    const-string/jumbo v38, "status_info_vzw"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v38, "status_info_root"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_33
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "\n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, "/"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_14

    :cond_34
    const-string/jumbo v38, "omc_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_35
    const-string/jumbo v38, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v22

    if-eqz v22, :cond_14

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v38

    if-lez v38, :cond_14

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v26

    const/16 v38, 0x1

    move/from16 v0, v26

    move/from16 v1, v38

    if-ne v0, v1, :cond_37

    const/16 v38, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "getLine1Number:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v38

    if-eqz v38, :cond_36

    const-string/jumbo v38, "\\+82"

    const-string/jumbo v39, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :cond_36
    invoke-static/range {v32 .. v32}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v38, "my_phone_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_37
    const/16 v38, 0x1

    move/from16 v0, v26

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    const-string/jumbo v24, ""

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x0

    :goto_19
    move/from16 v0, v17

    move/from16 v1, v26

    if-ge v0, v1, :cond_3d

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v38, "DeviceInfoSettings"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "getLine1Number:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_3b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v38

    if-eqz v38, :cond_38

    const-string/jumbo v38, "\\+82"

    const-string/jumbo v39, "0"

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    :cond_38
    invoke-static/range {v32 .. v32}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v38

    if-eqz v38, :cond_3a

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "\u200f"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    add-int/lit8 v38, v26, -0x1

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_39

    const-string/jumbo v38, "\n"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_39
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_19

    :cond_3a
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_3b
    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v38

    if-eqz v38, :cond_3c

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "\u200f"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0b121e

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_3c
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->getSimName(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0b121e

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a

    :cond_3d
    const/16 v17, 0x0

    :goto_1b
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_3e

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    add-int/lit8 v17, v17, 0x1

    goto :goto_1b

    :cond_3e
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v38

    if-nez v38, :cond_14

    const-string/jumbo v38, "my_phone_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_3f
    const-string/jumbo v38, "samsung_experience_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method InitSecTopAddtionalPreferences()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->removeTile:Z

    if-nez v1, :cond_2

    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v1, "device_info_online_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    iget-object v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "device_info_online_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    iget v1, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    if-eqz v1, :cond_1

    const-string/jumbo v1, "device_info_online_help"

    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iget v2, v0, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    new-instance v2, Lcom/android/settings/DeviceInfoSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/DeviceInfoSettings$6;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    return-void
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f0b1a9d

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance v3, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v1}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v2}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getContactUsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v3, 0x7f0b0574

    iput v3, v2, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.Settings$PrivacyResetSettingsActivity"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "menu"

    const-string/jumbo v4, "reset"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iput-object v0, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v3, 0x7f0b023a

    iput v3, v1, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->InitSecTopAddtionalPreferences()V

    const v3, 0x7f080059

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v3, "firmware_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "firmware_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getSecurityPatch()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "security_patch"

    invoke-direct {p0, v3, v2}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v3, "baseband_version"

    const-string/jumbo v4, "gsm.version.baseband"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "device_model"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getMsvSuffix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "fcc_equipment_id"

    const-string/jumbo v4, "ro.ril.fccid"

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "device_model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "build_number"

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "build_number"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    const-string/jumbo v3, "kernel_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-static {}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "fcc_equipment_id"

    const-string/jumbo v5, "ro.ril.fccid"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "baseband_version"

    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/DeviceInfoUtils;->getFeedbackReporterPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "device_feedback"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->InitSecAddtionalPreferences()V

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "security_patch"

    invoke-virtual {p0, v4}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->dismiss()V

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    return-void
.end method

.method public onNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AboutDevice"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPositiveClick()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "device_name"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "firmware_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v8, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v9, v7, v12, v8}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    aput-wide v8, v6, v7

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v6, v6, v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x1f4

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_fun"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "Sorry, no fun for you!"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "android"

    const-class v7, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    return v6

    :catch_0
    move-exception v2

    const-string/jumbo v6, "DeviceInfoSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to start activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "build_number"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v6

    if-nez v6, :cond_5

    return v9

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_6

    return v9

    :cond_6
    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mUm:Landroid/os/UserManager;

    const-string/jumbo v7, "no_debugging_features"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    if-eqz v6, :cond_8

    :cond_7
    :goto_2
    return v9

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v6, v7}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_9
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v6, :cond_d

    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-nez v6, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "development"

    invoke-virtual {v6, v7, v12}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v7, "show"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b121f

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v6

    const-class v7, Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Lcom/android/settings/search/Index;->updateFromClassNameResource(Ljava/lang/String;ZZ)V

    goto/16 :goto_1

    :cond_b
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-lez v6, :cond_3

    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    const/4 v7, 0x5

    if-ge v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const v10, 0x7f130004

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_d
    iget v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->cancel()V

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b1220

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "device_feedback"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->sendFeedback()V

    goto/16 :goto_1

    :cond_10
    const-string/jumbo v6, "device_name"

    invoke-virtual {p0, v6}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne p2, v6, :cond_12

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->isResumed()Z

    move-result v6

    if-nez v6, :cond_11

    return v9

    :cond_11
    invoke-virtual {p0, v8}, Lcom/android/settings/DeviceInfoSettings;->showDialog(Ljava/lang/String;)V

    return v9

    :cond_12
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "security_sw_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "Security SW Version : On Click"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_13
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "knox_version"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string/jumbo v6, "DeviceInfoSettings"

    const-string/jumbo v7, "KnoxVersion : Clicked"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "regulatory_info"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Setting_SupportRegulatoryInfo"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "TFG"

    sget-object v7, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->checkForTFGCostaRicaSIM()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->showRegulatoryInfo(Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v6, "customer_services"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "tel:1588-3366"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.DIAL"

    invoke-direct {v0, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitCountdown:I

    iput-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_fun"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DeviceInfoSettings;->mFunDisallowedBySystem:Z

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/DeviceInfoSettings;->mDebuggingFeaturesDisallowedBySystem:Z

    sget-boolean v0, Lcom/android/settings/DeviceInfoSettings;->statusForChnRoot:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->changeSysScopeStatus()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "device_name"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "AboutDevice"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_1
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public removePreferencesSimplifiedAboutDevice()V
    .locals 3

    const v2, 0x7f0b05ca

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->isSimplifiedAboutDevice2015()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "firmware_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "security_patch"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "baseband_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "kernel_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "selinux_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "security_sw_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "knox_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "omc_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "samsung_experience_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "fcc_id"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "rated_value"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "battery_capacity"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "knox_custom_configurator"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "knox_configurator"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b05cb

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "status_info_root"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "battery_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "software_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_1
.end method

.method showDialog(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/DeviceInfoSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const v0, 0x7f0b0599

    :goto_0
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1003cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    :goto_1
    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->setConfirmationDialogFragmentListener(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;)V

    iget-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "dialog"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const v0, 0x7f0b05a5

    goto :goto_0

    :cond_4
    invoke-static {v0, p1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DeviceInfoSettings;->mDeviceNameFragment:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    goto :goto_1
.end method

.method public showOnlineHelpDialog()V
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040349

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f110818

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v7, 0x7f11018f

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0572

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {}, Lcom/android/settings/Utils;->getResIdForUserManual()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v7, "onlinehelp_show_dialog"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0571

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/DeviceInfoSettings$8;

    invoke-direct {v8, p0, v0, v4}, Lcom/android/settings/DeviceInfoSettings$8;-><init>(Lcom/android/settings/DeviceInfoSettings;Landroid/widget/CheckBox;Landroid/content/SharedPreferences$Editor;)V

    const v9, 0x7f0b04cd

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/DeviceInfoSettings$9;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceInfoSettings$9;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    const v9, 0x7f0b12f0

    invoke-virtual {v7, v9, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/android/settings/DeviceInfoSettings$10;

    invoke-direct {v8, p0}, Lcom/android/settings/DeviceInfoSettings$10;-><init>(Lcom/android/settings/DeviceInfoSettings;)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/DeviceInfoSettings;->mOnlineHelpPref:Landroid/preference/Preference;

    invoke-virtual {v8}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v7, "DeviceInfoSettings"

    const-string/jumbo v8, "Activity Not Found"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
