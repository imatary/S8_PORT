.class public final Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "A2DPSession"
.end annotation


# static fields
.field public static final BUFFER_OVERRUNS_MAX_COUNT_FIELD_NUMBER:I = 0x4

.field public static final BUFFER_OVERRUNS_TOTAL_FIELD_NUMBER:I = 0x5

.field public static final BUFFER_UNDERRUNS_AVERAGE_FIELD_NUMBER:I = 0x6

.field public static final BUFFER_UNDERRUNS_COUNT_FIELD_NUMBER:I = 0x7

.field public static final MEDIA_TIMER_AVG_MILLIS_FIELD_NUMBER:I = 0x3

.field public static final MEDIA_TIMER_MAX_MILLIS_FIELD_NUMBER:I = 0x2

.field public static final MEDIA_TIMER_MIN_MILLIS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bufferOverrunsMaxCount_:I

.field private bufferOverrunsTotal_:I

.field private bufferUnderrunsAverage_:F

.field private bufferUnderrunsCount_:I

.field private cachedSize:I

.field private hasBufferOverrunsMaxCount:Z

.field private hasBufferOverrunsTotal:Z

.field private hasBufferUnderrunsAverage:Z

.field private hasBufferUnderrunsCount:Z

.field private hasMediaTimerAvgMillis:Z

.field private hasMediaTimerMaxMillis:Z

.field private hasMediaTimerMinMillis:Z

.field private mediaTimerAvgMillis_:I

.field private mediaTimerMaxMillis_:I

.field private mediaTimerMinMillis_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMinMillis_:I

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMaxMillis_:I

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerAvgMillis_:I

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsMaxCount_:I

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsTotal_:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsAverage_:F

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsCount_:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearMediaTimerMinMillis()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearMediaTimerMaxMillis()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearMediaTimerAvgMillis()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearBufferOverrunsMaxCount()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearBufferOverrunsTotal()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearBufferUnderrunsAverage()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->clearBufferUnderrunsCount()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->cachedSize:I

    return-object p0
.end method

.method public clearBufferOverrunsMaxCount()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsMaxCount:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsMaxCount_:I

    return-object p0
.end method

.method public clearBufferOverrunsTotal()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsTotal:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsTotal_:I

    return-object p0
.end method

.method public clearBufferUnderrunsAverage()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsAverage:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsAverage_:F

    return-object p0
.end method

.method public clearBufferUnderrunsCount()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsCount:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsCount_:I

    return-object p0
.end method

.method public clearMediaTimerAvgMillis()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerAvgMillis:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerAvgMillis_:I

    return-object p0
.end method

.method public clearMediaTimerMaxMillis()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMaxMillis:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMaxMillis_:I

    return-object p0
.end method

.method public clearMediaTimerMinMillis()Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMinMillis:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMinMillis_:I

    return-object p0
.end method

.method public getBufferOverrunsMaxCount()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsMaxCount_:I

    return v0
.end method

.method public getBufferOverrunsTotal()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsTotal_:I

    return v0
.end method

.method public getBufferUnderrunsAverage()F
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsAverage_:F

    return v0
.end method

.method public getBufferUnderrunsCount()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsCount_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->cachedSize:I

    return v0
.end method

.method public getMediaTimerAvgMillis()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerAvgMillis_:I

    return v0
.end method

.method public getMediaTimerMaxMillis()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMaxMillis_:I

    return v0
.end method

.method public getMediaTimerMinMillis()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMinMillis_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMinMillis()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getMediaTimerMinMillis()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMaxMillis()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getMediaTimerMaxMillis()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerAvgMillis()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getMediaTimerAvgMillis()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsMaxCount()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferOverrunsMaxCount()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsTotal()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferOverrunsTotal()I

    move-result v1

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsAverage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferUnderrunsAverage()F

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsCount()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferUnderrunsCount()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->cachedSize:I

    return v0
.end method

.method public hasBufferOverrunsMaxCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsMaxCount:Z

    return v0
.end method

.method public hasBufferOverrunsTotal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsTotal:Z

    return v0
.end method

.method public hasBufferUnderrunsAverage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsAverage:Z

    return v0
.end method

.method public hasBufferUnderrunsCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsCount:Z

    return v0
.end method

.method public hasMediaTimerAvgMillis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerAvgMillis:Z

    return v0
.end method

.method public hasMediaTimerMaxMillis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMaxMillis:Z

    return v0
.end method

.method public hasMediaTimerMinMillis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMinMillis:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
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

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setMediaTimerMinMillis(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setMediaTimerMaxMillis(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setMediaTimerAvgMillis(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setBufferOverrunsMaxCount(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setBufferOverrunsTotal(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFloat()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setBufferUnderrunsAverage(F)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->setBufferUnderrunsCount(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x35 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;

    move-result-object v0

    return-object v0
.end method

.method public setBufferOverrunsMaxCount(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsMaxCount:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsMaxCount_:I

    return-object p0
.end method

.method public setBufferOverrunsTotal(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsTotal:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferOverrunsTotal_:I

    return-object p0
.end method

.method public setBufferUnderrunsAverage(F)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsAverage:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsAverage_:F

    return-object p0
.end method

.method public setBufferUnderrunsCount(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsCount:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->bufferUnderrunsCount_:I

    return-object p0
.end method

.method public setMediaTimerAvgMillis(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerAvgMillis:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerAvgMillis_:I

    return-object p0
.end method

.method public setMediaTimerMaxMillis(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMaxMillis:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMaxMillis_:I

    return-object p0
.end method

.method public setMediaTimerMinMillis(I)Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMinMillis:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->mediaTimerMinMillis_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMinMillis()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getMediaTimerMinMillis()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerMaxMillis()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getMediaTimerMaxMillis()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasMediaTimerAvgMillis()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getMediaTimerAvgMillis()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsMaxCount()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferOverrunsMaxCount()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferOverrunsTotal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferOverrunsTotal()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsAverage()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferUnderrunsAverage()F

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFloat(IF)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->hasBufferUnderrunsCount()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$A2DPSession;->getBufferUnderrunsCount()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_6
    return-void
.end method
