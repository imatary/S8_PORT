.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;
.super Ljava/lang/Object;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigData"
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field private static final DISCONNECED_REASON_BT_OFF:I = 0x3

.field private static final DISCONNECED_REASON_CALLED_DISCONNECT:I = 0x4

.field private static final DISCONNECED_REASON_FAIL_CREATEAUDIOPATCH:I = 0x1

.field private static final DISCONNECED_REASON_INIT:I = 0x0

.field private static final DISCONNECED_REASON_STACK:I = 0x65

.field private static final DISCONNECED_REASON_STACK_FAIL:I = 0x66

.field private static final DISCONNECED_REASON_STACK_FAIL_RESOURES:I = 0x69

.field private static final DISCONNECED_REASON_STACK_FAIL_SDP:I = 0x67

.field private static final DISCONNECED_REASON_STACK_FAIL_STREAM:I = 0x68

.field private static final DISCONNECED_REASON_TIMEOUT:I = 0x5

.field private static final DISCONNECED_REASON_WITH_MIRRORING:I = 0x2

.field private static final FEATURE_CODE:Ljava/lang/String; = "SINK"

.field private static final JSON_CODE:Ljava/lang/String; = "CODE"

.field private static final JSON_CODU:Ljava/lang/String; = "CODU"

.field private static final JSON_DIRE:Ljava/lang/String; = "DIRE"

.field private static final JSON_JVER:Ljava/lang/String; = "JVER"

.field private static final JSON_PAPR:Ljava/lang/String; = "PAPR"

.field private static final JSON_PCOD:Ljava/lang/String; = "PCOD"

.field private static final JSON_POUI:Ljava/lang/String; = "POUI"

.field private static final JSON_STDU:Ljava/lang/String; = "STDU"

.field private static final JSON_WIFR:Ljava/lang/String; = "WIFR"

.field private static final JSON_WILS:Ljava/lang/String; = "WILS"

.field private static final JSON_WIRS:Ljava/lang/String; = "WIRS"

.field private static final JVER_INFO:Ljava/lang/String; = "1.02"

.field private static final MAX_SEC_YEAR:J = 0x1e13380L

.field private static final PROFILE_BIT:I = 0x1

.field private static final PROFILE_ID:I


# instance fields
.field private mConnectedEndTime:J

.field private mConnectedProfiles:I

.field private mConnectedStartTime:J

.field private mConnectedTotalTime:J

.field private mDisconnectedReason:I

.field private mPeerAppearance:I

.field private mPeerCod:I

.field private mPeerOui:Ljava/lang/String;

.field private mPlayStartTime:J

.field private mPlayingTotalTime:J

.field private mPreConnectedState:I

.field private mPrePlayingState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

.field private mServiceStartTime:J

.field private mWifiFreq:I

.field private mWifiRssi:I

.field private mWifiSpeed:I

.field private mapConnectedProfiles:[[I

.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mServiceStartTime:J

    return-wide v0
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xe

    new-array v0, v0, [[I

    filled-new-array {v3, v3}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    filled-new-array {v4, v4}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v7, v5}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v5, v6}, [I

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x10

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const/16 v2, 0x20

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x7

    const/16 v2, 0x40

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0x80

    filled-new-array {v6, v1}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x100

    filled-new-array {v1, v2}, [I

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0xa

    const/16 v2, 0x200

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xc8

    const/16 v2, 0x400

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0x16

    const/16 v2, 0x1000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v1, 0x10

    const/16 v2, 0x2000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v1, 0xc

    const/16 v2, 0x4000

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mapConnectedProfiles:[[I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    return-void
.end method

.method private BigData()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->initBigData()V

    return-void
.end method

.method private checkEachDatas(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "DIRE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->getJsonInt(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDire : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v0, 0x65

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setDisconnectedReason(I)V

    :cond_1
    return-void
.end method

.method private getBigdataString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\"JVER\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "1.02\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"CODU\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"STDU\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayingTotalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"DIRE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mDisconnectedReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"CODE\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedProfiles:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"WIFR\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"WILS\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"WIRS\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"POUI\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->getPeerOui()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"PCOD\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->getPeerCod()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",\"PAPR\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->getPeerAppearance()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpSinkStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BigdataString() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
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

    const-string/jumbo v2, "A2dpSinkStateMachine"

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

.method private getPeerAppearance()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerAppearance:I

    return v0
.end method

.method private getPeerCod()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerCod:I

    return v0
.end method

.method private getPeerOui()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerOui:Ljava/lang/String;

    return-object v0
.end method

.method private setPeerAppearance(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->semGetAppearance()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerAppearance:I

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "A2dpSinkStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPeerAppearance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerAppearance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setPeerCod(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerCod:I

    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "A2dpSinkStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mPeerCod: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerCod:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setPeerOui(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getOuiStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerOui:Ljava/lang/String;

    :cond_0
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

    invoke-direct {p0, v1, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->checkEachDatas(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "A2dpSinkStateMachine"

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

.method public checkConnectedProfileInfo()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mapConnectedProfiles:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get4(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mapConnectedProfiles:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedProfiles:I

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mapConnectedProfiles:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x1

    aget v2, v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedProfiles:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BigData checkConnectedProfileInfo : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedProfiles:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public checkPlayingTime(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;)V
    .locals 6

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    if-ne p1, v2, :cond_1

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    iput-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPrePlayingState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPrePlayingState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    sget-object v3, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->CREATE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    iput-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPrePlayingState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    const-wide/32 v2, 0x1e13380

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayingTotalTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayingTotalTime:J

    :cond_3
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BigData mPlayingTotalTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayingTotalTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tempPlayingTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public checkServiceTime(I)V
    .locals 8

    const-wide/32 v6, 0x1e13380

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPreConnectedState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedStartTime:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPreConnectedState:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPreConnectedState:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedEndTime:J

    iget-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedEndTime:J

    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    iget-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    iput-wide v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BigData mConnectedTotalTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_2

    iput-wide v6, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    goto :goto_1
.end method

.method public checkWifiInfo()V
    .locals 7

    const/16 v6, 0x270f

    const/4 v5, -0x1

    const/16 v4, -0x7f

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    if-gt v2, v6, :cond_0

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    if-gez v2, :cond_1

    :cond_0
    iput v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    :cond_1
    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    if-gt v2, v6, :cond_2

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    if-gez v2, :cond_3

    :cond_2
    iput v5, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    :cond_3
    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_4

    iget v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    if-ge v2, v4, :cond_5

    :cond_4
    iput v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    :cond_5
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BigData mWifiFreq : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mWifiSpeed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mWifiRssi : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-wrap10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public initBigData()V
    .locals 5

    const/4 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedStartTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedEndTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedTotalTime:J

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPreConnectedState:I

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayStartTime:J

    iput-wide v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPlayingTotalTime:J

    sget-object v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;->RELEASE_AUDIO_PATCH:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPrePlayingState:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$AUDIO_PATCH_STATE;

    iput v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiFreq:I

    iput v4, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiSpeed:I

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mWifiRssi:I

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mConnectedProfiles:I

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mDisconnectedReason:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerOui:Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerCod:I

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mPeerAppearance:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mServiceStartTime:J

    return-void
.end method

.method public sendBigdatas()V
    .locals 4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "app_id"

    const-string/jumbo v3, "com.android.bluetooth"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "feature"

    const-string/jumbo v3, "SINK"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra"

    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->getBigdataString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->-get10(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setBigdataInfo(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setPeerOui(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setPeerCod(Landroid/bluetooth/BluetoothDevice;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->setPeerAppearance(Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->checkConnectedProfileInfo()V

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->checkWifiInfo()V

    return-void
.end method

.method public setDisconnectedReason(I)V
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mDisconnectedReason:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$BigData;->mDisconnectedReason:I

    :cond_0
    return-void
.end method
