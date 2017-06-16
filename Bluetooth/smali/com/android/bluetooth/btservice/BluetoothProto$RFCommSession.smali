.class public final Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RFCommSession"
.end annotation


# static fields
.field public static final RX_BYTES_FIELD_NUMBER:I = 0x1

.field public static final TX_BYTES_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasRxBytes:Z

.field private hasTxBytes:Z

.field private rxBytes_:I

.field private txBytes_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->rxBytes_:I

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->txBytes_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->clearRxBytes()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->clearTxBytes()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->cachedSize:I

    return-object p0
.end method

.method public clearRxBytes()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasRxBytes:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->rxBytes_:I

    return-object p0
.end method

.method public clearTxBytes()Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasTxBytes:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->txBytes_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->cachedSize:I

    return v0
.end method

.method public getRxBytes()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->rxBytes_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasRxBytes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->getRxBytes()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasTxBytes()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->getTxBytes()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->cachedSize:I

    return v0
.end method

.method public getTxBytes()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->txBytes_:I

    return v0
.end method

.method public hasRxBytes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasRxBytes:Z

    return v0
.end method

.method public hasTxBytes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasTxBytes:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 2
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

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->setRxBytes(I)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->setTxBytes(I)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;

    move-result-object v0

    return-object v0
.end method

.method public setRxBytes(I)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasRxBytes:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->rxBytes_:I

    return-object p0
.end method

.method public setTxBytes(I)Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasTxBytes:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->txBytes_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasRxBytes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->getRxBytes()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->hasTxBytes()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$RFCommSession;->getTxBytes()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_1
    return-void
.end method
