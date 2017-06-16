.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsPdu"
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_DATA_MSG_ID:B = 0x0t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final TP_MIT_DELIVER:B = 0x0t

.field private static final TP_MMS_NO_MORE:B = 0x4t

.field private static final TP_RP_NO_REPLY_PATH:B = 0x0t

.field private static final TP_SRI_NO_REPORT:B = 0x0t

.field private static final TP_UDHI_MASK:B = 0x40t


# instance fields
.field private mData:[B

.field private mEncoding:I

.field private mLanguageShiftTable:I

.field private mLanguageTable:I

.field private mMsgSeptetCount:I

.field private mScAddress:[B

.field private mType:I

.field private mUserDataMsgOffset:I

.field private mUserDataSeptetPadding:I


# direct methods
.method constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->-get0()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->-get0()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->-get0()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->-get0()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    return-void
.end method

.method constructor <init>([BIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->-get0()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    iput p2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    iput p3, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    iput p4, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    return-void
.end method

.method private cdmaGetParameterOffset(B)I
    .locals 9

    const/4 v8, 0x0

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-wide/16 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    :goto_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    :goto_1
    if-eqz v3, :cond_2

    return v4

    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "BluetoothMapSmsPdu"

    const-string/jumbo v7, "cdmaGetParameterOffset: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return v8
.end method

.method private cdmaGetSubParameterOffset(B)I
    .locals 9

    const/4 v8, 0x0

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-direct {p0, v6}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v6

    add-int/lit8 v4, v6, 0x2

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    :goto_0
    :try_start_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    if-ne v0, p1, :cond_1

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->close()V

    :goto_1
    if-eqz v3, :cond_2

    return v4

    :cond_1
    int-to-long v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v1, 0x2

    add-int/2addr v4, v6

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "BluetoothMapSmsPdu"

    const-string/jumbo v7, "cdmaGetParameterOffset: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    return v8
.end method

.method private gsmSubmitGetTpDcsOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpPidOffset()I
    .locals 4

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v1, v1

    if-gt v0, v1, :cond_0

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wrongly formatted gsm submit PDU. offset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method

.method private gsmSubmitGetTpUdOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpUdlOffset()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v12, "yyMMddHHmmss"

    invoke-direct {v4, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    move-wide/from16 v0, p2

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "US-ASCII"

    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v5, 0x0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    if-ge v5, v6, :cond_0

    add-int/lit8 v12, v5, 0x1

    aget-byte v12, v10, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    aget-byte v13, v10, v5

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/16 v13, 0x10

    invoke-virtual {v2, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    const v13, 0xdbba0

    div-int v7, v12, v13

    if-gez v7, :cond_1

    const-string/jumbo v12, "%1$02d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    neg-int v14, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v12, 0x1

    aget-char v12, v8, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    or-int/lit8 v12, v12, 0x40

    const/4 v13, 0x0

    aget-char v13, v8, v13

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v12, "%1$02d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v12, 0x1

    aget-char v12, v8, v12

    add-int/lit8 v12, v12, -0x30

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    aget-char v13, v8, v13

    add-int/lit8 v13, v13, -0x30

    or-int/2addr v12, v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1
.end method


# virtual methods
.method public cdmaChangeToDeliverPdu(J)V
    .locals 5

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v2

    if-ge v2, v0, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    aput-byte v3, v2, v0

    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetParameterOffset(B)I

    move-result v0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v2

    if-ge v2, v0, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v3, 0x3

    aput-byte v3, v2, v0

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaGetSubParameterOffset(B)I

    move-result v0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v2, v2

    add-int/lit8 v3, v0, 0x2

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    add-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v1, v2, 0xff

    and-int/lit8 v1, v1, 0xf

    or-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    add-int/lit8 v3, v0, 0x2

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    return-void

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unable to convert PDU to Deliver type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    return v0
.end method

.method public getEncodingString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "G-7BIT"

    return-object v0

    :cond_0
    const-string/jumbo v0, "G-7BITEXT"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "G-8BIT"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "G-16BIT"

    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    packed-switch v0, :pswitch_data_1

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "C-7ASCII"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "C-8BIT"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "C-UNICODE"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "C-KOREAN"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getLanguageShiftTable()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    return v0
.end method

.method public getLanguageTable()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    return v0
.end method

.method public getMsgSeptetCount()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    return v0
.end method

.method public getScAddress()[B
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mScAddress:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mType:I

    return v0
.end method

.method public getUserDataMsgOffset()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    return v0
.end method

.method public getUserDataMsgSize()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUserDataSeptetPadding()I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    return v0
.end method

.method public gsmChangeToDeliverPdu(JLjava/lang/String;)V
    .locals 9

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x16

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v5, v5, 0x40

    or-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v1, v6

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_1
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v6

    aget-byte v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v6

    aget-byte v5, v5, v6

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-direct {p0, v2, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v6

    aget-byte v5, v5, v6

    and-int/lit16 v4, v5, 0xff

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v6

    iget-object v7, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    array-length v7, v7

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "BluetoothMapSmsPdu"

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Failed to change type to deliver PDU."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public gsmDecodeUserDataHeader()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/ByteArrayInputStream;->skip(J)J

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitHasUserDataHeader()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iget v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    if-ne v10, v8, :cond_0

    new-array v4, v6, [B

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageTable:I

    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    iput v10, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mLanguageShiftTable:I

    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v1, v10, 0x8

    div-int/lit8 v2, v1, 0x7

    rem-int/lit8 v10, v1, 0x7

    if-lez v10, :cond_1

    :goto_1
    add-int/2addr v2, v8

    mul-int/lit8 v8, v2, 0x7

    sub-int/2addr v8, v1

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    sub-int v8, v7, v2

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v10, "BluetoothMapSmsPdu"

    const-string/jumbo v11, "unable to read userDataHeader"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_1

    :cond_2
    iput v9, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataSeptetPadding:I

    iput v7, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mMsgSeptetCount:I

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    iput v8, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mUserDataMsgOffset:I

    goto :goto_2
.end method

.method public gsmSubmitGetTpDcs()I
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public gsmSubmitHasUserDataHeader()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mData:[B

    aget-byte v1, v1, v0

    and-int/lit16 v1, v1, 0xff

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setEncoding(I)V
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->mEncoding:I

    return-void
.end method
