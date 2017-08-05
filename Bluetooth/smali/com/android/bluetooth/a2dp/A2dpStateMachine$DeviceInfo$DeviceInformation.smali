.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceInformation"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mConnectionState:I

.field private mCurCodecId:I

.field private mDelayDisconnectedBroadcast:I

.field private mDelayReport:I

.field private mPeerCodecs:I

.field private mSupportedScmst:I

.field private mTimeOut:I

.field final synthetic this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->this$1:Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mCurCodecId:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mPeerCodecs:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mSupportedScmst:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mTimeOut:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mAddress:Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mDelayDisconnectedBroadcast:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mConnectionState:I

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mDelayReport:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;)V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionState()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mConnectionState:I

    return v0
.end method

.method public getCurCodec()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mCurCodecId:I

    return v0
.end method

.method public getDelayDisconnectedBroadcast()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mDelayDisconnectedBroadcast:I

    return v0
.end method

.method public getDelayReprot()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mDelayReport:I

    return v0
.end method

.method public getPeerCodecs()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mPeerCodecs:I

    return v0
.end method

.method public getScmst()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mSupportedScmst:I

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mTimeOut:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setConnectionState(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mConnectionState:I

    return-void
.end method

.method public setCurCodec(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mCurCodecId:I

    return-void
.end method

.method public setDelayDisconnectedBroadcast(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mDelayDisconnectedBroadcast:I

    return-void
.end method

.method public setDelayReprot(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mDelayReport:I

    return-void
.end method

.method public setPeerCodecs(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mPeerCodecs:I

    return-void
.end method

.method public setScmst(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mSupportedScmst:I

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->mTimeOut:I

    return-void
.end method
