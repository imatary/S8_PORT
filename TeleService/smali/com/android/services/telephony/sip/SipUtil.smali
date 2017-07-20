.class public Lcom/android/services/telephony/sip/SipUtil;
.super Ljava/lang/Object;
.source "SipUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 3

    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/services/telephony/sip/SipConnectionService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, v1, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method

.method static createIncomingCallPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/services/telephony/sip/SipBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.android.phone.SIP_INCOMING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "com.android.services.telephony.sip.phone_account"

    invoke-static {p0, p1}, Lcom/android/services/telephony/sip/SipUtil;->createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createPhoneAccount(Landroid/content/Context;Landroid/net/sip/SipProfile;)Landroid/telecom/PhoneAccount;
    .locals 8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getSipDomain()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/services/telephony/sip/SipUtil;->createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "sip"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/android/services/telephony/sip/SipUtil;->useSipForPstnCalls(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "tel"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    const/16 v6, 0x22

    invoke-virtual {v5, v6}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/telecom/PhoneAccount$Builder;->setShortDescription(Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200b1

    invoke-static {v6, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v5

    return-object v5
.end method

.method static getSipProfileNameFromPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    return-object v0
.end method

.method public static isPhoneIdle(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v2, "telecom"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static isVoipSupported(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x112005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "support_softphone"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static possiblyMigrateSipDb(Landroid/content/Context;)V
    .locals 9

    new-instance v1, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipProfileDb;->accessDEStorageForMigration()V

    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SIP"

    const-string/jumbo v7, "Migrating SIP Profiles over!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/sip/SipProfile;

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v6

    if-nez v6, :cond_0

    :try_start_0
    invoke-virtual {v0, v3}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    const-string/jumbo v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(Migration) Deleting SIP profile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error Deleting file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v6, "SIP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error Migrating file to CE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/services/telephony/sip/SipProfileDb;->cleanupUponMigration()V

    return-void
.end method

.method public static startSipService()V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/sip/SipUtil;->possiblyMigrateSipDb(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    return-void
.end method

.method private static updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Lcom/android/services/telephony/sip/SipProfileDb;Z)V
    .locals 5

    new-instance v2, Landroid/net/sip/SipProfile$Builder;

    invoke-direct {v2, p0}, Landroid/net/sip/SipProfile$Builder;-><init>(Landroid/net/sip/SipProfile;)V

    invoke-virtual {v2, p2}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v1

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/services/telephony/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    invoke-virtual {p1, v1}, Lcom/android/services/telephony/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SIP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAutoRegistrationFlag, exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static useSipForPstnCalls(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/android/services/telephony/sip/SipPreferences;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "SIP_ALWAYS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V
    .locals 5

    new-instance v2, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v2, p0}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    invoke-static {v0, v2, p1}, Lcom/android/services/telephony/sip/SipUtil;->updateAutoRegistrationFlag(Landroid/net/sip/SipProfile;Lcom/android/services/telephony/sip/SipProfileDb;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
