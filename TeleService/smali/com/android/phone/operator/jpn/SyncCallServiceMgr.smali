.class public Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.super Ljava/lang/Object;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;,
        Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-Call$StateSwitchesValues:[I

.field private static final synthetic -com-android-phone-ims-Participant$StateSwitchesValues:[I

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;


# instance fields
.field private CallDonditionParam:Landroid/os/Bundle;

.field final mApp:Lcom/android/phone/PhoneGlobals;

.field private mAutoReplyIntentHandler:Landroid/os/Handler;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mEventReceiver:Landroid/content/BroadcastReceiver;

.field mGroupCallNumList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIntentParamBgCall:Landroid/os/Bundle;

.field private mIntentParamFgCall:Landroid/os/Bundle;

.field private mIntentParamRingingCall:Landroid/os/Bundle;

.field private mIntentParamVpCall:Landroid/os/Bundle;

.field mMergeCallNeedDisconnectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field mStateCheckList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;",
            ">;"
        }
    .end annotation
.end field

.field private m_GroupCallConnID:I

.field private wasGroup:Z


# direct methods
.method static synthetic -get0(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mAutoReplyIntentHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Lcom/android/internal/telephony/CallManager;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-telephony-Call$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

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
    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-com-android-internal-telephony-Call$StateSwitchesValues:[I

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

.method private static synthetic -getcom-android-phone-ims-Participant$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-com-android-phone-ims-Participant$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-com-android-phone-ims-Participant$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/ims/Participant$State;->values()[Lcom/android/phone/ims/Participant$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/phone/ims/Participant$State;->ACTIVE:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/phone/ims/Participant$State;->INVALID:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/phone/ims/Participant$State;->NONE:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/phone/ims/Participant$State;->ONHOLD:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/phone/ims/Participant$State;->WAITING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-com-android-phone-ims-Participant$StateSwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->actionTurnOnSpeker()V

    return-void
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->onPhoneStateChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->restartSyncCall(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->DBG:Z

    const-class v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->wasGroup:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->m_GroupCallConnID:I

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->CallDonditionParam:Landroid/os/Bundle;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mAutoReplyIntentHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$1;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;

    invoke-direct {v0, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$2;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private actionTurnOnSpeker()V
    .locals 4

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/utils/SecTelecomAdapter;->isSpeakerOn()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSpeakerOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->turnOnSpeaker(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private broadcastSyncCallMegeCallIntent()V
    .locals 5

    const-string/jumbo v3, "broadcastSyncCallMegeCallIntent"

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v4, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v3, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private convertParticipantToKDDICallState(Lcom/android/phone/ims/Participant$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;
    .locals 2

    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-getcom-android-phone-ims-Participant$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ALERTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->WAITING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private convertToKDDICallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;
    .locals 2

    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->-getcom-android-internal-telephony-Call$StateSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ALERTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->INCOMING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->WAITING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    :pswitch_8
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private convertToKDDICallType(I)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    return-object v0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VIDEO:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->OTHER_TYPE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    return-object v0
.end method

.method private getDialingCount()I
    .locals 5

    const-string/jumbo v3, "getDialingCount"

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDialingCount scl.callState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static getInstance()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->init()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    return-object v0
.end method

.method private getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\\$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string/jumbo v2, "+81"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, v0, v3

    const-string/jumbo v2, "\\+81"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    aget-object v1, v0, v3

    return-object v1

    :cond_1
    return-object v2
.end method

.method static init()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
    .locals 4

    const-class v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-direct {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times! sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sMe:Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initiateIntentParams()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceType"

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string/jumbo v1, "callState"

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string/jumbo v1, "address"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string/jumbo v1, "isGroupCall"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string/jumbo v1, "index"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    const-string/jumbo v1, "dispNumber"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    return-void
.end method

.method private initiateSCover(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;

    invoke-direct {v2, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$4;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    iput-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "initializeCover: SsdkUnsupportedException"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "initializeCover: IllegalArgumentException"

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 2

    if-nez p0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/services/utils/AutoRejectUtils;->isAutoRejectCall(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    return v1
.end method

.method private isGroupcallConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getId()I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getId()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getGroupCallConnId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connection id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isGroupcallConnection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method private makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "makeIndex num is empty"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeIndex index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " isVoiceParty : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "makeIndex voiceparty index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_2
    return-wide v0

    :cond_3
    const-string/jumbo v2, "makeIndex connection is null"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method private needToBlockThisIntent(Landroid/os/Bundle;)Z
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string/jumbo v1, "callState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v1, "index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v1, "isGroupCall"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "needToBlockThisIntent index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , callState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    iget-wide v8, v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->index:J

    cmp-long v1, v4, v8

    if-nez v1, :cond_7

    iget v1, v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    if-ne v3, v1, :cond_0

    iget-boolean v1, v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->isGroupCall:Z

    if-ne v6, v1, :cond_0

    const-string/jumbo v1, "Index and State are same as previous Intent."

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v10

    :cond_0
    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_2

    iget v1, v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget v1, v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_1
    const-string/jumbo v1, "Dialing state intent should not be sent, if previous state is Active or Holding."

    invoke-direct {p0, v1, v10}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return v10

    :cond_2
    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-eq v3, v1, :cond_3

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_4

    :cond_3
    iget v1, v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;->callState:I

    sget-object v2, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "Previous callState is IDLE."

    invoke-direct {p0, v1, v10}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return v10

    :cond_4
    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING_AFTER_DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    const-string/jumbo v1, "callState"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    const-string/jumbo v2, "address"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {v8, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v11

    :cond_6
    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE_AFTER_MERGECALL:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v1

    if-ne v3, v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Change index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    const-string/jumbo v1, "callState"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;

    const-string/jumbo v2, "address"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$StateCheckList;-><init>(Ljava/lang/String;IJZ)V

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v11
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string/jumbo v7, "onDisconnect()..."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/Call;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "onDisconnect isAutoReject !!!"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7, v10}, Lcom/android/phone/PhoneGlobals;->setMergeCallTriggered(Z)V

    :cond_1
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/Call;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "onDisconnect FirstActiveRingingCall"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/Call;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "onDisconnect FirstActiveBgCall"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v0, v7, v1, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/Call;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "onDisconnect ActiveFgCall"

    invoke-direct {p0, v7, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDisconnect connectionCnt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-lez v2, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v7, v8, :cond_7

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v1, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "onDisconnect intent is added to mMergeCallNeedDisconnectList"

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v8, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    invoke-direct {p0, v7, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    if-gtz v2, :cond_6

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {p0, v3, v1, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "onDisconnect send last mergecall disconnectd intent"

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_9
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mMergeCallNeedDisconnectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mStateCheckList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_a
    invoke-direct {p0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isGroupcallConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v7, -0x1

    invoke-virtual {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->setGroupCallConnId(I)V

    return-void

    :cond_b
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v3, v7, v1, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private onPhoneStateChanged()V
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v20

    if-eqz v10, :cond_0

    if-eqz v6, :cond_0

    if-eqz v20, :cond_0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onPhoneStateChanged() - fgcall state: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", bgcall state:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", ringingcall state:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1

    const-string/jumbo v23, "onPhoneStateChanged() - all call IDLE"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v23, "onPhoneStateChanged() - some call state is null"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v15, 0x0

    if-eqz v20, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v15

    if-nez v15, :cond_2

    const-string/jumbo v23, " isAutoReject or call is null or index is 0 "

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return-void

    :cond_2
    if-eqz v15, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v23

    if-eqz v23, :cond_3

    const-string/jumbo v23, "ringingcall isAutoReject "

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    return-void

    :cond_3
    const-string/jumbo v23, "send broadcast ringingcall intent"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    const/16 v16, 0x0

    const/4 v14, 0x0

    if-eqz v6, :cond_10

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/4 v7, 0x0

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v7

    :cond_5
    if-eqz v7, :cond_6

    const-string/jumbo v23, "isGroupCall"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "true"

    invoke-static/range {v23 .. v24}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    :cond_6
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/4 v14, 0x1

    :goto_1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onPhoneStateChanged isVoiceParty : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_7
    :goto_2
    if-nez v14, :cond_8

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_15

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/PhoneGlobals;->setMergeCallTriggered(Z)V

    :cond_8
    :goto_3
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onPhoneStateChanged MergeCallTriggered "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onPhoneStateChanged isGroupCallForVP : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    if-eqz v14, :cond_1d

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumber()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v23, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantStateArray()[I

    move-result-object v21

    const/4 v11, 0x0

    const/4 v8, 0x0

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_16

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    :goto_4
    if-eqz v8, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onPhoneStateChanged fgCall : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_9
    if-nez v8, :cond_a

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_17

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    :goto_5
    if-eqz v8, :cond_a

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "onPhoneStateChanged bgCall : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_a
    if-eqz v8, :cond_1c

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v23

    if-eqz v23, :cond_1a

    const/4 v9, 0x0

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_b

    const-string/jumbo v23, "send broadcast getDialingCount(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getDialingCount()I

    move-result v9

    :cond_b
    const/4 v13, 0x0

    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-nez v23, :cond_c

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    :cond_c
    const-string/jumbo v23, "send broadcast fgcall intent"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v6, :cond_d

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_d

    const-string/jumbo v23, "quickly send broadcast fgcall disconnected intent"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_d
    const/4 v12, 0x0

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v12

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_e

    if-eqz v10, :cond_18

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_18

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getDialingCount() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ge v9, v0, :cond_e

    const-string/jumbo v23, "send broadcast bgcall intent(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string/jumbo v24, "callState"

    sget-object v25, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING_AFTER_DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_e
    :goto_6
    return-void

    :cond_f
    move/from16 v14, v16

    goto/16 :goto_1

    :cond_10
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v7

    if-eqz v7, :cond_11

    const-string/jumbo v23, "isGroupCall"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v24, "true"

    invoke-static/range {v23 .. v24}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    const/16 v16, 0x1

    if-eqz v16, :cond_12

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_12

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->wasGroup:Z

    :cond_11
    :goto_7
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_13

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_12
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_11

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->wasGroup:Z

    goto :goto_7

    :cond_13
    if-eqz v16, :cond_14

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v23

    if-lez v23, :cond_14

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/phone/PhoneGlobals;->setMergeCallTriggered(Z)V

    goto/16 :goto_3

    :cond_16
    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto/16 :goto_4

    :cond_17
    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto/16 :goto_5

    :cond_18
    if-nez v12, :cond_19

    if-eqz v13, :cond_e

    :cond_19
    const-string/jumbo v23, "send broadcast bgcall intent"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_1a
    const/16 v23, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v24, v0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_e

    aget-object v17, v18, v23

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "onPhoneStateChanged "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget v26, v21, v11

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantState(I)Lcom/android/phone/ims/Participant$State;

    move-result-object v22

    sget-object v25, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1b

    sget-object v25, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    if-eq v0, v1, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    :cond_1b
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    :cond_1c
    const-string/jumbo v23, "onPhoneStateChanged conn is null"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v23

    if-eqz v23, :cond_1e

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_e

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallMegeCallIntent()V

    goto/16 :goto_6

    :cond_1e
    const/4 v9, 0x0

    if-eqz v6, :cond_1f

    if-eqz v10, :cond_1f

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1f

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1f

    const-string/jumbo v23, "send broadcast getDialingCount(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getDialingCount()I

    move-result v9

    :cond_1f
    const/4 v13, 0x0

    if-eqz v10, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v10, v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v13

    if-eqz v13, :cond_21

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-nez v23, :cond_20

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_21

    :cond_20
    const-string/jumbo v23, "send broadcast fgcall intent"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v6, :cond_21

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_21

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_21

    const-string/jumbo v23, "quickly send broadcast fgcall disconnected intent"

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamFgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :cond_21
    const/4 v12, 0x0

    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z

    move-result v12

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v23

    if-eqz v23, :cond_e

    if-eqz v10, :cond_22

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v23

    sget-object v24, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "getDialingCount() : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ge v9, v0, :cond_e

    const-string/jumbo v23, "send broadcast bgcall intent(Call established A and B, Then Dialing A to C)"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const-string/jumbo v24, "callState"

    sget-object v25, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING_AFTER_DIALING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v25

    invoke-virtual/range {v23 .. v25}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :cond_22
    if-nez v12, :cond_23

    if-eqz v13, :cond_e

    :cond_23
    const-string/jumbo v23, "send broadcast bgcall intent"

    invoke-static/range {v23 .. v23}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v23, "com.kddi.agent.action.CHANGE_CALL_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamBgCall:Landroid/os/Bundle;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_6
.end method

.method private registerCallReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.kddi.agent.action.DISPLAY_PHONE_APP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.kddi.agent.action.ACTIVE_SPEAKER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.synccall.action.answering_message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1, p1, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private restartSyncCall(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;

    invoke-direct {v1, p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$3;-><init>(Lcom/android/phone/operator/jpn/SyncCallServiceMgr;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string/jumbo v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->needToBlockThisIntent(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->updateGroupCallList(Landroid/os/Bundle;)V

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send broadcast intent action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", extra : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CHANGE action : index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "index"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "callState"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "isGroupCall"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "sendSyncCallDisconnetIntent"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const-string/jumbo v2, "address"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "sendSyncCallDisconnetIntent address is null"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v2, "index"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string/jumbo v2, "sendSyncCallDisconnetIntent index is 0"

    invoke-static {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "callState"

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v2, p1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "callState"

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "isGroupCall"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v2, "com.kddi.agent.action.CHANGE_CALL_STATE"

    invoke-direct {p0, v2, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    const-string/jumbo v3, "address"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamRingingCall:Landroid/os/Bundle;

    const-string/jumbo v3, "address"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private updateGroupCallList(Landroid/os/Bundle;)V
    .locals 5

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    :cond_0
    const-string/jumbo v3, "callState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "isGroupCall"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v3, "address"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->IDLE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toma.updateGroupCallList mGroupCallNumList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private updateSyncCallStateIntentParams(Lcom/android/internal/telephony/Call;Landroid/os/Bundle;Lcom/android/internal/telephony/Connection;Z)Z
    .locals 16

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    if-nez p1, :cond_0

    return v7

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v13, v14, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string/jumbo v13, "updateSyncCallStateIntentParams : isAutoReject !!!"

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v7

    :cond_1
    const/4 v5, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_3

    iget v13, v3, Lcom/android/internal/telephony/CallDetails;->call_type:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertToKDDICallType(I)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    move-result-object v5

    const-string/jumbo v13, "voiceType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->ordinal()I

    move-result v14

    if-eq v13, v14, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v13, v14, :cond_3

    const-string/jumbo v13, "voiceType"

    invoke-virtual {v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->ordinal()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x1

    :cond_3
    if-nez p3, :cond_4

    const-string/jumbo v13, "updateSyncCallStateIntentParams Connection is null."

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object p3

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSyncCallStateIntentParams address "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " ,conn.getNumberPresentation() "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v13

    const-string/jumbo v14, "private_num"

    invoke-virtual {v13, v6, v14}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_6
    :goto_0
    if-eqz v2, :cond_7

    const-string/jumbo v13, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertToKDDICallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    move-result-object v4

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v3, :cond_13

    const-string/jumbo v13, "isGroupCall"

    invoke-virtual {v3, v13}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "true"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSyncCallStateIntentParams getExtraValue(isGroupCall)="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v13}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v10

    :goto_3
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_a

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->INCOMING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-eq v4, v13, :cond_9

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->WAITING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v4, v13, :cond_a

    :cond_9
    const/4 v10, 0x0

    :cond_a
    const-string/jumbo v13, "isGroupCall"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eq v13, v10, :cond_b

    const-string/jumbo v13, "isGroupCall"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v7, 0x1

    :cond_b
    if-nez v10, :cond_c

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v4, v13, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v13

    sget-object v14, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CONFERENCE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v13, v14, :cond_c

    const-string/jumbo v13, "updateSyncCallStateIntentParams : The ACTIVE_AFTER_MERGECALL callstate of \'B\' or \'C\' devices is active after mergecall"

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE_AFTER_MERGECALL:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :cond_c
    const-string/jumbo v13, "callState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v14

    if-eq v13, v14, :cond_e

    sget-object v13, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v4, v13, :cond_d

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isCallInAnsweringMessage()Z

    move-result v13

    if-eqz v13, :cond_d

    sget-object v4, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->AUTOREPLY:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :cond_d
    const-string/jumbo v13, "callState"

    invoke-virtual {v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v7, 0x1

    :cond_e
    const-wide/16 v8, 0x0

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1, v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J

    move-result-wide v8

    const-string/jumbo v13, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v13, v14, v8

    if-eqz v13, :cond_f

    const-string/jumbo v13, "index"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    :cond_f
    const-wide/16 v14, 0x0

    cmp-long v13, v8, v14

    if-nez v13, :cond_15

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSyncCallStateIntentParams Do not need to send intent. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    const/4 v13, 0x0

    return v13

    :cond_10
    const/4 v13, 0x4

    if-ne v12, v13, :cond_11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v13, 0x7f0d031d

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_11
    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v13

    const-string/jumbo v14, "unknown"

    invoke-virtual {v13, v6, v14}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v6, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v13, "address"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_13
    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const-string/jumbo v13, "updateSyncCallStateIntentParams isDisconnect && mGroupCallNumList"

    invoke-static {v13}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_15
    return v7
.end method


# virtual methods
.method public broadcastSyncCallGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "broadcastSyncCallGroupCallStateIntent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string/jumbo v6, "broadcastSyncCallGroupCallStateIntent, Connection is null."

    invoke-static {v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v8

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v6, "+81"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "\\+81"

    const-string/jumbo v7, "0"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "broadcastSyncCallGroupCallStateIntent replace "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "address"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "isGroupCall"

    invoke-virtual {v6, v7, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "voiceType"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-direct {p0, p1, p3, v9}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "broadcastSyncCallGroupCallStateIntent Do not need to send intent."

    invoke-static {v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v8

    :cond_2
    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "index"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "index"

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertParticipantToKDDICallState(Lcom/android/phone/ims/Participant$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    move-result-object v2

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    invoke-direct {p0, v6}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendSyncCallDisconnetIntent(Landroid/os/Bundle;)V

    :goto_0
    return v9

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_5

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v6

    sget-object v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v7

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "callState"

    sget-object v8, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->HOLDING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    invoke-virtual {v8}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    const-string/jumbo v7, "callState"

    invoke-virtual {v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "com.kddi.agent.action.CHANGE_CALL_STATE"

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mIntentParamVpCall:Landroid/os/Bundle;

    invoke-direct {p0, v6, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->sendBroadcastIntent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public broadcastSyncCallMergeCallStateIntent(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;Landroid/os/Bundle;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez p2, :cond_0

    const-string/jumbo v7, "broadcastSyncCallMergeCallStateIntent : Connection is null."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v10

    :cond_0
    if-nez p1, :cond_1

    return v10

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_2

    invoke-static {p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->isAutoRejectCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "broadcastSyncCallMergeCallStateIntent : isAutoReject !!!"

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v10

    :cond_2
    const-string/jumbo v7, "voiceType"

    invoke-virtual {p3, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->convertToKDDICallState(Lcom/android/internal/telephony/Call$State;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    move-result-object v1

    const-string/jumbo v7, "callState"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v8

    if-eq v7, v8, :cond_4

    sget-object v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ACTIVE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v1, v7, :cond_3

    invoke-static {}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->getInstance()Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/operator/jpn/dcm/AnsweringMessage;->isCallInAnsweringMessage()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->AUTOREPLY:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    :cond_3
    const-string/jumbo v7, "callState"

    invoke-virtual {v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->ordinal()I

    move-result v8

    invoke-virtual {p3, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->getMergeCallTriggered()Z

    move-result v7

    if-nez v7, :cond_6

    sget-object v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTING:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-eq v1, v7, :cond_5

    sget-object v7, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;->DISCONNECTED:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallState;

    if-ne v1, v7, :cond_7

    :cond_5
    iget-object v7, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mGroupCallNumList:Ljava/util/ArrayList;

    const-string/jumbo v8, "address"

    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    const/4 v3, 0x1

    :cond_7
    const-string/jumbo v7, "isGroupCall"

    invoke-virtual {p3, v7, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getPhoneNumber(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "broadcastSyncCallMergeCallStateIntent address "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ,conn.getNumberPresentation() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    :cond_8
    const/4 v7, 0x2

    if-ne v6, v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v11}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v7

    const-string/jumbo v8, "private_num"

    invoke-virtual {v7, v2, v8}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    :goto_0
    if-eqz v0, :cond_a

    const-string/jumbo v7, "address"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    :cond_a
    :goto_1
    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, p2, v10}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->makeIndex(Ljava/lang/String;Lcom/android/internal/telephony/Connection;Z)J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_e

    const-string/jumbo v7, "broadcastSyncCallMergeCallStateIntent Do not need to send intent."

    invoke-static {v7}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    return v10

    :cond_b
    const/4 v7, 0x4

    if-ne v6, v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v11}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    const v7, 0x7f0d031d

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_c
    const/4 v7, 0x3

    if-ne v6, v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateSyncCallStateIntentParams NumberPresentation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v11}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/StringManager;->getInstance()Lcom/android/phone/StringManager;

    move-result-object v7

    const-string/jumbo v8, "unknown"

    invoke-virtual {v7, v2, v8}, Lcom/android/phone/StringManager;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_d
    const-string/jumbo v7, "address"

    invoke-virtual {p3, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    const-string/jumbo v7, "index"

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-eqz v7, :cond_f

    const-string/jumbo v7, "index"

    invoke-virtual {p3, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_f
    return v11
.end method

.method public getGroupCallConnId()J
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "voice party connection id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->m_GroupCallConnID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->m_GroupCallConnID:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public registerCallServiceMgr()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->mEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->registerCallReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->initiateIntentParams()V

    invoke-direct {p0, v0}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->initiateSCover(Landroid/content/Context;)V

    return-void
.end method

.method public setGroupCallConnId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "voice party setGroupCallConnId connID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->log(Ljava/lang/String;Z)V

    iput p1, p0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->m_GroupCallConnID:I

    return-void
.end method
