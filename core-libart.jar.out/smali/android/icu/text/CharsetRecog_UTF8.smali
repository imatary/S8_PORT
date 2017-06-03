.class Landroid/icu/text/CharsetRecog_UTF8;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_UTF8.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "UTF-8"

    return-object v0
.end method

.method match(Landroid/icu/text/CharsetDetector;)Landroid/icu/text/CharsetMatch;
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p1, Landroid/icu/text/CharsetDetector;->fRawInput:[B

    const/4 v7, 0x0

    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-lt v8, v10, :cond_0

    aget-byte v8, v4, v9

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xef

    if-ne v8, v9, :cond_0

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_0

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xbf

    if-ne v8, v9, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-ge v3, v8, :cond_8

    aget-byte v0, v4, v3

    and-int/lit16 v8, v0, 0x80

    if-nez v8, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v8, v0, 0xe0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_4

    const/4 v7, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    iget v8, p1, Landroid/icu/text/CharsetDetector;->fRawLength:I

    if-ge v3, v8, :cond_1

    aget-byte v0, v4, v3

    and-int/lit16 v8, v0, 0xc0

    const/16 v9, 0x80

    if-eq v8, v9, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    and-int/lit16 v8, v0, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_5

    const/4 v7, 0x2

    goto :goto_2

    :cond_5
    and-int/lit16 v8, v0, 0xf8

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_6

    const/4 v7, 0x3

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    if-eqz v2, :cond_a

    if-nez v5, :cond_a

    const/16 v1, 0x64

    :cond_9
    :goto_3
    if-nez v1, :cond_f

    const/4 v8, 0x0

    :goto_4
    return-object v8

    :cond_a
    if-eqz v2, :cond_b

    mul-int/lit8 v8, v5, 0xa

    if-le v6, v8, :cond_b

    const/16 v1, 0x50

    goto :goto_3

    :cond_b
    if-le v6, v10, :cond_c

    if-nez v5, :cond_c

    const/16 v1, 0x64

    goto :goto_3

    :cond_c
    if-lez v6, :cond_d

    if-nez v5, :cond_d

    const/16 v1, 0x50

    goto :goto_3

    :cond_d
    if-nez v6, :cond_e

    if-nez v5, :cond_e

    const/16 v1, 0xf

    goto :goto_3

    :cond_e
    mul-int/lit8 v8, v5, 0xa

    if-le v6, v8, :cond_9

    const/16 v1, 0x19

    goto :goto_3

    :cond_f
    new-instance v8, Landroid/icu/text/CharsetMatch;

    invoke-direct {v8, p1, p0, v1}, Landroid/icu/text/CharsetMatch;-><init>(Landroid/icu/text/CharsetDetector;Landroid/icu/text/CharsetRecognizer;I)V

    goto :goto_4
.end method
