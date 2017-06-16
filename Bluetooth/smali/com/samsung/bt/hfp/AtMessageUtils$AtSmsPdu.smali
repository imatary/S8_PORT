.class public Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;
.super Ljava/lang/Object;
.source "AtMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/hfp/AtMessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AtSmsPdu"
.end annotation


# static fields
.field private static final TP_MIT_DELIVER:B = 0x0t

.field private static final TP_MMS_NO_MORE:B = 0x4t

.field private static final TP_RP_NO_REPLY_PATH:B = 0x0t

.field private static final TP_SRI_NO_REPORT:B = 0x0t

.field private static final TP_UDHI_MASK:B = 0x40t


# instance fields
.field private data:[B

.field private encoding:I

.field private languageShiftTable:I

.field private languageTable:I

.field private msgSeptetCount:I

.field private scAddress:[B

.field private type:I

.field private userDataMsgOffset:I

.field private userDataSeptetPadding:I


# direct methods
.method constructor <init>([BI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->scAddress:[B

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    invoke-static {}, Lcom/samsung/bt/hfp/AtMessageUtils;->-get0()I

    move-result v0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataSeptetPadding:I

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->msgSeptetCount:I

    iput-object p1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-static {}, Lcom/samsung/bt/hfp/AtMessageUtils;->-get0()I

    move-result v0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

    iput p2, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->type:I

    invoke-static {}, Lcom/samsung/bt/hfp/AtMessageUtils;->-get0()I

    move-result v0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageTable:I

    invoke-static {}, Lcom/samsung/bt/hfp/AtMessageUtils;->-get0()I

    move-result v0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageShiftTable:I

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    return-void
.end method

.method constructor <init>([BIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    iput-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->scAddress:[B

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    invoke-static {}, Lcom/samsung/bt/hfp/AtMessageUtils;->-get0()I

    move-result v0

    iput v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataSeptetPadding:I

    iput v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->msgSeptetCount:I

    iput-object p1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    iput p2, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

    iput p3, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->type:I

    iput p4, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageTable:I

    return-void
.end method

.method private gsmSubmitGetTpDcsOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpPidOffset()I
    .locals 4

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

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

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private gsmSubmitGetTpUdlOffset()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v0, v0, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpPidOffset()I

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

    const-string/jumbo v12, "BluetoothAtMessageUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Generated time string: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

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
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    return-object v0
.end method

.method public getEncoding()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

    return v0
.end method

.method public getEncodingString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->type:I

    sget v1, Lcom/samsung/bt/hfp/AtMessageUtils;->SMS_TYPE_GSM:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, ""

    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageTable:I

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
    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

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

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageShiftTable:I

    return v0
.end method

.method public getLanguageTable()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageTable:I

    return v0
.end method

.method public getMsgSeptetCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->msgSeptetCount:I

    return v0
.end method

.method public getScAddress()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->scAddress:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->type:I

    return v0
.end method

.method public getUserDataMsgOffset()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    return v0
.end method

.method public getUserDataMsgSize()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getUserDataSeptetPadding()I
    .locals 1

    iget v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataSeptetPadding:I

    return v0
.end method

.method public gsmChangeToDeliverPdu(JLjava/lang/String;)V
    .locals 11

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0x16

    invoke-direct {v3, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v6, v6, 0x40

    or-int/lit8 v6, v6, 0x4

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v4

    int-to-byte v6, v6

    const/4 v7, 0x0

    aput-byte v6, v2, v7

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_2
    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpPidOffset()I

    move-result v7

    aget-byte v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v7

    aget-byte v6, v6, v7

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-direct {p0, v3, p1, p2}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmWriteDate(Ljava/io/ByteArrayOutputStream;J)V

    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v7

    aget-byte v6, v6, v7

    and-int/lit16 v5, v6, 0xff

    invoke-virtual {v3, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    array-length v8, v8

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v3, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x81

    invoke-virtual {v3, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v6, "BluetoothAtMessageUtils"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Failed to change type to deliver PDU."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :catch_1
    move-exception v1

    const-string/jumbo v6, "BluetoothAtMessageUtils"

    const-string/jumbo v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Failed to change type to deliver PDU."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public gsmDecodeUserDataHeader()V
    .locals 12

    const/4 v8, 0x1

    const/4 v9, 0x0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdlOffset()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v3, v10, v11}, Ljava/io/ByteArrayInputStream;->skip(J)J

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v7

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitHasUserDataHeader()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

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

    iput v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageTable:I

    iget v10, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    iput v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageShiftTable:I

    add-int/lit8 v10, v6, 0x1

    mul-int/lit8 v1, v10, 0x8

    div-int/lit8 v2, v1, 0x7

    rem-int/lit8 v10, v1, 0x7

    if-lez v10, :cond_1

    :goto_1
    add-int/2addr v2, v8

    mul-int/lit8 v8, v2, 0x7

    sub-int/2addr v8, v1

    iput v8, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataSeptetPadding:I

    sub-int v8, v7, v2

    iput v8, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->msgSeptetCount:I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    add-int/2addr v8, v6

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    :goto_2
    const-string/jumbo v8, "BluetoothAtMessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "encoding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "BluetoothAtMessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "msgSeptetCount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->msgSeptetCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "BluetoothAtMessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userDataSeptetPadding:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataSeptetPadding:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "BluetoothAtMessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "languageShiftTable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageShiftTable:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "BluetoothAtMessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "languageTable:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->languageTable:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "BluetoothAtMessageUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userDataMsgOffset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v10, "BluetoothAtMessageUtils"

    const-string/jumbo v11, "unable to read userDataHeader"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_1
    move v8, v9

    goto/16 :goto_1

    :cond_2
    iput v9, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataSeptetPadding:I

    iput v7, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->msgSeptetCount:I

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpUdOffset()I

    move-result v8

    iput v8, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->userDataMsgOffset:I

    goto/16 :goto_2
.end method

.method public gsmSubmitGetTpDcs()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

    invoke-direct {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmSubmitGetTpDcsOffset()I

    move-result v1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public gsmSubmitHasUserDataHeader()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->data:[B

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

    iput p1, p0, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->encoding:I

    return-void
.end method
