.class public Lcom/android/services/telephony/sip/SipEditor;
.super Landroid/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;,
        Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-services-telephony-sip-SipEditor$PreferenceKeySwitchesValues:[I

.field private static mOrientation:I


# instance fields
.field private mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

.field private mDisplayNameSet:Z

.field private mFinish:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSavedName:Ljava/lang/String;

.field private mSavedPassword:Ljava/lang/String;

.field private mSavedSipDomain:Ljava/lang/String;

.field private mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

.field private mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

.field private mUpdateRequired:Z


# direct methods
.method private static synthetic -getcom-android-services-telephony-sip-SipEditor$PreferenceKeySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/telephony/sip/SipEditor;->-com-android-services-telephony-sip-SipEditor$PreferenceKeySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/sip/SipEditor;->-com-android-services-telephony-sip-SipEditor$PreferenceKeySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/services/telephony/sip/SipEditor;->-com-android-services-telephony-sip-SipEditor$PreferenceKeySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1

    :catch_8
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic -wrap3(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/services/telephony/sip/SipEditor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->restartSipService()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/services/telephony/sip/SipEditor;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    return-void
.end method

.method private checkIfDisplayNameSet()V
    .locals 3

    const/4 v1, 0x0

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    iget-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->stopSipService(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;
    .locals 5

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "not possible to reach here"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .locals 3

    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    const v1, 0x7f0d0208

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    const-class v3, Landroid/net/sip/SipProfile;

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v8

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v1, v8, v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "get"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v10}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Class;

    invoke-virtual {v3, v10, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v6, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v1, v6, :cond_1

    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    const v6, 0x7f0d0208

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const v6, 0x7f0d0207

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    check-cast v6, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v6, ""

    :goto_3
    invoke-virtual {v1, v6}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadPreferencesFromProfile, can not load pref from profile, exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    :goto_4
    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_5
    if-ge v6, v9, :cond_9

    aget-object v1, v8, v6

    iget-object v10, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v10, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget v10, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    if-eqz v10, :cond_6

    iget v10, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->initValue:I

    invoke-virtual {p0, v10}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    :cond_5
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_6
    sget-object v10, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v1, v10, :cond_7

    iget-object v10, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedName:Ljava/lang/String;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedName:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    goto :goto_6

    :cond_7
    sget-object v10, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v1, v10, :cond_8

    iget-object v10, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedPassword:Ljava/lang/String;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    goto :goto_6

    :cond_8
    sget-object v10, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    if-ne v1, v10, :cond_5

    iget-object v10, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedSipDomain:Ljava/lang/String;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedSipDomain:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    iput-boolean v11, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    goto :goto_6

    :cond_9
    iput-boolean v7, p0, Lcom/android/services/telephony/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SipEditor] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipEditor$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/services/telephony/sip/SipEditor$2;-><init>(Lcom/android/services/telephony/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string/jumbo v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private restartSipService()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/sip/SipAccountRegistry;->restartSipService(Landroid/content/Context;)V

    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipService(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/services/telephony/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    const v1, 0x7f0d01db

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    instance-of v2, p1, Landroid/preference/EditTextPreference;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/preference/EditTextPreference;

    const v3, 0x7f0400a4

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setDialogLayoutResource(I)V

    :cond_0
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    iget v5, v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->text:I

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p1, v0, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/services/telephony/sip/SipEditor$1;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/sip/SipEditor$1;-><init>(Lcom/android/services/telephony/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method private validateAndSetResult()V
    .locals 20

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->values()[Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v15

    const/4 v14, 0x0

    array-length v0, v15

    move/from16 v16, v0

    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    aget-object v8, v15, v14

    iget-object v9, v8, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v9, Landroid/preference/EditTextPreference;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v12, v9

    check-cast v12, Landroid/preference/EditTextPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/services/telephony/sip/SipEditor;->isEditTextEmpty(Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;)Z

    move-result v5

    if-eqz v2, :cond_0

    if-eqz v5, :cond_2

    :cond_0
    :goto_1
    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->-getcom-android-services-telephony-sip-SipEditor$PreferenceKeySwitchesValues()[I

    move-result-object v17

    invoke-virtual {v8}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    if-nez v6, :cond_1

    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    :cond_1
    :goto_2
    :pswitch_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/android/services/telephony/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const v17, 0x7f0d01fd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v17, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-object/from16 v0, v17

    if-ne v8, v0, :cond_1

    const-wide/16 v10, 0x0

    :try_start_0
    sget-object v17, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Port:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual/range {v17 .. v17}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    :goto_3
    const-wide/16 v18, 0x3e8

    cmp-long v17, v10, v18

    if-ltz v17, :cond_4

    const-wide/32 v18, 0xfffe

    cmp-long v17, v10, v18

    if-lez v17, :cond_1

    :cond_4
    const v14, 0x7f0d0203

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "port not valid, exception: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    if-eqz v14, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    const v14, 0x7f0d0201

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    return-void

    :cond_8
    if-eqz v6, :cond_9

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const v15, 0x7f0d0202

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/services/telephony/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    return-void

    :cond_9
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/services/telephony/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v13

    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/android/services/telephony/sip/SipSettings;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v14, "sip_profile"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/services/telephony/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    const v14, 0x7f0d01da

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/services/telephony/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    return-void

    :catch_1
    move-exception v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "validateAndSetResult, can not create new SipProfile, exception: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/services/telephony/sip/SipEditor;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/services/telephony/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sget v3, Lcom/android/services/telephony/sip/SipEditor;->mOrientation:I

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "tablet_device"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    sput v2, Lcom/android/services/telephony/sip/SipEditor;->mOrientation:I

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/sip/SipEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipEditor;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_2

    sget-object v5, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Username:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedName:Ljava/lang/String;

    :cond_0
    sget-object v5, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedPassword:Ljava/lang/String;

    :cond_1
    sget-object v5, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    invoke-virtual {v5}, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mSavedSipDomain:Ljava/lang/String;

    :cond_2
    new-instance v5, Lcom/android/services/telephony/sip/SipPreferences;

    invoke-direct {v5, p0}, Lcom/android/services/telephony/sip/SipPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipPreferences:Lcom/android/services/telephony/sip/SipPreferences;

    new-instance v5, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v5, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mProfileDb:Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v5

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mSipAccountRegistry:Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    sput v5, Lcom/android/services/telephony/sip/SipEditor;->mOrientation:I

    const v5, 0x7f0400ea

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->setContentView(I)V

    const v5, 0x7f07005c

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->addPreferencesFromResource(I)V

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "sip_profile"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    :goto_0
    check-cast v3, Landroid/net/sip/SipProfile;

    iput-object v3, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/services/telephony/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "profile"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    const v5, 0x7f0d01ee

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    :cond_5
    new-instance v5, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-direct {v5, p0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/services/telephony/sip/SipEditor;)V

    iput-object v5, p0, Lcom/android/services/telephony/sip/SipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-direct {p0, v3}, Lcom/android/services/telephony/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_6
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x2

    const v1, 0x7f0d01dd

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0d01dc

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v0, 0x3

    const v1, 0x7f0d01d8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    return v1

    :sswitch_1
    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->validateAndSetResult()V

    return v1

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->finish()V

    return v1

    :sswitch_3
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->setRemovedProfileAndFinish()V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mFinish:Z

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    iput-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->invalidateOptionsMenu()V

    return v2

    :cond_1
    if-nez p2, :cond_3

    const-string/jumbo v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    :goto_1
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipEditor;->checkIfDisplayNameSet()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->invalidateOptionsMenu()V

    return v2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->Password:Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/services/telephony/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    invoke-static {v0}, Lcom/android/services/telephony/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/services/telephony/sip/SipEditor;->mUpdateRequired:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    iput-boolean v1, p0, Lcom/android/services/telephony/sip/SipEditor;->mHomeButtonClicked:Z

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mAdvancedSettings:Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipEditor$AdvancedSettings;->show()V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
