.class public final Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "SapApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/android/btsap/SapApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RIL_SIM_SAP_TRANSFER_ATR_RSP"
.end annotation


# static fields
.field public static final ATR_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1

.field public static final RIL_E_GENERIC_FAILURE:I = 0x1

.field public static final RIL_E_SIM_ABSENT:I = 0x4

.field public static final RIL_E_SIM_ALREADY_POWERED_OFF:I = 0x3

.field public static final RIL_E_SIM_ALREADY_POWERED_ON:I = 0x12

.field public static final RIL_E_SIM_DATA_NOT_AVAILABLE:I = 0x6

.field public static final RIL_E_SUCCESS:I


# instance fields
.field private atr_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private cachedSize:I

.field private hasAtr:Z

.field private hasResponse:Z

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    invoke-direct {v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;-><init>()V

    invoke-virtual {v0, p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    return-object v0
.end method


# virtual methods
.method public final clear()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->clearAtr()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    const/4 v0, -0x1

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    return-object p0
.end method

.method public clearAtr()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr:Z

    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object p0
.end method

.method public clearResponse()Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    return-object p0
.end method

.method public getAtr()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    iget-object v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    return v0
.end method

.method public getResponse()I
    .locals 1

    iget v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getAtr()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->cachedSize:I

    return v0
.end method

.method public hasAtr()Z
    .locals 1

    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
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

    invoke-virtual {p0, p1, v0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->setAtr(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAtr(Lcom/google/protobuf/micro/ByteStringMicro;)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr:Z

    iput-object p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->atr_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object p0
.end method

.method public setResponse(I)Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse:Z

    iput p1, p0, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->response_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getResponse()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->hasAtr()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/android/btsap/SapApi$RIL_SIM_SAP_TRANSFER_ATR_RSP;->getAtr()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    :cond_1
    return-void
.end method
