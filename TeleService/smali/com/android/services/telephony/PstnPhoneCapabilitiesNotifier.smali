.class final Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;
.super Ljava/lang/Object;
.source "PstnPhoneCapabilitiesNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;,
        Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static synthetic -wrap0(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->handleVideoCapabilitesChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$1;-><init>(Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;)V

    iput-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mListener:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

    invoke-direct {p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->registerForNotifications()V

    return-void
.end method

.method private handleVideoCapabilitesChanged(Landroid/os/AsyncResult;)V
    .locals 14

    :try_start_0
    iget-object v12, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleVideoCapabilitesChanged. Video capability - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {p0, v12, v13}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->makePstnPhoneAccountHandle(Lcom/android/internal/telephony/Phone;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    iget-object v12, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v10, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v9

    new-instance v2, Landroid/telecom/PhoneAccount$Builder;

    invoke-direct {v2, v9}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccount;)V

    invoke-virtual {v9}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v8

    and-int/lit16 v12, v8, 0x100

    if-eqz v12, :cond_1

    const/4 v11, 0x1

    :goto_0
    invoke-virtual {v9}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v12

    const/16 v13, 0x8

    invoke-direct {p0, v12, v13, v5}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->newCapabilities(IIZ)I

    move-result v3

    if-eqz v11, :cond_0

    if-eqz v5, :cond_0

    or-int/lit16 v3, v3, 0x100

    :cond_0
    invoke-virtual {v2, v3}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telecom/PhoneAccountHandle;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v2}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "handleVideoCapabilitesChanged. Exception="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {p0, v12, v13}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void

    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v10, v6}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    goto :goto_1

    :cond_3
    iget-object v12, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mListener:Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;

    invoke-interface {v12, v5}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier$Listener;->onVideoCapabilitiesChanged(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private newCapabilities(IIZ)I
    .locals 1

    if-eqz p3, :cond_0

    or-int/2addr p1, p2

    :goto_0
    return p1

    :cond_0
    not-int v0, p2

    and-int/2addr p1, v0

    goto :goto_0
.end method

.method private registerForNotifications()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Registering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForVideoCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private unregisterForNotifications()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unregistering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForVideoCapabilityChanged(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method teardown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/PstnPhoneCapabilitiesNotifier;->unregisterForNotifications()V

    return-void
.end method
