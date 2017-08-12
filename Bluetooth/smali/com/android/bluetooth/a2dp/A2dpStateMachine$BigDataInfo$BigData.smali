.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigData"
.end annotation


# static fields
.field private static final LIMIT_OVERFLOW_COUNT:I = 0x3

.field private static final MAX_MILLI_SEC_DAY:J = 0x5265c00L

.field private static final MAX_OVERFLOW_COUNT:I = 0x270f

.field private static final MAX_SEC_YEAR:J = 0x1e13380L

.field private static final MIN_IN_MS:J = 0xea60L


# instance fields
.field private mBitRate:I

.field private mBusyLevel:I

.field private mConfigLength:I

.field private mConnectedTotalTime:J

.field private mConnectionFailReason:I

.field private mCurCodec:I

.field private mLinkFeedbackInfomation:I

.field private mOverflowCount:I

.field private mPeerCodecs:I

.field private mPeerFullOui:Ljava/lang/String;

.field private mPeerName:Ljava/lang/String;

.field private mPeerOui:Ljava/lang/String;

.field private mPlayStartTime:J

.field private mPlayingTotalTime:J

.field private mPreOverflowCount:I

.field private mPreOverflowTime:J

.field private mServiceEndTime:J

.field private mServiceStartTime:J

.field private mTotalOverflowDuration:J

.field private mUhqaReconfiguredTime:J

.field private mUhqaTotalTime:J

.field final synthetic this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setPeerName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setPeerOui(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;)V

    return-void
.end method

.method private BigData()V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->initBigData()V

    return-void
.end method

.method private checkEachData(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "CCOD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setCurCodec(I)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "A2dpStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkEachData() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getPeerOui()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getCurCodec()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getBusyLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "PCOD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setPeerCodecs(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "OFCN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setOverflowCount(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "BSLV"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setBusyLevel(I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "OFDU"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonLong(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setOverflowDuration(J)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "FAIL"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectionFailReason:I

    const-string/jumbo v0, "ACFR"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->sendBigData(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "LFIF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mLinkFeedbackInfomation:I

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mLinkFeedbackInfomation:I

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerFullOui:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap28(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "BTRT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBitRate:I

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBitRate:I

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerFullOui:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap27(Lcom/android/bluetooth/a2dp/A2dpStateMachine;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "CONF"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->setConfigLength(I)V

    goto/16 :goto_0
.end method

.method private getBigDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CINF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"JVER\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "1.11\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"POUI\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerOui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"NAME\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"CCOD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mCurCodec:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"PCOD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerCodecs:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"CODU\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"STDU\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayingTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"UHDU\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"OFCN\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mOverflowCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"BSLV\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBusyLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"OFDU\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"CONF\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConfigLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBigDataString() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "BMAC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "A2DP_2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "ACFR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"JVER\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "1.11\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"FAIL\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectionFailReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"POUI\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerOui:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"NAME\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private getBusyLevel()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBusyLevel:I

    return v0
.end method

.method private getCurCodec()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mCurCodec:I

    return v0
.end method

.method private getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "A2dpStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getJsonInt( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getJsonLong(Lorg/json/JSONObject;Ljava/lang/String;)J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getJsonLong( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOverflowCount()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mOverflowCount:I

    return v0
.end method

.method private getOverflowDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    return-wide v0
.end method

.method private getPeerCodecs()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerCodecs:I

    return v0
.end method

.method private getPeerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    return-object v0
.end method

.method private getPeerOui()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerOui:Ljava/lang/String;

    return-object v0
.end method

.method private initBigData()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerOui:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerFullOui:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mCurCodec:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerCodecs:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowCount:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mOverflowCount:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBusyLevel:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectionFailReason:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mLinkFeedbackInfomation:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBitRate:I

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceStartTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceEndTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayStartTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayingTotalTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConfigLength:I

    return-void
.end method

.method private setBusyLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mBusyLevel:I

    return-void
.end method

.method private setConfigLength(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConfigLength:I

    return-void
.end method

.method private setCurCodec(I)V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v2, 0x10

    if-ne p1, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mCurCodec:I

    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gtz v2, :cond_2

    const-wide/32 v2, 0x1e13380

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    :cond_3
    iput-wide v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v2, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BigData mUhqaTotalTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tempUhqaTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setOverflowCount(I)V
    .locals 12

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mOverflowCount:I

    const/16 v4, 0x270f

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mOverflowCount:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mOverflowCount:I

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "k2hd_effect"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mCurCodec:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-lt p1, v9, :cond_2

    iput-wide v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowTime:J

    iput v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowCount:I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerFullOui:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap25(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowTime:J

    cmp-long v3, v4, v10

    if-lez v3, :cond_3

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-gez v3, :cond_3

    iget v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowCount:I

    add-int/2addr v3, p1

    if-lt v3, v9, :cond_3

    iput-wide v10, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowTime:J

    iput v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowCount:I

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3, v8}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-set3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerFullOui:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap25(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    return-void

    :cond_3
    iput-wide v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowTime:J

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPreOverflowCount:I

    goto :goto_0
.end method

.method private setOverflowDuration(J)V
    .locals 5

    const-wide/32 v2, 0x5265c00

    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mTotalOverflowDuration:J

    :cond_0
    return-void
.end method

.method private setPeerCodecs(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerCodecs:I

    return-void
.end method

.method private setPeerName(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v3, v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get3(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    and-int/lit16 v1, v3, 0x1f00

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cod: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v3, 0x400

    if-ne v1, v3, :cond_2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v3, "Personal Device"

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "deviceClass is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v3, "Unknown"

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "A2dpStateMachine"

    const-string/jumbo v4, "device is null"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string/jumbo v3, "Unknown"

    iput-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setPeerOui(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getOuiStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerOui:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPeerFullOui:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ParsingStackData(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->checkEachData(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "A2dpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ParsingStackData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public checkPlayingTime(I)V
    .locals 8

    const-wide/16 v6, 0x0

    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayStartTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    cmp-long v2, v0, v6

    if-gtz v2, :cond_2

    const-wide/32 v2, 0x1e13380

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayingTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayingTotalTime:J

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v2, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BigData mPlayingTotalTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mPlayingTotalTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tempPlayingTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkServiceTime(I)V
    .locals 12

    const-wide/16 v10, 0x3e8

    const-wide/32 v8, 0x1e13380

    const-wide/16 v6, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceEndTime:J

    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceEndTime:J

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceStartTime:J

    sub-long/2addr v2, v4

    div-long/2addr v2, v10

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_5

    iput-wide v6, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    :cond_2
    :goto_1
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaReconfiguredTime:J

    sub-long/2addr v2, v4

    div-long v0, v2, v10

    cmp-long v2, v0, v6

    if-gtz v2, :cond_3

    cmp-long v2, v0, v8

    if-gez v2, :cond_4

    :cond_3
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mUhqaTotalTime:J

    :cond_4
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v2, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BigData mConnectedTotalTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_2

    iput-wide v8, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConnectedTotalTime:J

    goto :goto_1
.end method

.method public getConfigLength()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mConfigLength:I

    return v0
.end method

.method public getServiceStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->mServiceStartTime:J

    return-wide v0
.end method

.method public sendBigData(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getBigDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string/jumbo v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;

    iget-object v2, v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get9(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
