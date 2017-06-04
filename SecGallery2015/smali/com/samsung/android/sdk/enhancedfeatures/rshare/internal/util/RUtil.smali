.class public Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;
.super Ljava/lang/Object;
.source "RUtil.java"


# static fields
.field private static final IS_CHINESE:Z

.field private static final STACK_LANGUAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sCtx:Landroid/content/Context;

.field private static sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    const-string/jumbo v0, "China"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/SystemPropertiesRef;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->IS_CHINESE:Z

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "bg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "de"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "hu"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "it"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "ka"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "ro"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sk"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->STACK_LANGUAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->init(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sRUtil:Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;

    return-object v0
.end method

.method public static getMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    const-string/jumbo v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", extension : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "application/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_2
    move-object v3, v2

    goto :goto_0

    :sswitch_0
    const-string/jumbo v5, "log"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "apk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "gz"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "tgz"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v5, "scc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v5, "spd"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v5, "snb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v5, "hwp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v5, "gul"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v5, "sff"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v5, "webp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v5, "jpeg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v5, "jpg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v5, "gif"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v5, "blob"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v5, "vts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v5, "3ga"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v5, "qcp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v5, "pva"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v5, "dm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v5, "dgg"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v5, "acc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v5, "wpl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v5, "m3u8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v5, "fl"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v5, "rmvb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v5, "rm"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v5, "ram"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v5, "divx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x1c

    goto/16 :goto_1

    :sswitch_1d
    const-string/jumbo v5, "trp"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x1d

    goto/16 :goto_1

    :sswitch_1e
    const-string/jumbo v5, "m2ts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x1e

    goto/16 :goto_1

    :sswitch_1f
    const-string/jumbo v5, "mts"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x1f

    goto/16 :goto_1

    :sswitch_20
    const-string/jumbo v5, "m2t"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x20

    goto/16 :goto_1

    :sswitch_21
    const-string/jumbo v5, "smi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x21

    goto/16 :goto_1

    :sswitch_22
    const-string/jumbo v5, "memo"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x22

    goto/16 :goto_1

    :sswitch_23
    const-string/jumbo v5, "sasf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x23

    goto/16 :goto_1

    :sswitch_24
    const-string/jumbo v5, "xlt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x24

    goto/16 :goto_1

    :sswitch_25
    const-string/jumbo v5, "ics"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x25

    goto/16 :goto_1

    :sswitch_26
    const-string/jumbo v5, "sdoc"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x26

    goto/16 :goto_1

    :sswitch_27
    const-string/jumbo v5, "dot"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x27

    goto/16 :goto_1

    :sswitch_28
    const-string/jumbo v5, "pps"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x28

    goto/16 :goto_1

    :sswitch_29
    const-string/jumbo v5, "vcf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x29

    goto/16 :goto_1

    :sswitch_2a
    const-string/jumbo v5, "dotx"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x2a

    goto/16 :goto_1

    :sswitch_2b
    const-string/jumbo v5, "json"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v4, 0x2b

    goto/16 :goto_1

    :pswitch_0
    const-string/jumbo v2, "text/plain"

    goto/16 :goto_2

    :pswitch_1
    const-string/jumbo v2, "application/vnd.android.package-archive"

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v2, "application/x-gzip"

    goto/16 :goto_2

    :pswitch_3
    const-string/jumbo v2, "application/x-compressed"

    goto/16 :goto_2

    :pswitch_4
    const-string/jumbo v2, "application/scc"

    goto/16 :goto_2

    :pswitch_5
    const-string/jumbo v2, "application/spd"

    goto/16 :goto_2

    :pswitch_6
    const-string/jumbo v2, "application/snb"

    goto/16 :goto_2

    :pswitch_7
    const-string/jumbo v2, "application/hwp"

    goto/16 :goto_2

    :pswitch_8
    const-string/jumbo v2, "application/gul"

    goto/16 :goto_2

    :pswitch_9
    const-string/jumbo v2, "application/vnd.samsung.scc.storyalbum"

    goto/16 :goto_2

    :pswitch_a
    const-string/jumbo v2, "image/webp"

    goto/16 :goto_2

    :pswitch_b
    const-string/jumbo v2, "image/jpg"

    goto/16 :goto_2

    :pswitch_c
    const-string/jumbo v2, "image/gif"

    goto/16 :goto_2

    :pswitch_d
    const-string/jumbo v2, "application/blob"

    goto/16 :goto_2

    :pswitch_e
    const-string/jumbo v2, "text/x-vtodo"

    goto/16 :goto_2

    :pswitch_f
    const-string/jumbo v2, "audio/3ga"

    goto/16 :goto_2

    :pswitch_10
    const-string/jumbo v2, "audio/qcp"

    goto/16 :goto_2

    :pswitch_11
    const-string/jumbo v2, "audio/pva"

    goto/16 :goto_2

    :pswitch_12
    const-string/jumbo v2, "audio/dm"

    goto/16 :goto_2

    :pswitch_13
    const-string/jumbo v2, "audio/dgg"

    goto/16 :goto_2

    :pswitch_14
    const-string/jumbo v2, "audio/acc"

    goto/16 :goto_2

    :pswitch_15
    const-string/jumbo v2, "audio/wpl"

    goto/16 :goto_2

    :pswitch_16
    const-string/jumbo v2, "audio/m3u8"

    goto/16 :goto_2

    :pswitch_17
    const-string/jumbo v2, "audio/fl"

    goto/16 :goto_2

    :pswitch_18
    const-string/jumbo v2, "video/rmvb"

    goto/16 :goto_2

    :pswitch_19
    const-string/jumbo v2, "video/rm"

    goto/16 :goto_2

    :pswitch_1a
    const-string/jumbo v2, "video/ram"

    goto/16 :goto_2

    :pswitch_1b
    const-string/jumbo v2, "video/divx"

    goto/16 :goto_2

    :pswitch_1c
    const-string/jumbo v2, "video/trp"

    goto/16 :goto_2

    :pswitch_1d
    const-string/jumbo v2, "video/m2ts"

    goto/16 :goto_2

    :pswitch_1e
    const-string/jumbo v2, "video/mts"

    goto/16 :goto_2

    :pswitch_1f
    const-string/jumbo v2, "video/m2t"

    goto/16 :goto_2

    :pswitch_20
    const-string/jumbo v2, "application/smil"

    goto/16 :goto_2

    :pswitch_21
    const-string/jumbo v2, "application/vnd.samsung.android.memo"

    goto/16 :goto_2

    :pswitch_22
    const-string/jumbo v2, "application/x-sasf"

    goto/16 :goto_2

    :pswitch_23
    const-string/jumbo v2, "application/vnd.ms-excel"

    goto/16 :goto_2

    :pswitch_24
    const-string/jumbo v2, "text/calendar"

    goto/16 :goto_2

    :pswitch_25
    const-string/jumbo v2, "application/sdoc"

    goto/16 :goto_2

    :pswitch_26
    const-string/jumbo v2, "application/msword"

    goto/16 :goto_2

    :pswitch_27
    const-string/jumbo v2, "application/vnd.ms-powerpoint"

    goto/16 :goto_2

    :pswitch_28
    const-string/jumbo v2, "text/x-vcard"

    goto/16 :goto_2

    :pswitch_29
    const-string/jumbo v2, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    goto/16 :goto_2

    :pswitch_2a
    const-string/jumbo v2, "application/json"

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xc89 -> :sswitch_13
        0xcc6 -> :sswitch_18
        0xcf3 -> :sswitch_2
        0xe3b -> :sswitch_1a
        0xcc4d -> :sswitch_10
        0x17881 -> :sswitch_15
        0x17a1c -> :sswitch_1
        0x18444 -> :sswitch_14
        0x18549 -> :sswitch_27
        0x18fc4 -> :sswitch_d
        0x1913e -> :sswitch_8
        0x19541 -> :sswitch_7
        0x19699 -> :sswitch_25
        0x19be1 -> :sswitch_c
        0x19faf -> :sswitch_20
        0x1a344 -> :sswitch_0
        0x1a7ac -> :sswitch_1f
        0x1b273 -> :sswitch_28
        0x1b31b -> :sswitch_12
        0x1b49e -> :sswitch_11
        0x1b81e -> :sswitch_1b
        0x1bc13 -> :sswitch_4
        0x1bc73 -> :sswitch_9
        0x1bd4f -> :sswitch_21
        0x1bd67 -> :sswitch_6
        0x1bda7 -> :sswitch_5
        0x1c067 -> :sswitch_3
        0x1c1b2 -> :sswitch_1d
        0x1c759 -> :sswitch_29
        0x1c975 -> :sswitch_f
        0x1ccb3 -> :sswitch_16
        0x1d000 -> :sswitch_24
        0x2e2f9d -> :sswitch_e
        0x2f0e07 -> :sswitch_1c
        0x2f244f -> :sswitch_2a
        0x31e068 -> :sswitch_b
        0x31ece8 -> :sswitch_2b
        0x3256a4 -> :sswitch_1e
        0x325a49 -> :sswitch_17
        0x33153a -> :sswitch_22
        0x357a27 -> :sswitch_19
        0x35c121 -> :sswitch_23
        0x35cbe5 -> :sswitch_26
        0x379f9c -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isUserAuthenticated()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/util/RUtil;->sCtx:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
