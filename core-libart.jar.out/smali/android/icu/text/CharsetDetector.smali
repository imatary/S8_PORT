.class public Landroid/icu/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetDetector$CSRecognizerInfo;
    }
.end annotation


# static fields
.field private static final ALL_CS_RECOGNIZERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/CharsetDetector$CSRecognizerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field private fEnabledRecognizers:[Z

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field private fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_UTF8;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_UTF8;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_sjis;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_jp;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_euc$CharsetRecog_euc_kr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_mbcs$CharsetRecog_big5;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;-><init>()V

    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;-><init>()V

    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;-><init>()V

    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    new-instance v2, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;

    invoke-direct {v2}, Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;-><init>()V

    invoke-direct {v1, v2, v4}, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;-><init>(Landroid/icu/text/CharsetRecognizer;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    iput-boolean v1, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    iput-boolean v1, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return-void
.end method

.method private MungeInput()V
    .locals 13

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    iget-boolean v10, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    if-eqz v10, :cond_5

    const/4 v8, 0x0

    :goto_0
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-ge v8, v10, :cond_4

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v10, v10

    if-ge v2, v10, :cond_4

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v0, v10, v8

    const/16 v10, 0x3c

    if-ne v0, v10, :cond_1

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    const/4 v5, 0x1

    add-int/lit8 v7, v7, 0x1

    :cond_1
    if-nez v5, :cond_2

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    add-int/lit8 v3, v2, 0x1

    aput-byte v0, v10, v2

    move v2, v3

    :cond_2
    const/16 v10, 0x3e

    if-ne v0, v10, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iput v2, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    :cond_5
    const/4 v10, 0x5

    if-lt v7, v10, :cond_6

    div-int/lit8 v10, v7, 0x5

    if-ge v10, v1, :cond_8

    :cond_6
    iget v6, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/16 v10, 0x1f40

    if-le v6, v10, :cond_7

    const/16 v6, 0x1f40

    :cond_7
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_a

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget-object v11, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v11, v11, v8

    aput-byte v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    const/16 v11, 0x64

    if-ge v10, v11, :cond_9

    iget v10, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/16 v11, 0x258

    if-gt v10, v11, :cond_6

    :cond_9
    :goto_2
    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([SS)V

    const/4 v8, 0x0

    :goto_3
    iget v10, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    if-ge v8, v10, :cond_b

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    aget-byte v10, v10, v8

    and-int/lit16 v9, v10, 0xff

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v11, v10, v9

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v10, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    iput v8, p0, Landroid/icu/text/CharsetDetector;->fInputLen:I

    goto :goto_2

    :cond_b
    iput-boolean v12, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    const/16 v4, 0x80

    :goto_4
    const/16 v10, 0x9f

    if-gt v4, v10, :cond_c

    iget-object v10, p0, Landroid/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v10, v10, v4

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/icu/text/CharsetDetector;->fC1Bytes:Z

    :cond_c
    return-void

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .locals 3

    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v2, v2, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v2}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public detect()Landroid/icu/text/CharsetMatch;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detectAll()[Landroid/icu/text/CharsetMatch;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    aget-object v1, v0, v2

    return-object v1
.end method

.method public detectAll()[Landroid/icu/text/CharsetMatch;
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/icu/text/CharsetDetector;->MungeInput()V

    const/4 v1, 0x0

    :goto_0
    sget-object v6, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    sget-object v6, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aget-boolean v0, v6, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v6, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v6, p0}, Landroid/icu/text/CharsetRecognizer;->match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    goto :goto_1

    :cond_2
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v5, v6, [Landroid/icu/text/CharsetMatch;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/icu/text/CharsetMatch;

    return-object v5
.end method

.method public enableInputFilter(Z)Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    iput-boolean p1, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public getDetectableCharsets()[Ljava/lang/String;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v4, :cond_1

    iget-boolean v0, v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    :goto_1
    if-eqz v0, :cond_0

    iget-object v4, v3, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aget-boolean v0, v4, v2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3

    const/4 v2, 0x0

    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;

    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iput-object p2, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetDetector;->setText([B)Landroid/icu/text/CharsetDetector;

    invoke-virtual {p0}, Landroid/icu/text/CharsetDetector;->detect()Landroid/icu/text/CharsetMatch;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    return-object v3
.end method

.method public inputFilterEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Landroid/icu/text/CharsetDetector;
    .locals 0

    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public setDetectableCharset(Ljava/lang/String;Z)Landroid/icu/text/CharsetDetector;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-object v4, v0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->recognizer:Landroid/icu/text/CharsetRecognizer;

    invoke-virtual {v4}, Landroid/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v1

    iget-boolean v4, v0, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    if-ne v4, p2, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    if-gez v3, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid encoding: \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-nez v4, :cond_4

    if-eqz v2, :cond_6

    :cond_4
    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    aput-boolean p2, v4, v3

    :cond_5
    return-object p0

    :cond_6
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Z

    iput-object v4, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    const/4 v1, 0x0

    :goto_2
    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v5, p0, Landroid/icu/text/CharsetDetector;->fEnabledRecognizers:[Z

    sget-object v4, Landroid/icu/text/CharsetDetector;->ALL_CS_RECOGNIZERS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;

    iget-boolean v4, v4, Landroid/icu/text/CharsetDetector$CSRecognizerInfo;->isDefaultEnabled:Z

    aput-boolean v4, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setText(Ljava/io/InputStream;)Landroid/icu/text/CharsetDetector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x1f40

    const/4 v3, 0x0

    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v4}, Ljava/io/InputStream;->mark(I)V

    new-array v2, v4, [B

    iput-object v2, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iput v3, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    const/16 v1, 0x1f40

    :goto_0
    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    iget v4, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    return-object p0

    :cond_1
    iget v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public setText([B)Landroid/icu/text/CharsetDetector;
    .locals 1

    iput-object p1, p0, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    array-length v0, p1

    iput v0, p0, Landroid/icu/text/CharsetDetector;->fRawLength:I

    return-object p0
.end method
