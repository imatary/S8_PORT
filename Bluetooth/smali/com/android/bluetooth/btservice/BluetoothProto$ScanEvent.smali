.class public final Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BluetoothProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/BluetoothProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScanEvent"
.end annotation


# static fields
.field public static final EVENT_TIME_MILLIS_FIELD_NUMBER:I = 0x5

.field public static final INITIATOR_FIELD_NUMBER:I = 0x2

.field public static final NUMBER_RESULTS_FIELD_NUMBER:I = 0x4

.field public static final SCAN_EVENT_START:I = 0x0

.field public static final SCAN_EVENT_STOP:I = 0x1

.field public static final SCAN_EVENT_TYPE_FIELD_NUMBER:I = 0x1

.field public static final SCAN_TECHNOLOGY_TYPE_FIELD_NUMBER:I = 0x3

.field public static final SCAN_TECH_TYPE_BOTH:I = 0x3

.field public static final SCAN_TECH_TYPE_BREDR:I = 0x2

.field public static final SCAN_TECH_TYPE_LE:I = 0x1

.field public static final SCAN_TYPE_UNKNOWN:I


# instance fields
.field private cachedSize:I

.field private eventTimeMillis_:J

.field private hasEventTimeMillis:Z

.field private hasInitiator:Z

.field private hasNumberResults:Z

.field private hasScanEventType:Z

.field private hasScanTechnologyType:Z

.field private initiator_:Ljava/lang/String;

.field private numberResults_:I

.field private scanEventType_:I

.field private scanTechnologyType_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanEventType_:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->initiator_:Ljava/lang/String;

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanTechnologyType_:I

    iput v1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->numberResults_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->eventTimeMillis_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->cachedSize:I

    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->clearScanEventType()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->clearInitiator()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->clearScanTechnologyType()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->clearNumberResults()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->clearEventTimeMillis()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->cachedSize:I

    return-object p0
.end method

.method public clearEventTimeMillis()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasEventTimeMillis:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->eventTimeMillis_:J

    return-object p0
.end method

.method public clearInitiator()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasInitiator:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->initiator_:Ljava/lang/String;

    return-object p0
.end method

.method public clearNumberResults()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasNumberResults:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->numberResults_:I

    return-object p0
.end method

.method public clearScanEventType()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanEventType:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanEventType_:I

    return-object p0
.end method

.method public clearScanTechnologyType()Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanTechnologyType:Z

    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanTechnologyType_:I

    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->cachedSize:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->cachedSize:I

    return v0
.end method

.method public getEventTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->eventTimeMillis_:J

    return-wide v0
.end method

.method public getInitiator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->initiator_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberResults()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->numberResults_:I

    return v0
.end method

.method public getScanEventType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanEventType_:I

    return v0
.end method

.method public getScanTechnologyType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanTechnologyType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanEventType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getScanEventType()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasInitiator()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getInitiator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanTechnologyType()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getScanTechnologyType()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasNumberResults()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getNumberResults()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasEventTimeMillis()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getEventTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x5

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iput v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->cachedSize:I

    return v0
.end method

.method public hasEventTimeMillis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasEventTimeMillis:Z

    return v0
.end method

.method public hasInitiator()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasInitiator:Z

    return v0
.end method

.method public hasNumberResults()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasNumberResults:Z

    return v0
.end method

.method public hasScanEventType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanEventType:Z

    return v0
.end method

.method public hasScanTechnologyType()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanTechnologyType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
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

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setScanEventType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setScanTechnologyType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setNumberResults(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;

    move-result-object v0

    return-object v0
.end method

.method public setEventTimeMillis(J)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasEventTimeMillis:Z

    iput-wide p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->eventTimeMillis_:J

    return-object p0
.end method

.method public setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasInitiator:Z

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->initiator_:Ljava/lang/String;

    return-object p0
.end method

.method public setNumberResults(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasNumberResults:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->numberResults_:I

    return-object p0
.end method

.method public setScanEventType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanEventType:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanEventType_:I

    return-object p0
.end method

.method public setScanTechnologyType(I)Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanTechnologyType:Z

    iput p1, p0, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->scanTechnologyType_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanEventType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getScanEventType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasInitiator()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getInitiator()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasScanTechnologyType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getScanTechnologyType()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasNumberResults()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getNumberResults()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->hasEventTimeMillis()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/BluetoothProto$ScanEvent;->getEventTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    :cond_4
    return-void
.end method
