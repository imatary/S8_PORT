.class public Lcom/android/bluetooth/map/BluetoothMapbMessageSms;
.super Lcom/android/bluetooth/map/BluetoothMapbMessage;
.source "BluetoothMapbMessageSms.java"


# instance fields
.field private mSmsBody:Ljava/lang/String;

.field private mSmsBodyPdus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapbMessage;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encode()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    const-string/jumbo v5, "END:MSG"

    const-string/jumbo v6, "/END\\:MSG"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encodeGeneric(Ljava/util/ArrayList;)[B

    move-result-object v4

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getScAddress()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encodeBinary([B[B)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-array v4, v5, [B

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSmsBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    return-object v0
.end method

.method public parseMsgInit()V
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    return-void
.end method

.method public parseMsgPart(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mAppParamCharset:I

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->D:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Decoding \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" as native PDU"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->decodeBinary(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_2

    aget-byte v1, v0, v4

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    aget-byte v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->D:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Only submit PDUs are supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Only submit PDUs are supported"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mType:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    if-ne v1, v3, :cond_3

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    :goto_0
    invoke-static {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->decodePdu([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    goto :goto_1
.end method

.method public setSmsBody(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBody:Ljava/lang/String;

    const-string/jumbo v0, "UTF-8"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mCharset:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mEncoding:Ljava/lang/String;

    return-void
.end method

.method public setSmsBodyPdus(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mSmsBodyPdus:Ljava/util/ArrayList;

    const-string/jumbo v0, "NATIVE"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mCharset:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getEncodingString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->mEncoding:Ljava/lang/String;

    :cond_0
    return-void
.end method
