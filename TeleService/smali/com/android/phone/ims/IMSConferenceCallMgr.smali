.class public Lcom/android/phone/ims/IMSConferenceCallMgr;
.super Ljava/lang/Object;
.source "IMSConferenceCallMgr.java"

# interfaces
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ims/IMSConferenceCallMgr$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

.field private static maxCountIMSConference:I

.field private static sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;


# instance fields
.field public lastLogCount:I

.field public lastLogNumber:Ljava/lang/String;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mDirectConfCall:Z

.field private mIMSConferenceCallMgrReceiver:Landroid/content/BroadcastReceiver;

.field private mIsActiveGroupCall:Z

.field private mParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/ims/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mStateChanged:Z

.field private mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

.field private mTimerRunning:Z

.field private noOfRemParticipants:I


# direct methods
.method static synthetic -wrap0(Lcom/android/phone/ims/IMSConferenceCallMgr;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setNameOrNumberForIMSConferenceCall()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    iput v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mDirectConfCall:Z

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mStateChanged:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iput v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogCount:I

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallMgr$1;

    invoke-direct {v0, p0}, Lcom/android/phone/ims/IMSConferenceCallMgr$1;-><init>(Lcom/android/phone/ims/IMSConferenceCallMgr;)V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIMSConferenceCallMgrReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "ims_voice_conference_cmcc"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput v2, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    return-void

    :cond_0
    const-string/jumbo v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1e

    sput v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "ims_voice_conference_vzw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput v2, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    goto :goto_0

    :cond_2
    const/16 v0, 0xa

    sput v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    goto :goto_0
.end method

.method private englog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->DBG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getAddUserToConfCall(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallUtils;->addUserToConfCall(Ljava/lang/String;Z)V

    return-void
.end method

.method public static getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;
    .locals 1

    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->init()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;

    return-object v0
.end method

.method public static getSIMNumber()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallUtils;->getSIMNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static init()Lcom/android/phone/ims/IMSConferenceCallMgr;
    .locals 4

    const-class v1, Lcom/android/phone/ims/IMSConferenceCallMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-direct {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;-><init>()V

    sput-object v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;

    :goto_0
    sget-object v0, Lcom/android/phone/ims/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    const-string/jumbo v0, "[IMSConferenceCallMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->sInstance:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/phone/ims/IMSConferenceCallUtils;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "[IMSConferenceCallMgr]"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setNameOrNumberForIMSConferenceCall()V
    .locals 4

    const-string/jumbo v1, "[IMSConferenceCallMgr]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setNameOrNumberForIMSConferenceCall mTelephonyConnection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->getSecCallExtra(Ljava/lang/String;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v1, v2, v0}, Lcom/android/services/utils/SecTelecomAdapter;->updateSecCallExtra(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/services/telephony/common/SecCallExtra;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setNameForIMSConference(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setNumberForIMSConference(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    :cond_0
    const-string/jumbo v1, "[addParticipant] fail  here!"

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isNONE()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[addParticipant] already added number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Participant.State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/phone/ims/Participant;->update(Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    :goto_0
    const-string/jumbo v1, "addParticipant"

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/Participant;->dump(Ljava/lang/String;)V

    return v3

    :cond_2
    new-instance v0, Lcom/android/phone/ims/Participant;

    invoke-direct {v0, p1}, Lcom/android/phone/ims/Participant;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Lcom/android/phone/ims/Participant;->update(Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/ims/Participant;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v4, "alreadyAddedUser enter"

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    move-object v3, p1

    const-string/jumbo v4, "feature_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Lcom/android/phone/ims/IMSConferenceCallUtils;->modifiedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(I)Lcom/android/phone/ims/Participant;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "alreadyAddedUser ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : TRUE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-object v1

    :cond_3
    const/4 v2, 0x0

    iget-object v4, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string/jumbo v4, "feature_chn"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v2, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    :cond_4
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "alreadyAddedUser - Same participant - number from list : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " number from stack : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-object v1

    :cond_5
    iget-object v4, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/phone/ims/IMSConferenceCallUtils;->modifiedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    return-object v5
.end method

.method public cleanParticipantsList()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "remain_disconnected_list_conference"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disconnectParticipant(Lcom/android/phone/ims/Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 2

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->saveParticipantLog(Lcom/android/phone/ims/Participant;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v1, "disconnectParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/ims/Participant;->dump(Ljava/lang/String;)V

    return-void
.end method

.method public disconnectedAllParticipants(Lcom/android/internal/telephony/Connection;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[disconnectedAllParticipants] before : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ims/Participant;

    sget-object v3, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->updateParticipant(Lcom/android/phone/ims/Participant;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->initParticipantsList()V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[disconnectedAllParticipants] after  :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/TeleServiceSystemDB;->setName4startIMSConference(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/TeleServiceSystemDB;->setNumber4startIMSConference(Ljava/lang/String;)V

    return-void
.end method

.method public getActiveCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    iget-object v3, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getActiveCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return v0
.end method

.method public getAliveParticipantNumber()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/phone/ims/IMSConferenceCallUtils;->makeNumber(ZLjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliveParticipantNumberArray()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    iget-object v3, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getAliveParticipantNumberList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    iget-object v3, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getAliveParticipantStateArray()[I
    .locals 6

    sget v5, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v4, v5, [I

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v5, v3, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v5}, Lcom/android/phone/ims/Participant$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    iget-object v5, v5, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getIMSConferenceParticipantState(Lcom/android/phone/ims/Participant$State;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getAliveStateCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    iget-object v3, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getAliveStateCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return v0
.end method

.method public getConferenceCallConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ims/Participant;

    iget-object v3, v2, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isACTIVE()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v2, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isONHOLD()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getConferenceString : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public getDeletableCount()I
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    iget-object v3, v1, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isDELETABLE()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getDeletableCount] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return v0
.end method

.method public getDeletableParticipant(I)Lcom/android/phone/ims/Participant;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    :cond_0
    const-string/jumbo v2, "[getDeletableParticipant] idx is not valid"

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-object v3

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ims/Participant;

    iget-object v2, v2, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2}, Lcom/android/phone/ims/Participant$State;->isDELETABLE()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v0, p1, :cond_2

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ims/Participant;

    return-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public getDialedParticipantNumberList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ims/Participant;

    iget-object v2, v2, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2}, Lcom/android/phone/ims/Participant$State;->isDIALABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/ims/Participant;

    iget-object v2, v2, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFirstCallerForIMSConference()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFirstCallerForIMSConference state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v4}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v3}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_4

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    iget v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    :cond_2
    :goto_0
    sget-boolean v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFirstCallerForIMSConference :: firstCaller="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  noOfRemParticipants="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :cond_3
    return-object v1

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    goto :goto_0
.end method

.method public getIMSConferenceParticipantState(Lcom/android/phone/ims/Participant$State;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isINVALID()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isNONE()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isIDLE()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isWAITING()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isDIALING()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isALERTING()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isACTIVE()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isONHOLD()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getIMSConferenceParticipantState] ignored state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIMSConferenceParticipantStatus(Lcom/android/phone/ims/Participant$Status;)I
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$Status;->isIDLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$Status;->isWAITING()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$Status;->isCONNECTING()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$Status;->isCONNECTED()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$Status;->isDISCONNECTED()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/android/phone/ims/Participant$Status;->isFAILED()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getIMSConferenceParticipantStatus] ignored Status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNameForIMSConference()Ljava/lang/String;
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v9

    :cond_0
    const-string/jumbo v8, "ims_voice_conference_vzw"

    invoke-static {v8}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    :goto_0
    return-object v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ims/IMSConferenceCallUtils;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v10

    iget v10, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0d099a

    invoke-virtual {v8, v10, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v4, :cond_1

    iget v8, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    if-nez v8, :cond_3

    move-object v5, v4

    goto :goto_0

    :cond_3
    move-object v5, v7

    goto :goto_0
.end method

.method public getNumberForIMSConference()Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    const-string/jumbo v4, "ims_voice_conference_vzw"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v2, " "

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getFirstCallerForIMSConference()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    iget v6, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const v6, 0x7f0d099a

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    if-nez v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method public getParticipant(I)Lcom/android/phone/ims/Participant;
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "[getParticipant] idx is not valid"

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[getParticipant] number : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant;

    return-object v0
.end method

.method public getParticipant(Ljava/lang/String;)Lcom/android/phone/ims/Participant;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v2, "[getParticipant] number == null"

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-object v4

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getParticipant] number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant;

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v4
.end method

.method public getParticipantCreateTimeArray()[J
    .locals 8

    sget v5, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v4, v5, [J

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    iget-wide v6, v5, Lcom/android/phone/ims/Participant;->mCreateTime:J

    aput-wide v6, v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getParticipantDurationArray()[J
    .locals 8

    sget v5, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v4, v5, [J

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    iget-wide v6, v5, Lcom/android/phone/ims/Participant;->mDuration:J

    aput-wide v6, v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getParticipantLookupKeyArray()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mLookupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getParticipantNameArray()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getParticipantNumberArray()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getParticipantPhotoUriArray()[Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    iget-object v3, v3, Lcom/android/phone/ims/Participant;->mPhoto_Uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getParticipantStartDurationArray()[J
    .locals 8

    sget v5, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v4, v5, [J

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    iget-wide v6, v5, Lcom/android/phone/ims/Participant;->mStartDuration:J

    aput-wide v6, v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getParticipantState(I)Lcom/android/phone/ims/Participant$State;
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/phone/ims/Participant$State;->NONE:Lcom/android/phone/ims/Participant$State;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant;

    iget-object v0, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    return-object v0
.end method

.method public getParticipantState(Ljava/lang/String;)Lcom/android/phone/ims/Participant$State;
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant;

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getParticipantState] this number is exist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    return-object v2

    :cond_1
    sget-object v2, Lcom/android/phone/ims/Participant$State;->NONE:Lcom/android/phone/ims/Participant$State;

    return-object v2
.end method

.method public getParticipantStateArray()[I
    .locals 6

    sget v5, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v4, v5, [I

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    iget-object v5, v5, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getIMSConferenceParticipantState(Lcom/android/phone/ims/Participant$State;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getParticipantStatusArray()[I
    .locals 6

    sget v5, Lcom/android/phone/ims/IMSConferenceCallMgr;->maxCountIMSConference:I

    new-array v4, v5, [I

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-lez v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/phone/ims/Participant;

    if-eqz v3, :cond_0

    add-int/lit8 v1, v0, 0x1

    iget-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/ims/Participant;

    iget-object v5, v5, Lcom/android/phone/ims/Participant;->mStatus:Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getIMSConferenceParticipantStatus(Lcom/android/phone/ims/Participant$Status;)I

    move-result v5

    aput v5, v4, v0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getParticipantsCount()I
    .locals 3

    const-string/jumbo v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[getParticipantsCount] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStateChanged()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mStateChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mStateChanged:Z

    return v0
.end method

.method public handleConfError()V
    .locals 10

    iget-object v7, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v7}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    const-string/jumbo v5, "conferror"

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v7, "[IMSConferenceCallMgr]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[handleConfError] errorCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    packed-switch v3, :pswitch_data_0

    :cond_1
    :goto_0
    const-string/jumbo v7, ""

    invoke-virtual {v0, v5, v7}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0998

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/ims/IMSConferenceCallUtils;->showToast(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getInstance()Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->initParticipantsList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x451
        :pswitch_0
    .end packed-switch
.end method

.method public initParticipantsList()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v0, "[IMSConferenceCallMgr]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initParticipantsList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public isActiveGroupCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    return v0
.end method

.method public isAvailableAddUser()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v0}, Lcom/android/services/telephony/TelephonyConnectionUtils;->isAvailableAddUser(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectConfCall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mDirectConfCall:Z

    return v0
.end method

.method public isIncomingCall()Z
    .locals 1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public makeNameAndNumberForStartIMSConference()Ljava/lang/String;
    .locals 14

    const v13, 0x7f0d099a

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v7, "ims_voice_conference_vzw"

    invoke-static {v7}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getConferenceString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, " "

    :cond_0
    :goto_0
    invoke-static {v4}, Lcom/android/phone/TeleServiceSystemDB;->setName4startIMSConference(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/phone/TeleServiceSystemDB;->setNumber4startIMSConference(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "save to SettingDB name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , number : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallUtils;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v3, v8, v10

    iget v9, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v13, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v3, :cond_2

    iget v7, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    if-nez v7, :cond_3

    move-object v4, v3

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-array v8, v12, [Ljava/lang/Object;

    aput-object v1, v8, v10

    iget v9, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v7, v13, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->noOfRemParticipants:I

    if-nez v7, :cond_4

    move-object v5, v1

    goto :goto_0

    :cond_3
    move-object v4, v6

    goto :goto_1

    :cond_4
    move-object v5, v6

    goto :goto_0
.end method

.method public mapConfState(I)Lcom/android/phone/ims/Participant$State;
    .locals 3

    sget-object v0, Lcom/android/phone/ims/Participant$State;->INVALID:Lcom/android/phone/ims/Participant$State;

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[mapConfState] ignored notiState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/phone/ims/Participant$State;->ACTIVE:Lcom/android/phone/ims/Participant$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/phone/ims/Participant$State;->ONHOLD:Lcom/android/phone/ims/Participant$State;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConferenceDisconnect(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onConferenceDisconnect() - connection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setLastLog()V

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->disconnectedAllParticipants(Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->initParticipantsList()V

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIMSConferenceCallMgrReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIMSConferenceCallMgrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setStateChanged(Z)V

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->onConferenceDisconnect()V

    :cond_1
    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v3}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateKeypad()V

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isAliveVoLTEGroupCall()Z

    move-result v3

    if-nez v3, :cond_3

    iput-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    :cond_3
    iput-object v5, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onConferenceStateChanged(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTelephonyConnection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConferenceStateChanged() - connection : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v0

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isIMSConfCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_8

    iget-boolean v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_2

    const-string/jumbo v4, "ims_voice_conference_kddi"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "[KDDI] Do not show conntected toast"

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIMSConferenceCallMgrReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_3

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIMSConferenceCallMgrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    iput-boolean v7, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v4

    if-ne v4, v7, :cond_5

    iget-object v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/ims/Participant;

    sget-object v5, Lcom/android/phone/ims/Participant$State;->ACTIVE:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {p0, v4, v5, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->updateParticipant(Lcom/android/phone/ims/Participant;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->update(Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setStateChanged(Z)V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->setLastLog()V

    return-void

    :cond_6
    iget v4, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-nez v4, :cond_7

    invoke-virtual {p0, v7}, Lcom/android/phone/ims/IMSConferenceCallMgr;->showConnectedToast(Z)V

    goto :goto_0

    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v4, v8, :cond_2

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "tablet_device"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/phone/ims/IMSConferenceCallMgr;->showConnectedToast(Z)V

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    iget v4, v0, Lcom/android/internal/telephony/CallDetails;->call_type:I

    if-ne v4, v8, :cond_9

    const-string/jumbo v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->handleConfError()V

    :cond_9
    iput-boolean v6, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mIsActiveGroupCall:Z

    goto :goto_1
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[handleTImer] onTickForCallTimeElapsed timeElapsed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/phone/ims/PhoneDateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->updateElapsedTime(J)V

    return-void
.end method

.method public prepareDial(Lcom/android/internal/telephony/Connection;)V
    .locals 3

    const-string/jumbo v2, "[prepareDial] ender"

    invoke-direct {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant;

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2}, Lcom/android/phone/ims/Participant$State;->isDIALABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v0, v2, p1}, Lcom/android/phone/ims/Participant;->update(Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    const-string/jumbo v2, "prepareDial"

    invoke-virtual {v0, v2}, Lcom/android/phone/ims/Participant;->dump(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepareDialNumber(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .locals 6

    const-string/jumbo v4, "[prepareDialNumber] ender"

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/ims/Participant;

    iget-object v4, v1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v1, v4, p2}, Lcom/android/phone/ims/Participant;->update(Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    const-string/jumbo v4, "prepareDial"

    invoke-virtual {v1, v4}, Lcom/android/phone/ims/Participant;->dump(Ljava/lang/String;)V

    const-string/jumbo v4, "support_sync_call"

    invoke-static {v4}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantState(Ljava/lang/String;)Lcom/android/phone/ims/Participant$State;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[prepareDialNumber] participantState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isDIALING()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getInstance()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[prepareDialNumber] synccall number : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    sget-object v4, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v0, p1, v4, p2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeParticipant(Lcom/android/phone/ims/Participant;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const-string/jumbo v1, "removeParticipant"

    invoke-virtual {p1, v1}, Lcom/android/phone/ims/Participant;->dump(Ljava/lang/String;)V

    return-void
.end method

.method public removeParticipant(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    :cond_0
    return-void
.end method

.method public resetLastLog()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogCount:I

    return-void
.end method

.method public saveParticipantLog(Lcom/android/phone/ims/Participant;Lcom/android/internal/telephony/Connection;)V
    .locals 6

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[saveParticipantLog] Number["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] CreateTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/phone/ims/Participant;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] Duration["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/phone/ims/Participant;->mDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    iget-wide v2, p1, Lcom/android/phone/ims/Participant;->mCreateTime:J

    iget-wide v4, p1, Lcom/android/phone/ims/Participant;->mDuration:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/android/services/telephony/TelephonyConnectionUtils;->saveParticipantLog(Ljava/lang/String;JJ)V

    goto :goto_0
.end method

.method public setActivity(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    sput-object p1, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    return-void
.end method

.method public setDirectConfCall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mDirectConfCall:Z

    return-void
.end method

.method public setDisconnectVolteGroupCall(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/phone/ims/IMSConferenceCallUtils;->outUserFromConfCall(Ljava/lang/String;Z)V

    const-string/jumbo v0, "ims_voice_conference_vzw"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setLastLog()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getAliveParticipantNumberList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->lastLogCount:I

    :cond_0
    return-void
.end method

.method public setStateChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mStateChanged:Z

    return-void
.end method

.method public showConnectedToast(Z)V
    .locals 3

    const-string/jumbo v1, "ims_voice_conference_vzw"

    invoke-static {v1}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0a10

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallUtils;->showLongToast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d099b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallUtils;->showLongToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showDisconnectedToast(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "ims_voice_conference_vzw"

    invoke-static {v2}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/phone/ims/IMSConferenceCallUtils;->getCallerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, p1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x7f0d0997

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/ims/IMSConferenceCallUtils;->showToast(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public showUserMessage(ILjava/lang/String;)V
    .locals 17

    const/4 v14, -0x1

    const-string/jumbo v11, ""

    const-string/jumbo v13, ""

    const/16 v3, 0x193

    const/16 v5, 0x194

    const/16 v7, 0x198

    const/16 v10, 0x1e0

    const/16 v1, 0x1e6

    const/16 v6, 0x1f3

    const/16 v8, 0x1f4

    const/16 v9, 0x1f7

    const/16 v2, 0x25b

    const/16 v4, 0x25e

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "[showUserMessage] number = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "  msgType = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    const/4 v15, -0x1

    if-ne v14, v15, :cond_0

    return-void

    :sswitch_0
    const-string/jumbo v11, "(403)"

    const v14, 0x7f0d0a02

    goto :goto_0

    :sswitch_1
    const-string/jumbo v11, "(404)"

    const v14, 0x7f0d0a05

    goto :goto_0

    :sswitch_2
    const-string/jumbo v11, "(408)"

    const v14, 0x7f0d0a07

    goto :goto_0

    :sswitch_3
    const-string/jumbo v11, "(480)"

    const v14, 0x7f0d0a03

    goto :goto_0

    :sswitch_4
    const-string/jumbo v11, "(486)"

    const v14, 0x7f0d0a09

    goto :goto_0

    :sswitch_5
    const-string/jumbo v11, "(499)"

    const v14, 0x7f0d0a0a

    goto :goto_0

    :sswitch_6
    const-string/jumbo v11, "(500)"

    const v14, 0x7f0d0a07

    goto :goto_0

    :sswitch_7
    const-string/jumbo v11, "(503)"

    const v14, 0x7f0d0a08

    goto :goto_0

    :sswitch_8
    const-string/jumbo v11, "(603)"

    const v14, 0x7f0d0a04

    goto :goto_0

    :sswitch_9
    const-string/jumbo v11, "(606)"

    const v14, 0x7f0d0a06

    goto :goto_0

    :cond_0
    const-string/jumbo v15, ""

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_1
    invoke-static {v13}, Lcom/android/phone/ims/IMSConferenceCallUtils;->showToast(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x193 -> :sswitch_0
        0x194 -> :sswitch_1
        0x198 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x1e6 -> :sswitch_4
        0x1f3 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f7 -> :sswitch_7
        0x25b -> :sswitch_8
        0x25e -> :sswitch_9
    .end sparse-switch
.end method

.method startTimer(Lcom/android/internal/telephony/Call;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[handleTImer] startTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    goto :goto_0
.end method

.method stopTimer()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[handleTImer] stopTimer mTimerRunning : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mTimerRunning:Z

    :cond_0
    return-void
.end method

.method public update(Lcom/android/internal/telephony/Connection;)V
    .locals 21

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getSIMNumber()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string/jumbo v9, "participantlist"

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/CallDetails;->getExtraValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[update] participantlist "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    if-eqz v13, :cond_d

    const/16 v19, 0x2c

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const-string/jumbo v19, "ims_voice_conference_kddi"

    invoke-static/range {v19 .. v19}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_2
    const-string/jumbo v19, "\\,"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v12, ""

    array-length v10, v4

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ge v10, v0, :cond_3

    return-void

    :cond_3
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v18, 0x0

    const-string/jumbo v16, ""

    const-string/jumbo v14, ""

    sget-object v19, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-eqz v19, :cond_4

    sget-object v19, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/ims/IMSConferenceCallActivity;->storeCheckedItem()V

    :cond_4
    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_c

    aget-object v19, v4, v7

    const/16 v20, 0x3a

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_5

    return-void

    :cond_5
    aget-object v19, v4, v7

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v19, v4, v7

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    aget-object v19, v4, v7

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[update] dialStrings[ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "] number : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->mapConfState(I)Lcom/android/phone/ims/Participant$State;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/ims/Participant$State;->isINVALID()Z

    move-result v19

    if-eqz v19, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[update] ignored INVALID  orginal status is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :cond_6
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    const/4 v6, -0x1

    const-string/jumbo v16, ""

    const-string/jumbo v14, ""

    const/16 v19, 0x2f

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v6, v0, :cond_b

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v12, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v19

    if-eqz v19, :cond_8

    iget-object v0, v8, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/ims/Participant$State;->isOutgoing()Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Lcom/android/phone/ims/IMSConferenceCallMgr;->showUserMessage(ILjava/lang/String;)V

    :cond_8
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    invoke-virtual {v0, v14, v1, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v19

    if-nez v19, :cond_6

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v19

    if-lez v19, :cond_a

    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    aget-object v19, v4, v7

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    :cond_b
    move-object v14, v12

    goto :goto_2

    :cond_c
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v3, v9, v0}, Lcom/android/internal/telephony/CallDetails;->setExtraValue(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v19, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-eqz v19, :cond_d

    sget-object v19, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateDeletableParticipant()V

    :cond_d
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[update] Participant count is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantsCount()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void
.end method

.method public updateElapsedTime(J)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getActiveCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    sget-object v2, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/phone/ims/IMSConferenceCallMgr;->mParticipantsList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant;

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2}, Lcom/android/phone/ims/Participant$State;->isACTIVE()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v2}, Lcom/android/phone/ims/Participant$State;->isONHOLD()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    iget-wide v2, v0, Lcom/android/phone/ims/Participant;->mStartDuration:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long v2, p1, v2

    iput-wide v2, v0, Lcom/android/phone/ims/Participant;->mElapsedTime:J

    sget-object v2, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/phone/ims/IMSConferenceCallMgr;->mainActivity:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-virtual {v2}, Lcom/android/phone/ims/IMSConferenceCallActivity;->updateScreen()V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public updateParticipant(Lcom/android/phone/ims/Participant;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "[updateParticipant] fail  info is not valid "

    invoke-direct {p0, v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->updateParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method public updateParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V
    .locals 10

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    :cond_0
    const-string/jumbo v5, "[updateParticipant] fail  number is not valid "

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v5, "support_uwa"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isGuestMode()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_2
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[updateParticipant] number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipant(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v2

    const-string/jumbo v5, "support_sync_call"

    invoke-static {v5}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->getParticipantState(Ljava/lang/String;)Lcom/android/phone/ims/Participant$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/android/phone/ims/Participant$State;->isIDLE()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    :goto_1
    if-nez v2, :cond_8

    invoke-virtual {p0, p1}, Lcom/android/phone/ims/IMSConferenceCallMgr;->alreadyAddedUser(Ljava/lang/String;)Lcom/android/phone/ims/Participant;

    move-result-object v2

    if-nez v2, :cond_8

    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isNONE()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[updateParticipant] already removed number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_5
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_2

    invoke-static {}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->getInstance()Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;->broadcastUwaGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->getInstance()Lcom/android/phone/operator/jpn/SyncCallServiceMgr;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[updateParticipant] synccall number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " prevstate : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " state : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->englog(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->broadcastSyncCallGroupCallStateIntent(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->getId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr;->setGroupCallConnId(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->addParticipant(Ljava/lang/String;Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isDISCONNECTED()Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v2, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v5}, Lcom/android/phone/ims/Participant$State;->isACTIVE()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v2, Lcom/android/phone/ims/Participant;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/phone/ims/IMSConferenceCallMgr;->showDisconnectedToast(Ljava/lang/String;)V

    :cond_9
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    :goto_3
    const-string/jumbo v5, "updateParticipant"

    invoke-virtual {v2, v5}, Lcom/android/phone/ims/Participant;->dump(Ljava/lang/String;)V

    return-void

    :cond_a
    if-eqz p3, :cond_c

    iget-object v5, v2, Lcom/android/phone/ims/Participant;->mState:Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v5}, Lcom/android/phone/ims/Participant$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v2, p2, p3}, Lcom/android/phone/ims/Participant;->update(Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    iget-wide v6, v2, Lcom/android/phone/ims/Participant;->mCreateTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_b

    invoke-virtual {p0, v2, p3}, Lcom/android/phone/ims/IMSConferenceCallMgr;->disconnectParticipant(Lcom/android/phone/ims/Participant;Lcom/android/internal/telephony/Connection;)V

    goto :goto_3

    :cond_b
    invoke-virtual {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    goto :goto_3

    :cond_d
    invoke-virtual {p2}, Lcom/android/phone/ims/Participant$State;->isNONE()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0, v2}, Lcom/android/phone/ims/IMSConferenceCallMgr;->removeParticipant(Lcom/android/phone/ims/Participant;)V

    goto :goto_3

    :cond_e
    invoke-virtual {v2, p2, p3}, Lcom/android/phone/ims/Participant;->update(Lcom/android/phone/ims/Participant$State;Lcom/android/internal/telephony/Connection;)V

    goto :goto_3
.end method
