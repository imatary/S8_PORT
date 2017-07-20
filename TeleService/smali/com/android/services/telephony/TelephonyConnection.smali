.class public abstract Lcom/android/services/telephony/TelephonyConnection;
.super Landroid/telecom/Connection;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelephonyConnection$1;,
        Lcom/android/services/telephony/TelephonyConnection$2;,
        Lcom/android/services/telephony/TelephonyConnection$3;,
        Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;,
        Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I

.field private static final sExtrasMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallDetailsExtras:Landroid/os/Bundle;

.field private mCallId:Ljava/lang/String;

.field protected mConnectionOverriddenState:Lcom/android/internal/telephony/Call$State;

.field private mConnectionState:Lcom/android/internal/telephony/Call$State;

.field private mForceUpdate:Z

.field private final mHandler:Landroid/os/Handler;

.field protected mHasBeenVideoCall:Z

.field private mHasHighDefAudio:Z

.field private mHasHighDefAudioCodec:I

.field private mIsMultiParty:Z

.field protected mIsStateOverridden:Z

.field private mIsVideoPauseSupported:Z

.field private mIsVoicePrivacyOn:Z

.field private mIsWifi:Z

.field private mNeedHangupWhenConnected:Z

.field protected mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private mOriginalConnectionCapabilities:I

.field private mOriginalConnectionExtras:Landroid/os/Bundle;

.field private final mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

.field protected mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

.field private final mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

.field protected mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

.field private mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

.field private mSessionModificationState:I

.field private mSsNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

.field private final mTelephonyListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTreatAsEmergencyCall:Z

.field private mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

.field private mWasImsConnection:Z


# direct methods
.method static synthetic -get0(Lcom/android/services/telephony/TelephonyConnection;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/services/telephony/TelephonyConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVoicePrivacyOn:Z

    return v0
.end method

.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/services/telephony/TelephonyConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/services/telephony/TelephonyConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/services/telephony/TelephonyConnection;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVoicePrivacyOn:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/services/telephony/TelephonyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->handleConferenceMergeFailed()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/services/telephony/TelephonyConnection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->handleMultipartyStateChange(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceMergeFailed()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceStarted()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/services/telephony/TelephonyConnection;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->updateConferenceParticipants(Ljava/util/List;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnection;->createExtrasMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/TelephonyConnection;->sExtrasMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSsNotification:Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVoicePrivacyOn:Z

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mForceUpdate:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallDetailsExtras:Landroid/os/Bundle;

    iput v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mSessionModificationState:I

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$1;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$2;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$3;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$3;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsStateOverridden:Z

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionOverriddenState:Lcom/android/internal/telephony/Call$State;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    iput v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudioCodec:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasBeenVideoCall:Z

    invoke-virtual {p0, p2}, Lcom/android/services/telephony/TelephonyConnection;->setTelecomCallId(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    return-void
.end method

.method private applyConferenceTerminationCapabilities(I)I
    .locals 3

    const/4 v2, 0x0

    move v0, p1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isDomainPS()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "support_ims_conference_split"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit16 v0, p1, 0x1000

    :cond_0
    const-string/jumbo v1, "not_support_ims_conference_disconnect"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/phone/TelephonyConfig;->isSINSIM()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsMultiSIM;->getCurrentNetworkPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/phone/TelephonyConfig;->isSINSIM(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit16 v0, v0, 0x2000

    :cond_2
    const-string/jumbo v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "applyConferenceTerminationCapabilities psdomain was ignored"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit16 v0, v0, -0x1001

    and-int/lit16 v0, v0, -0x2001

    :cond_4
    :goto_0
    return v0

    :cond_5
    const-string/jumbo v1, "feature_kdi"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "feature_sbm"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    const-string/jumbo v1, "applyConferenceTerminationCapabilities was ignored"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    and-int/lit16 v0, p1, -0x1001

    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    :cond_7
    or-int/lit16 v0, p1, 0x2000

    or-int/lit16 v0, v0, 0x1000

    goto :goto_0
.end method

.method private applyVoicePrivacyCapabilities(I)I
    .locals 3

    move v0, p1

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVoicePrivacyOn:Z

    const/high16 v2, 0x2000000

    invoke-direct {p0, p1, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    return v0
.end method

.method private static areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    return v5

    :cond_3
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v5

    :cond_5
    return v4
.end method

.method private changeBitmask(IIZ)I
    .locals 1

    if-eqz p3, :cond_0

    or-int v0, p1, p2

    return v0

    :cond_0
    not-int v0, p2

    and-int/2addr v0, p1

    return v0
.end method

.method private clearSecVideoConnection()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isLastConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/vt/SecVideoConnection;->destroy()V

    :cond_0
    iput-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    :cond_1
    return-void
.end method

.method private close()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x65

    const/4 v2, 0x0

    const-string/jumbo v0, "close"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->unregisterSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iput-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iput-boolean v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    const-string/jumbo v0, "enable_teleservice_video_provider"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->clearSecVideoConnection()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->unregisterVideoListener()V

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setIsOutgoingCSVideoCall(Z)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    return-void
.end method

.method private static createExtrasMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "ChildNum"

    const-string/jumbo v2, "android.telecom.extra.CHILD_ADDRESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "DisplayText"

    const-string/jumbo v2, "android.telecom.extra.CALL_SUBJECT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private final fireOnOriginalConnectionConfigured()V
    .locals 3

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;

    invoke-virtual {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;->onOriginalConnectionConfigured(Lcom/android/services/telephony/TelephonyConnection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string/jumbo p0, ""

    :cond_0
    const-string/jumbo v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getForegroundConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method private handleConferenceMergeFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleMultipartyStateChange(Z)V
    .locals 4

    const-string/jumbo v1, "Update multiparty state to %s"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "Y"

    :goto_0
    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const-string/jumbo v0, "N"

    goto :goto_0
.end method

.method private isExternalConnection()Z
    .locals 2

    const/16 v1, 0x10

    iget v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastConnection()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLastConnection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isPullable()Z
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRingingCall()Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "isValidRingingCall, phone is null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "isValidRingingCall, ringing call is not in ringing state"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eq v1, v2, :cond_2

    const-string/jumbo v1, "isValidRingingCall, ringing call connection does not match"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_2
    const-string/jumbo v1, "isValidRingingCall, returning true"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    return v1
.end method

.method private isVideoCapable()Z
    .locals 2

    iget v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifySmartCall()V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const-string/jumbo v5, "support_smart_call"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "support_smart_call_mcc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "support_smart_call_mcc"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->mSmartCallMccSupported:Z

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v5, "smart_call_privacy_notice_donotshow"

    invoke-static {v5, v6}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_2

    const/4 v4, 0x1

    :goto_0
    const-string/jumbo v5, "smart_call_privacy_notice_agree"

    invoke-static {v5, v6}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isUltraPowerSavingMode()Z

    move-result v2

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isEmergencyMode()Z

    move-result v1

    if-eqz v4, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    if-nez v2, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v5, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v5, :cond_1

    const-string/jumbo v5, "first_call"

    invoke-static {v5, v7}, Lcom/android/phone/TeleServiceSystemDB;->getSettingDB(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v7, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getSmartCallNotificationMgr()Lcom/android/phone/SmartCallNotificationMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/SmartCallNotificationMgr;->showSmartCallsFilterNotification()V

    goto :goto_2
.end method

.method private registerSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 2

    const-string/jumbo v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setActiveInternal()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    const-string/jumbo v3, "Should not be called if this is already ACTIVE"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    if-eq v0, p0, :cond_1

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v6, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v6, :cond_4

    const-string/jumbo v3, " state update DISCONNECTING > ACTIVE "

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActiveForcedUpdate()V

    iget-boolean v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setConfFromDisconnectingToActive(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    goto :goto_1
.end method

.method private setTechnologyTypeExtra()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.telecom.extra.CALL_TECHNOLOGY_TYPE"

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->putExtra(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private unregisterSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 1

    const-string/jumbo v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method private updateMultiparty()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifyConferenceStarted()V

    :cond_1
    return-void
.end method

.method private updateSecCallData()V
    .locals 2

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->updateSecCallDetails(Lcom/android/internal/telephony/CallDetails;)V

    return-void
.end method

.method private updateStatusHints()V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f0d0c8c

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/telecom/StatusHints;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200c5

    invoke-static {v5, v6}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-direct {v3, v4, v5, v7}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/android/services/telephony/TelephonyConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    :goto_1
    return-void

    :cond_1
    const v2, 0x7f0d0c8d

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/services/telephony/TelephonyConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    goto :goto_1
.end method


# virtual methods
.method public final addTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->fireOnOriginalConnectionConfigured()V

    :cond_0
    return-object p0
.end method

.method public applyOriginalConnectionCapabilities(I)I
    .locals 3

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x800000

    invoke-direct {p0, p1, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result p1

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v1

    const/16 v2, 0xc00

    invoke-direct {p0, p1, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result p1

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->can(II)Z

    move-result v1

    const/16 v2, 0x300

    invoke-direct {p0, p1, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected buildConnectionCapabilities()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x40000

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->shouldTreatAsEmergencyCall()Z

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method protected buildConnectionProperties()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isInEcm()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method clearOriginalConnection()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForOnHoldTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->unregisterSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->removeListener(Lcom/android/internal/telephony/Connection$Listener;)V

    iput-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->unregisterVideoListener()V

    :cond_1
    return-void
.end method

.method public abstract cloneConnection()Lcom/android/services/telephony/TelephonyConnection;
.end method

.method protected getCall()Lcom/android/internal/telephony/Call;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getCallId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    const-string/jumbo v0, "Null mOriginalConnection, cannot get conf participants."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConferenceParticipants()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHasBeenVideoCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasBeenVideoCall:Z

    return v0
.end method

.method protected getOrigDialStringFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOriginalConnectionState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method protected handleExitedEcmMode()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionProperties()V

    return-void
.end method

.method protected hangup(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v3, :cond_6

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v3, "change_hangup_ipc_in_auto_reject"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isAutoRejectCall(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "isAutoRejectCall - connection.hangup()"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->hangup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "Call to Connection.hangup failed with exception"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v1, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v3, "Attempting to hangup a connection without backing call."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-static {}, Lcom/android/phone/TeleServiceSystemDB;->isAnswerCallAfterThisDisconnect()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnectionUtils;->hasRingingVideoCallWithMultipartyCall(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string/jumbo v3, "connection hangup mOriginalConnection.getCall().hangup();"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    :goto_1
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/phone/TeleServiceSystemDB;->setInComingCallDisconnect(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "connection hangup mOriginalConnection.hangup();"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "connection hangup mOriginalConnection is null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "connection hangup MSG_PRECISE_CALL_STATE_CHANGED_DELAY_DISCONNECT"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x66

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected hasMultipleTopLevelCalls()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v0, v2, :cond_3

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isCSVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    if-ne v3, v1, :cond_2

    iget v3, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method protected isDomainPS()Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget v3, v1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method protected isImsConnection()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isSessionModifying()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mSessionModificationState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSessionModifying-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method isWifi()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    return v0
.end method

.method public onAbort()V
    .locals 2

    const-string/jumbo v0, "onAbort"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    return-void
.end method

.method public onAnswer(I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "onAnswer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/services/utils/SecTelephonyUtil;->boostCPU()V

    const-string/jumbo v1, "onAnswer : boostCPU"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to accept call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 4

    const-string/jumbo v2, "tmo_echolocate_logger"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telecom/CallAudioState;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v1, 0x9

    :goto_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "audiostatechange echolocate, presentation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :cond_0
    const-string/jumbo v2, "NA"

    const/4 v3, 0x4

    invoke-static {v3, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public onDisconnect()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "onDisconnect"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    const-string/jumbo v0, "mOriginalConnection == null, set flag to hangup when connection created"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    goto :goto_0
.end method

.method onDisconnect(Landroid/os/AsyncResult;)V
    .locals 0

    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 3

    const-string/jumbo v0, "onDisconnectConferenceParticipant %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/Connection;->onDisconnectConferenceParticipant(Landroid/net/Uri;)V

    return-void
.end method

.method public onHold()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPostDialContinue, proceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_0
.end method

.method public onPullExternalCall()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "onPullExternalCall - cannot pull non-external call"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->pullExternalCall()V

    :cond_1
    return-void
.end method

.method public onReject()V
    .locals 2

    const-string/jumbo v0, "onReject"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    :cond_0
    invoke-super {p0}, Landroid/telecom/Connection;->onReject()V

    return-void
.end method

.method public onSeparate()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "onSeparate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Call to Connection.separate failed with exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStatusHints()V

    return-void
.end method

.method public onUnhold()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "performConference - %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Failed to conference call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performHold()V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "performHold"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v6, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "Holding active call"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    const-string/jumbo v5, "vzw_volte_ui"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "Exception occurred while trying to put call on hold."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v1, v5, v6}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "Cannot put a call that is not currently active on hold."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performUnhold()V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "performUnhold"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->hasMultipleTopLevelCalls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "Skipping unhold command for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Exception occurred while trying to release call from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "Cannot release a call that is not already on hold from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerVideoListener()V
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    if-nez v0, :cond_0

    const-string/jumbo v0, "registerVideoListener"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->registerVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    :cond_0
    return-void
.end method

.method public final removeTelephonyConnectionListener(Lcom/android/services/telephony/TelephonyConnection$TelephonyConnectionListener;)Lcom/android/services/telephony/TelephonyConnection;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTelephonyListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public requestOfSecVideoProvider(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestOfSecVideoProvider : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/vt/SecVideoConnection;->requestOfSecVideoProvider(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetStateForConference()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->resetStateOverride()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resetStateOverride()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsStateOverridden:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStateInternal()V

    return-void
.end method

.method public sendPreciseCallStateChanged(Lcom/android/internal/telephony/Connection;)V
    .locals 4

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendSessionModificationState(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mSessionModificationState:I

    return-void
.end method

.method public setAudioQuality(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAudioQuality :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudio:Z

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getCodec4test(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAudioQuality audioQuality :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudioCodec:I

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionProperties()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setCallId(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallId:Ljava/lang/String;

    return-void
.end method

.method public setForceUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mForceUpdate:Z

    return-void
.end method

.method public setHasBeenVideoCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasBeenVideoCall:Z

    return-void
.end method

.method public setHoldingForConference()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setStateOverride(Lcom/android/internal/telephony/Call$State;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setOriginalConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;Z)V

    return-void
.end method

.method setOriginalConnection(Lcom/android/internal/telephony/Connection;Z)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "new TelephonyConnection, originalConnection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "  extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->clearOriginalConnection()V

    invoke-static {p0, p2}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->isPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "isPhoneTypeChangedConnection is true"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Connection;->setTelecomCallId(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v8, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v9, v3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x7

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForOnHoldTone(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6, v3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v4, v5}, Lcom/android/services/telephony/TelephonyConnection;->registerSecPhoneNotification(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Connection;->addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Connection;->addListener(Lcom/android/internal/telephony/Connection$Listener;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnectionCapabilities(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isWifi()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/TelephonyConnection;->setWifi(Z)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    const-string/jumbo v4, "enable_teleservice_video_provider"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->isCSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/android/services/telephony/vt/SecVideoConnection;-><init>(Landroid/content/Context;Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v4, v5}, Lcom/android/services/telephony/vt/SecVideoConnection;->registerOriginalConnectionListener(Lcom/android/internal/telephony/Connection$Listener;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVideoProvider videoProvider : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-virtual {v5}, Lcom/android/services/telephony/vt/SecVideoConnection;->getSecVideoProvider()Lcom/android/services/telephony/vt/SecVideoProvider;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->isMultiparty()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsMultiParty:Z

    :cond_5
    const-string/jumbo v4, "psvt_support"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isDomainPS()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "add listener for IMS Video call"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->registerVideoListener()V

    :cond_6
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->setTechnologyTypeExtra()V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getConnectionExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_a

    :goto_0
    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iput-boolean v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mTreatAsEmergencyCall:Z

    :cond_7
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v3

    if-eqz v3, :cond_8

    iput-boolean v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    :cond_8
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->fireOnOriginalConnectionConfigured()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    iget-boolean v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "feature_multisim"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "mNeedHangupWhenConnected is true, hangup call"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    iput-boolean v7, p0, Lcom/android/services/telephony/TelephonyConnection;->mNeedHangupWhenConnected:Z

    :cond_9
    return-void

    :cond_a
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setOriginalConnectionCapabilities(I)V
    .locals 0

    iput p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionCapabilities:I

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionProperties()V

    return-void
.end method

.method setStateOverride(Lcom/android/internal/telephony/Call$State;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsStateOverridden:Z

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionOverriddenState:Lcom/android/internal/telephony/Call$State;

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStateInternal()V

    return-void
.end method

.method public setVideoPauseSupported(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVideoPauseSupported:Z

    return-void
.end method

.method public setWifi(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionProperties()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStatusHints()V

    return-void
.end method

.method protected shouldTreatAsEmergencyCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mTreatAsEmergencyCall:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[TelephonyConnection objId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " telecomCallID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isImsConnection()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string/jumbo v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionProperties()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/TelephonyConnection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " originalConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " partOfConf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConference()Landroid/telecom/Conference;

    move-result-object v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    instance-of v1, p0, Lcom/android/services/telephony/GsmConnection;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "gsm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v1, p0, Lcom/android/services/telephony/CdmaConnection;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "cdma"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public unregisterVideoListener()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "unregisterVideoListener"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->getImsManager()Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsManager;->unregisterVideoListener(Lcom/sec/ims/volte2/IImsVideoListener;)V

    iput-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mVideoListener:Lcom/android/services/telephony/TelephonyConnection$IMSVideoListener;

    :cond_0
    return-void
.end method

.method protected final updateAddress()V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionProperties()V

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v10, :cond_a

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v4

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/services/telephony/TelephonyConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    :cond_0
    const-string/jumbo v10, "Conference call"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "SettingOriginalConnection isSrvccConference"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v10, "com.sec.android.phone.SRVCC_CONFERENCE_CALL"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "Change_Number"

    invoke-virtual {v1, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    const-string/jumbo v10, "get_orig_dial_string_enable"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->phoneIsCdma()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_2
    const-string/jumbo v10, "feature_can"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v10, "feature_kdi"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "feature_chn"

    invoke-static {v10}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->phoneIsCdma()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/services/telephony/TelephonyConnection;->getOrigDialStringFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->getOriginalConnectionFromNumber(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v10, "SettingOriginalConnectio"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v10

    invoke-static {v0, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddressPresentation()I

    move-result v10

    if-eq v8, v10, :cond_7

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateAddress, address changed. isVoiceMailNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_7

    invoke-virtual {p0, v0, v8}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    :cond_7
    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayNamePresentation()I

    move-result v10

    if-eq v6, v10, :cond_9

    :cond_8
    const-string/jumbo v10, "updateAddress, caller display name changed"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {p0, v10, v11}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/services/telephony/TelephonyConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_9
    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v10}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mTreatAsEmergencyCall:Z

    :cond_a
    return-void
.end method

.method protected final updateConnectionCapabilities()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities(Z)V

    return-void
.end method

.method protected final updateConnectionCapabilities(Z)V
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateConnectionCapabilities forceUpdate = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionCapabilities()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyOriginalConnectionCapabilities(I)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsVideoPauseSupported:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isVideoCapable()Z

    move-result v1

    :goto_0
    const/high16 v3, 0x100000

    invoke-direct {p0, v0, v3, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isExternalConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isPullable()Z

    move-result v2

    :cond_0
    const/high16 v1, 0x1000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyConferenceTerminationCapabilities(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyVoicePrivacyCapabilities(I)I

    move-result v0

    invoke-static {v0, p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->applyOperatorCapabilities(ILcom/android/services/telephony/TelephonyConnection;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionCapabilities()I

    move-result v1

    if-ne v1, v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setConnectionCapabilities(I)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected final updateConnectionProperties()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildConnectionProperties()I

    move-result v0

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudioCodec:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    const/4 v4, 0x4

    invoke-direct {p0, v0, v4, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHasHighDefAudioCodec:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    :goto_1
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsWifi:Z

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isExternalConnection()Z

    move-result v1

    const/16 v2, 0x10

    invoke-direct {p0, v0, v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->changeBitmask(IIZ)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionProperties()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setConnectionProperties(I)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected updateExtras(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_4

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-static {v4, p1}, Lcom/android/services/telephony/TelephonyConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-boolean v4, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "Updating extras:"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateExtras Key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Lcom/android/services/telephony/TelephonyConnection;->sExtrasMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/services/telephony/TelephonyConnection;->sExtrasMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v4}, Lcom/android/services/telephony/TelephonyConnection;->putExtras(Landroid/os/Bundle;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string/jumbo v4, "Extras update not required"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateExtras extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/services/telephony/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public updateSecCallDetails(Lcom/android/internal/telephony/CallDetails;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallDetails;->getBundleFromExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string/jumbo v5, "call_type"

    iget v6, p1, Lcom/android/internal/telephony/CallDetails;->call_type:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "call_domain"

    iget v6, p1, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "call_isMpty"

    iget-boolean v6, p1, Lcom/android/internal/telephony/CallDetails;->call_isMpty:Z

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_3

    const-string/jumbo v5, "radiotech"

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "radiotech"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v5, "doNotUpdate"

    invoke-virtual {v2, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallDetailsExtras:Landroid/os/Bundle;

    invoke-static {v5, v2}, Lcom/android/services/telephony/TelephonyConnection;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "update bundle in updateSecCallDetails"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallDetailsExtras:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/os/Bundle;->clear()V

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallDetailsExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/android/services/telephony/TelephonyConnection;->mCallDetailsExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v5}, Lcom/android/services/telephony/TelephonyConnection;->putExtras(Landroid/os/Bundle;)V

    sget-boolean v5, Lcom/android/services/telephony/Log;->DEBUG:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSecCallData "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method updateState()V
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStateInternal()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateSecCallData()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateStatusHints()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionCapabilities()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateConnectionProperties()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateMultiparty()V

    return-void
.end method

.method updateStateInternal()V
    .locals 12

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v8, :cond_2

    const-string/jumbo v6, "handle_alerting_state"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "singapore_volte_ui"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {v7}, Lcom/android/phone/TeleServiceSystemDB;->setAlerting(Z)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mIsStateOverridden:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    if-ne v8, v9, :cond_3

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionOverriddenState:Lcom/android/internal/telephony/Call$State;

    :goto_0
    const-string/jumbo v8, "Update state from %s to %s for ..."

    new-array v9, v11, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    aput-object v10, v9, v7

    aput-object v3, v9, v6

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isOutgoingCSVideoCall : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isOutgoingCSVideoCall()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " - Ringbacktone Played : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isRingbackRequested()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-static {p0, v8, v3}, Lcom/android/services/telephony/retrydial/ConnectionRetryDial;->isPhoneTypeChanged(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Call$State;Lcom/android/internal/telephony/Call$State;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v6, "updateState : isPhoneTypeChanged"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p0, v6, v7}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->close()V

    return-void

    :cond_3
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isOutgoingCSVideoCall()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->isRingbackRequested()Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_5
    :goto_1
    const-string/jumbo v8, "enable_teleservice_video_provider"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v8

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mSecVideoConnection:Lcom/android/services/telephony/vt/SecVideoConnection;

    invoke-virtual {v8, p0}, Lcom/android/services/telephony/vt/SecVideoConnection;->updateConnection(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_6
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v3, :cond_7

    iget-boolean v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mForceUpdate:Z

    if-eqz v8, :cond_9

    :cond_7
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    iput-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mPreviousConnectionState:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setSecCallExtraFromCallDetails(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-boolean v7, p0, Lcom/android/services/telephony/TelephonyConnection;->mForceUpdate:Z

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnection;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    :goto_2
    :pswitch_0
    const-string/jumbo v8, "tmo_echolocate_logger"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v8, :cond_9

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v8

    if-eq v8, v6, :cond_8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update state echolocate, presentation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_8
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    const-string/jumbo v9, "NA"

    invoke-static {v11, v1, v8, v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V

    :cond_9
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->checkAndUpdate(Lcom/android/services/telephony/TelephonyConnection;)V

    const-string/jumbo v8, "handle_alerting_state"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string/jumbo v8, "singapore_volte_ui"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_a
    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_1e

    :goto_3
    invoke-static {v6}, Lcom/android/phone/TeleServiceSystemDB;->setAlerting(Z)V

    :cond_b
    const-string/jumbo v6, "vzw_volte_ui"

    invoke-static {v6}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v6, :cond_c

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v6, :cond_d

    :cond_c
    invoke-static {}, Lcom/android/phone/PhoneDisplayMessage;->dismissVZWMessage()V

    :cond_d
    return-void

    :cond_e
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_5

    sget-object v8, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v8, :cond_5

    const-string/jumbo v8, "Sending the ringtone Message"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v8, "hk_local_ringback_tone"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isMacauOperator()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_f
    invoke-virtual {p0, v6}, Lcom/android/services/telephony/TelephonyConnection;->setRingbackRequested(Z)V

    goto/16 :goto_1

    :pswitch_1
    const-string/jumbo v8, "video_conference"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v8, "ims_voice_conference"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    :cond_10
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_11
    const-string/jumbo v8, "ims_capability_service"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSCapabilities(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_12
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActiveInternal()V

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setDialing()V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setDialing()V

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setRinging()V

    goto/16 :goto_2

    :pswitch_6
    const-string/jumbo v8, " TelephonyConnection call.3rdParty set to 0 "

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v8, "call.3rdParty"

    const-string/jumbo v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "voice_call_recording"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-static {}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getInstance()Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->getRecordedCallId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v5}, Lcom/android/phone/phonevoicerecorder/PhoneVoiceRecorder;->stopRecord()V

    :cond_13
    const-string/jumbo v8, "video_conference"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_14

    const-string/jumbo v8, "ims_voice_conference"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    :cond_14
    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->updateIMSConferencCallMgr(Lcom/android/services/telephony/TelephonyConnection;)V

    :cond_15
    const-string/jumbo v8, "disconnect_cause_description"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-static {p0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isEpdgCall(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v8

    invoke-static {v8}, Lcom/android/services/telephony/operator/usa/TeleServiceExtension;->setEpdgCall(Z)V

    :cond_16
    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v9}, Lcom/android/services/telephony/TelephonyConnectionUtils;->createDisconnecCausetReason(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->showHidedMmiDialog()V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDelayRestoreDefaultSim()Z

    move-result v8

    if-eqz v8, :cond_17

    const-string/jumbo v8, "Need to restore default sim because current call disconnected. "

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setDelayRestoreDefaultSim(Z)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getPrevDefaultSubidForRestoreSim()I

    move-result v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtilsMultiSIM;->setDefaultSubscriptionId(I)Z

    :cond_17
    const-string/jumbo v8, "automatic_answering_machine"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    :cond_18
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AM: isVoiceRecording() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/AnswerMemoRecorder;->isVoiceRecording()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " AM: isStopRecordCalled() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/phone/AnswerMemoRecorder;->isStopRecordCalled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasActiveCall "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/AnswerMemoRecorder;->isVoiceRecording()Z

    move-result v8

    if-eqz v8, :cond_19

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/AnswerMemoRecorder;->isStopRecordCalled()Z

    move-result v8

    if-eqz v8, :cond_1d

    :cond_19
    :goto_4
    const-string/jumbo v8, "vzw_volte_ui"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-static {v7}, Lcom/android/phone/PhoneUtils;->setEpdgW2L(Z)V

    :cond_1a
    const-string/jumbo v8, "tmo_echolocate_logger"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v8}, Lcom/android/services/telephony/TelephonyConnectionUtils;->getEcholocateCallCode(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v1

    iget-object v8, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v8

    if-eq v8, v6, :cond_1b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "update state disconnect echolocate, presentation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {p0, v8, v9}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :cond_1b
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    invoke-static {v11, v1, v8, v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->setEcholocateCallState(ILandroid/net/Uri;ILjava/lang/String;)V

    :cond_1c
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->notifySmartCall()V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->close()V

    goto/16 :goto_2

    :cond_1d
    if-nez v2, :cond_19

    invoke-static {}, Lcom/android/phone/AnswerMemoRecorder;->getInstance()Lcom/android/phone/AnswerMemoRecorder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/AnswerMemoRecorder;->stopRecord()V

    goto :goto_4

    :cond_1e
    move v6, v7

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public wasImsConnection()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mWasImsConnection:Z

    return v0
.end method
