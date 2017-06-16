.class public Lcom/samsung/bt/hfp/AtMessageUtils;
.super Ljava/lang/Object;
.source "AtMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static INVALID_VALUE:I = 0x0

.field public static SMS_TYPE_CDMA:I = 0x0

.field public static SMS_TYPE_GSM:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAtMessageUtils"


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/bt/hfp/AtMessageUtils;->INVALID_VALUE:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/bt/hfp/AtMessageUtils;->INVALID_VALUE:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/bt/hfp/AtMessageUtils;->SMS_TYPE_GSM:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/bt/hfp/AtMessageUtils;->SMS_TYPE_CDMA:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FilterCRLF(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :goto_0
    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    sub-int v4, v3, v0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static FilterCtrlZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    const/4 v0, 0x0

    add-int/lit8 v3, v1, 0x1

    :goto_0
    if-lez v1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1a

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    sub-int v4, v3, v0

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected static encodeBinary([B[B)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_1

    aget-byte v2, p0, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v2, p0, v0

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static encodeForAt(Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->getData()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->getScAddress()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/bt/hfp/AtMessageUtils;->encodeBinary([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeliverPdusForAt(Ljava/lang/String;Ljava/lang/String;J)Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;
    .locals 2

    invoke-static {p0, p1}, Lcom/samsung/bt/hfp/AtMessageUtils;->getSubmitPdusForAt(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p1}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;->gsmChangeToDeliverPdu(JLjava/lang/String;)V

    return-object v0
.end method

.method public static getSubmitPdusForAt(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;
    .locals 18

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v9

    const/4 v1, 0x2

    if-ne v1, v9, :cond_3

    const/4 v1, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v17

    :goto_0
    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    invoke-static/range {p0 .. p0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    const/4 v1, 0x2

    if-ne v9, v1, :cond_4

    sget v14, Lcom/samsung/bt/hfp/AtMessageUtils;->SMS_TYPE_CDMA:I

    :goto_1
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move-object/from16 v0, v17

    iget v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move-object/from16 v0, v17

    iget v8, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    :cond_0
    const-string/jumbo v2, "12"

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v16, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    const/4 v1, 0x1

    if-ne v6, v1, :cond_2

    move-object/from16 v0, v16

    iput v7, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, v16

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    const/4 v1, 0x0

    const/16 v4, 0xa0

    invoke-static {v3, v1, v4, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->findGsmSeptetLimitIndex(Ljava/lang/String;IIII)I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v11, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v3, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    new-instance v13, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;

    invoke-direct {v13, v10, v6, v14, v7}, Lcom/samsung/bt/hfp/AtMessageUtils$AtSmsPdu;-><init>([BIII)V

    return-object v13

    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v17

    goto :goto_0

    :cond_4
    sget v14, Lcom/samsung/bt/hfp/AtMessageUtils;->SMS_TYPE_GSM:I

    goto :goto_1
.end method

.method public static hexCharToInt(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    const/4 v3, 0x0

    if-nez p0, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/samsung/bt/hfp/AtMessageUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/samsung/bt/hfp/AtMessageUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "BluetoothAtMessageUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
