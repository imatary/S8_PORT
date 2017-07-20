.class public Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
.super Ljava/lang/Object;
.source "OmtpVvmSourceManager.java"


# static fields
.field private static sInstance:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;


# instance fields
.field private mActiveVvmSources:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPhoneStateListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    invoke-direct {v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;-><init>()V

    sput-object v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->sInstance:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;
    .locals 1

    sget-object v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->sInstance:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    invoke-direct {v0, p0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->setup(Landroid/content/Context;)V

    sget-object v0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->sInstance:Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;

    return-object v0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v2, 0x3f666666    # 0.9f

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mActiveVvmSources:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mPhoneStateListenerMap:Ljava/util/Map;

    :cond_0
    return-void
.end method


# virtual methods
.method public addPhoneStateListener(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mPhoneStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/phone/vvm/omtp/VvmPhoneStateListener;-><init>(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mPhoneStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public addPhoneStateListener(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->addPhoneStateListener(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public addSource(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mActiveVvmSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getOmtpVvmSources()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mActiveVvmSources:Ljava/util/Set;

    return-object v0
.end method

.method public isVvmSourceRegistered(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mActiveVvmSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeInactiveSources()V
    .locals 3

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mActiveVvmSources:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->isPhoneAccountActive(Landroid/telephony/SubscriptionManager;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mPhoneStateListenerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->isPhoneAccountActive(Landroid/telephony/SubscriptionManager;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removePhoneStateListener(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public removePhoneStateListener(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mPhoneStateListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public removeSource(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1, v1, v1}, Landroid/provider/VoicemailContract$Status;->setStatus(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;III)V

    invoke-virtual {p0, p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removePhoneStateListener(Landroid/telecom/PhoneAccountHandle;)V

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mActiveVvmSources:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSyncService;->cancelAllRetries(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method public removeSource(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/vvm/omtp/sync/OmtpVvmSourceManager;->removeSource(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method
