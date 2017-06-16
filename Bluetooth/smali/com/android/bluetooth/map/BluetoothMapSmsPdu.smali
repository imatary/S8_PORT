.class public Lcom/android/bluetooth/map/BluetoothMapSmsPdu;
.super Ljava/lang/Object;
.source "BluetoothMapSmsPdu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;
    }
.end annotation


# static fields
.field private static INVALID_VALUE:I = 0x0

.field public static SMS_TYPE_CDMA:I = 0x0

.field public static SMS_TYPE_GSM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothMapSmsPdu"

.field private static final V:Z

.field private static sConcatenatedRef:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->INVALID_VALUE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    const/4 v0, 0x2

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodePdu([BI)Ljava/lang/String;
    .locals 2

    sget v1, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->gsmParseSubmitPdu([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeliverPdus(Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getType()I

    move-result v3

    sget v4, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    if-ne v3, v4, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->cdmaChangeToDeliverPdu(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p3, p1}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmChangeToDeliverPdu(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method protected static getNextConcatenatedRef()I
    .locals 1

    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    sget v0, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->sConcatenatedRef:I

    return v0
.end method

.method public static getSubmitPdus(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v10

    const/4 v2, 0x2

    if-ne v2, v10, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    :goto_0
    move-object/from16 v0, v21

    iget v14, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getNextConcatenatedRef()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    move/from16 v18, v0

    invoke-static/range {p0 .. p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x2

    if-ne v10, v2, :cond_4

    sget v17, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_CDMA:I

    :goto_1
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    :cond_0
    const-string/jumbo v3, "12"

    :cond_1
    const/4 v2, 0x1

    if-ne v14, v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v4, v3, v2, v5}, Landroid/telephony/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v2

    iget-object v12, v2, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    move/from16 v0, v17

    invoke-direct {v15, v12, v7, v0, v8}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v16

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v21

    goto :goto_0

    :cond_4
    sget v17, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_2

    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    move/from16 v0, v18

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v2, v13, 0x1

    iput v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v14, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v20, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    move-object/from16 v0, v20

    iput-object v11, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v2, 0x1

    if-ne v7, v2, :cond_6

    move-object/from16 v0, v20

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v20

    iput v9, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_6
    sget v2, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v6

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    iget-object v12, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    :goto_3
    new-instance v15, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    move/from16 v0, v17

    invoke-direct {v15, v12, v7, v0, v8}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_7
    new-instance v22, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v2, 0x1

    if-ne v7, v2, :cond_8

    const/16 v2, 0x9

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_4
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    iget-object v12, v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_3

    :cond_8
    const/4 v2, 0x4

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4
.end method

.method private static gsmParseSubmitPdu([B)Ljava/lang/String;
    .locals 13

    const/16 v3, 0xe0

    const/4 v0, 0x0

    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;

    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->gsmStripOffScAddress([B)[B

    move-result-object v1

    sget v2, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->SMS_TYPE_GSM:I

    invoke-direct {v11, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;-><init>([BI)V

    const/4 v12, 0x0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmSubmitGetTpDcs()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    and-int/lit16 v1, v6, 0x80

    if-nez v1, :cond_2

    and-int/lit8 v1, v6, 0x20

    if-eqz v1, :cond_0

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_1

    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->setEncoding(I)V

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->gsmDecodeUserDataHeader()V

    packed-switch v8, :pswitch_data_0

    :goto_2
    return-object v9

    :cond_0
    move v12, v0

    goto :goto_0

    :cond_1
    shr-int/lit8 v0, v6, 0x2

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    const/4 v8, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v8, 0x3

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x2

    goto :goto_1

    :cond_2
    and-int/lit16 v0, v6, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_4

    const/4 v12, 0x0

    and-int/lit8 v0, v6, 0x4

    if-nez v0, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    goto :goto_1

    :cond_4
    and-int/lit16 v0, v6, 0xf0

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_5

    and-int/lit16 v0, v6, 0xf0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_6

    :cond_5
    and-int/lit16 v0, v6, 0xf0

    if-ne v0, v3, :cond_7

    const/4 v8, 0x3

    :goto_3
    const/4 v12, 0x0

    goto :goto_1

    :cond_6
    and-int/lit16 v0, v6, 0xf0

    if-eq v0, v3, :cond_5

    and-int/lit16 v0, v6, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_9

    const/16 v0, 0x84

    if-ne v6, v0, :cond_8

    const/4 v8, 0x4

    goto :goto_1

    :cond_7
    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v6, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_3
    :try_start_0
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown encoding type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getMsgSeptetCount()I

    move-result v2

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataSeptetPadding()I

    move-result v3

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getLanguageTable()I

    move-result v4

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getLanguageShiftTable()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Decoded as 7BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v7

    :goto_4
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    const-string/jumbo v1, "Unsupported encoding type???"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    :try_start_1
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgSize()I

    move-result v2

    const-string/jumbo v3, "utf-16"

    invoke-direct {v10, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Decoded as 16BIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v10

    goto/16 :goto_2

    :pswitch_6
    :try_start_3
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getData()[B

    move-result-object v0

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgOffset()I

    move-result v1

    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu$SmsPdu;->getUserDataMsgSize()I

    move-result v2

    const-string/jumbo v3, "KSC5601"

    invoke-direct {v10, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    const-string/jumbo v0, "BluetoothMapSmsPdu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Decoded as KSC5601: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v9, v10

    goto/16 :goto_2

    :catch_1
    move-exception v7

    move-object v9, v10

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static gsmStripOffScAddress([B)[B
    .locals 6

    const/4 v5, 0x0

    aget-byte v3, p0, v5

    and-int/lit16 v0, v3, 0xff

    array-length v3, p0

    if-lt v0, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Length of address exeeds the length of the PDU data."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    array-length v3, p0

    add-int/lit8 v4, v0, 0x1

    sub-int v2, v3, v4

    new-array v1, v2, [B

    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3, v1, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v1
.end method
