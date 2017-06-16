.class public final Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairEvent"
.end annotation


# static fields
.field public static final DEVICE_PAIRED_WITH_FIELD_NUMBER:I = 0x3

.field public static final DISCONNECT_REASON_FIELD_NUMBER:I = 0x1

.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private devicePairedWith_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

.field private disconnectReason_:I

.field private eventTimeMillis_:J

.field private hasDevicePairedWith:Z

.field private hasDisconnectReason:Z

.field private hasEventTimeMillis:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->disconnectReason_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->eventTimeMillis_:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->clearDisconnectReason()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->clearEventTimeMillis()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->clearDevicePairedWith()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->cachedSize:I

    return-object p0
.end method

.method public clearDevicePairedWith()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDevicePairedWith:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object p0
.end method

.method public clearDisconnectReason()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDisconnectReason:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->disconnectReason_:I

    return-object p0
.end method

.method public clearEventTimeMillis()Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasEventTimeMillis:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->eventTimeMillis_:J

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->cachedSize:I

    return v0
.end method

.method public getDevicePairedWith()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object v0
.end method

.method public getDisconnectReason()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->disconnectReason_:I

    return v0
.end method

.method public getEventTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->eventTimeMillis_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDisconnectReason()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getDisconnectReason()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasEventTimeMillis()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getEventTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDevicePairedWith()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getDevicePairedWith()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->cachedSize:I

    return v0
.end method

.method public hasDevicePairedWith()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDevicePairedWith:Z

    return v0
.end method

.method public hasDisconnectReason()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDisconnectReason:Z

    return v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasEventTimeMillis:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 4
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

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->setDisconnectReason(I)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    goto :goto_0

    :sswitch_3
    new-instance v1, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;-><init>()V

    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->setDevicePairedWith(Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;

    move-result-object v0

    return-object v0
.end method

.method public setDevicePairedWith(Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDevicePairedWith:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->devicePairedWith_:Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    return-object p0
.end method

.method public setDisconnectReason(I)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDisconnectReason:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->disconnectReason_:I

    return-object p0
.end method

.method public setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasEventTimeMillis:Z

    iput-wide p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->eventTimeMillis_:J

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDisconnectReason()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getDisconnectReason()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasEventTimeMillis()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getEventTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->hasDevicePairedWith()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$PairEvent;->getDevicePairedWith()Lcom/android/bluetooth/btservice/BluetoothProto$DeviceInfo;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    :cond_2
    return-void
.end method
