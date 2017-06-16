.class public final Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BluetoothSession"
.end annotation


# static fields
.field public static final A2DP_SESSION_FIELD_NUMBER:I = 0x7

.field public static final CONNECTION_TECHNOLOGY_TYPE_BREDR:I = 0x2

.field public static final CONNECTION_TECHNOLOGY_TYPE_FIELD_NUMBER:I = 0x3

.field public static final CONNECTION_TECHNOLOGY_TYPE_LE:I = 0x1

.field public static final CONNECTION_TECHNOLOGY_TYPE_UNKNOWN:I = 0x0

.field public static final DEVICE_CONNECTED_TO_FIELD_NUMBER:I = 0x5

.field public static final DISCONNECT_REASON_FIELD_NUMBER:I = 0x4

.field public static final RFCOMM_SESSION_FIELD_NUMBER:I = 0x6

.field public static final SESSION_DURATION_SEC_FIELD_NUMBER:I = 0x2


# instance fields
.field private a2DpSession_:Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

.field private cachedSize:I

.field private connectionTechnologyType_:I

.field private deviceConnectedTo_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

.field private disconnectReason_:Ljava/lang/String;

.field private hasA2DpSession:Z

.field private hasConnectionTechnologyType:Z

.field private hasDeviceConnectedTo:Z

.field private hasDisconnectReason:Z

.field private hasRfcommSession:Z

.field private hasSessionDurationSec:Z

.field private rfcommSession_:Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

.field private sessionDurationSec_:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->sessionDurationSec_:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->connectionTechnologyType_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    iput-object v2, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    iput-object v2, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->clearSessionDurationSec()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->clearConnectionTechnologyType()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->clearDisconnectReason()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->clearDeviceConnectedTo()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->clearRfcommSession()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->clearA2DpSession()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->cachedSize:I

    return-object p0
.end method

.method public clearA2DpSession()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasA2DpSession:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    return-object p0
.end method

.method public clearConnectionTechnologyType()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasConnectionTechnologyType:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->connectionTechnologyType_:I

    return-object p0
.end method

.method public clearDeviceConnectedTo()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDeviceConnectedTo:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object p0
.end method

.method public clearDisconnectReason()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDisconnectReason:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    return-object p0
.end method

.method public clearRfcommSession()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasRfcommSession:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    return-object p0
.end method

.method public clearSessionDurationSec()Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasSessionDurationSec:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->sessionDurationSec_:J

    return-object p0
.end method

.method public getA2DpSession()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->cachedSize:I

    return v0
.end method

.method public getConnectionTechnologyType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->connectionTechnologyType_:I

    return v0
.end method

.method public getDeviceConnectedTo()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object v0
.end method

.method public getDisconnectReason()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    return-object v0
.end method

.method public getRfcommSession()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasSessionDurationSec()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getSessionDurationSec()J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasConnectionTechnologyType()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getConnectionTechnologyType()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDisconnectReason()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getDisconnectReason()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDeviceConnectedTo()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getDeviceConnectedTo()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasRfcommSession()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getRfcommSession()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasA2DpSession()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getA2DpSession()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->cachedSize:I

    return v0
.end method

.method public getSessionDurationSec()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->sessionDurationSec_:J

    return-wide v0
.end method

.method public hasA2DpSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasA2DpSession:Z

    return v0
.end method

.method public hasConnectionTechnologyType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasConnectionTechnologyType:Z

    return v0
.end method

.method public hasDeviceConnectedTo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDeviceConnectedTo:Z

    return v0
.end method

.method public hasDisconnectReason()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDisconnectReason:Z

    return v0
.end method

.method public hasRfcommSession()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasRfcommSession:Z

    return v0
.end method

.method public hasSessionDurationSec()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasSessionDurationSec:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v4

    if-nez v4, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->setSessionDurationSec(J)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->setConnectionTechnologyType(I)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->setDisconnectReason(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    goto :goto_0

    :sswitch_4
    new-instance v2, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    invoke-direct {v2}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;-><init>()V

    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->setDeviceConnectedTo(Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    goto :goto_0

    :sswitch_5
    new-instance v3, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    invoke-direct {v3}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;-><init>()V

    invoke-virtual {p1, v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->setRfcommSession(Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    goto :goto_0

    :sswitch_6
    new-instance v1, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->setA2DpSession(Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x22 -> :sswitch_3
        0x2a -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;

    move-result-object v0

    return-object v0
.end method

.method public setA2DpSession(Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasA2DpSession:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->a2DpSession_:Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    return-object p0
.end method

.method public setConnectionTechnologyType(I)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasConnectionTechnologyType:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->connectionTechnologyType_:I

    return-object p0
.end method

.method public setDeviceConnectedTo(Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDeviceConnectedTo:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->deviceConnectedTo_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object p0
.end method

.method public setDisconnectReason(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDisconnectReason:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->disconnectReason_:Ljava/lang/String;

    return-object p0
.end method

.method public setRfcommSession(Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasRfcommSession:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->rfcommSession_:Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    return-object p0
.end method

.method public setSessionDurationSec(J)Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasSessionDurationSec:Z

    iput-wide p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->sessionDurationSec_:J

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasSessionDurationSec()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getSessionDurationSec()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasConnectionTechnologyType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getConnectionTechnologyType()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDisconnectReason()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getDisconnectReason()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasDeviceConnectedTo()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getDeviceConnectedTo()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasRfcommSession()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getRfcommSession()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->hasA2DpSession()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$BluetoothSession;->getA2DpSession()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_5
    return-void
.end method
