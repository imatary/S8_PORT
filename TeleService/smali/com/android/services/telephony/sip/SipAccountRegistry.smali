.class public final Lcom/android/services/telephony/sip/SipAccountRegistry;
.super Ljava/lang/Object;
.source "SipAccountRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/services/telephony/sip/SipAccountRegistry;


# instance fields
.field private final mAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/services/telephony/sip/SipAccountRegistry;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/services/telephony/sip/SipAccountRegistry;

    invoke-direct {v0}, Lcom/android/services/telephony/sip/SipAccountRegistry;-><init>()V

    sput-object v0, Lcom/android/services/telephony/sip/SipAccountRegistry;->INSTANCE:Lcom/android/services/telephony/sip/SipAccountRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    return-void
.end method

.method private getAccountEntry(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;
    .locals 3

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    invoke-virtual {v0}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->getProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;
    .locals 1

    sget-object v0, Lcom/android/services/telephony/sip/SipAccountRegistry;->INSTANCE:Lcom/android/services/telephony/sip/SipAccountRegistry;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SipAccountRegistry] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 11

    new-instance v6, Lcom/android/services/telephony/sip/SipPreferences;

    invoke-direct {v6, p1}, Lcom/android/services/telephony/sip/SipPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/services/telephony/sip/SipPreferences;->isReceivingCallsEnabled()Z

    move-result v0

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v8

    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v5

    new-instance v4, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v4, p1}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/sip/SipProfile;

    if-eqz p2, :cond_1

    invoke-virtual {v2}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_1
    invoke-static {p1, v2}, Lcom/android/services/telephony/sip/SipUtil;->createPhoneAccount(Landroid/content/Context;Landroid/net/sip/SipProfile;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    if-eqz p3, :cond_2

    invoke-virtual {v1}, Landroid/telecom/PhoneAccount;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/telecom/TelecomManager;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V

    :cond_2
    invoke-direct {p0, v2, v5, p1, v0}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipServiceForProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipManager;Landroid/content/Context;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/services/telephony/sip/SipAccountRegistry$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry$1;-><init>(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startSipServiceForProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipManager;Landroid/content/Context;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->removeSipProfile(Ljava/lang/String;)V

    new-instance v0, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    invoke-direct {v0, p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;-><init>(Lcom/android/services/telephony/sip/SipAccountRegistry;Landroid/net/sip/SipProfile;)V

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->startSipService(Landroid/net/sip/SipManager;Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method removeSipProfile(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getAccountEntry(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipAccountRegistry;->mAccounts:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public restartSipService(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfiles(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method setup(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->verifyAndPurgeInvalidPhoneAccounts(Landroid/content/Context;)V

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method startSipService(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/services/telephony/sip/SipAccountRegistry;->startSipProfilesAsync(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method stopSipService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getAccountEntry(Ljava/lang/String;)Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/services/telephony/sip/SipAccountRegistry$AccountEntry;->stopSipService(Landroid/net/sip/SipManager;)Z

    :cond_0
    invoke-static {p1, p2}, Lcom/android/services/telephony/sip/SipUtil;->createAccountHandle(Landroid/content/Context;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method verifyAndPurgeInvalidPhoneAccounts(Landroid/content/Context;)V
    .locals 9

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v6

    new-instance v4, Lcom/android/services/telephony/sip/SipProfileDb;

    invoke-direct {v4, p1}, Lcom/android/services/telephony/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    const-string/jumbo v7, "sip"

    invoke-virtual {v6, v7}, Landroid/telecom/TelecomManager;->getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0}, Lcom/android/services/telephony/sip/SipUtil;->getSipProfileNameFromPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/sip/SipProfileDb;->retrieveSipProfileFromName(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyAndPurgeInvalidPhoneAccounts, deleting account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/services/telephony/sip/SipAccountRegistry;->log(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/telecom/TelecomManager;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_1
    return-void
.end method
