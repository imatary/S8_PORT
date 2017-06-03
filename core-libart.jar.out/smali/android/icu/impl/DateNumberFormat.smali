.class public final Landroid/icu/impl/DateNumberFormat;
.super Landroid/icu/text/NumberFormat;
.source "DateNumberFormat.java"


# static fields
.field private static CACHE:Landroid/icu/impl/SimpleCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "[C>;"
        }
    .end annotation
.end field

.field private static final DECIMAL_BUF_SIZE:I = 0x14

.field private static final PARSE_THRESHOLD:J = 0xccccccccccccccbL

.field private static final serialVersionUID:J = -0x57a5d92a02d4dc49L


# instance fields
.field private transient decimalBuf:[C

.field private digits:[C

.field private maxIntDigits:I

.field private minIntDigits:I

.field private minusSign:C

.field private positiveOnly:Z

.field private zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;CLjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    const/16 v2, 0x14

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int v2, p2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/NumberFormat;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/DateNumberFormat;->initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initialize(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0xa

    sget-object v6, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v6, p1}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    if-nez v0, :cond_2

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    invoke-static {v6, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "NumberElements/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/symbols/minusSign"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    const/16 v6, 0xb

    new-array v0, v6, [C

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v8, :cond_1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v6, "latn"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_1
    const-string/jumbo v6, "NumberElements/latn/symbols/minusSign"

    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v4, "-"

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "-"

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v0, v8

    sget-object v6, Landroid/icu/impl/DateNumberFormat;->CACHE:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v6, p1, v0}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    new-array v6, v8, [C

    iput-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-static {v0, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v6, v6, v9

    iput-char v6, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    aget-char v6, v0, v8

    iput-char v6, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    if-nez v0, :cond_0

    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    invoke-virtual {p0, v0}, Landroid/icu/impl/DateNumberFormat;->setZeroDigit(C)V

    :cond_0
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/16 v1, 0x14

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-super {p0, p1}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, p1, Landroid/icu/impl/DateNumberFormat;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/DateNumberFormat;

    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    iget v3, v0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    iget v3, v0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    if-ne v2, v3, :cond_0

    iget-char v2, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    iget-char v3, v0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    iget-boolean v3, v0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-ne v2, v3, :cond_0

    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    iget-object v2, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public format(DLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(double, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    iget-char v5, p0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-long p1, p1

    :cond_0
    long-to-int v3, p1

    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v5, v5

    iget v6, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    if-ge v5, v6, :cond_2

    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    array-length v2, v5

    :goto_0
    add-int/lit8 v0, v2, -0x1

    :goto_1
    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    rem-int/lit8 v7, v3, 0xa

    aget-char v6, v6, v7

    aput-char v6, v5, v0

    div-int/lit8 v3, v3, 0xa

    if-eqz v0, :cond_1

    if-nez v3, :cond_3

    :cond_1
    iget v5, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    sub-int v6, v2, v0

    sub-int v4, v5, v6

    :goto_2
    if-lez v4, :cond_4

    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    add-int/lit8 v0, v0, -0x1

    iget-object v6, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v6, v6, v8

    aput-char v6, v5, v0

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    sub-int v1, v2, v0

    iget-object v5, p0, Landroid/icu/impl/DateNumberFormat;->decimalBuf:[C

    invoke-virtual {p3, v5, v0, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p4, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :goto_3
    return-object p3

    :cond_5
    invoke-virtual {p4, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto :goto_3
.end method

.method public format(Landroid/icu/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/math/BigDecimal;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(BigDecimal, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public format(Ljava/math/BigInteger;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "StringBuffer format(BigInteger, StringBuffer, FieldPostion) is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigits()[C
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getMaximumIntegerDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    return v0
.end method

.method public getMinimumIntegerDigits()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    return v0
.end method

.method public getZeroDigit()C
    .locals 1

    iget-char v0, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 16

    const-wide/16 v6, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    const/4 v8, 0x0

    :goto_0
    add-int v11, v2, v8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_0

    add-int v11, v2, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v8, :cond_4

    move-object/from16 v0, p0

    iget-char v11, v0, Landroid/icu/impl/DateNumberFormat;->minusSign:C

    if-ne v3, v11, :cond_4

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    if-eqz v11, :cond_3

    :cond_0
    const/4 v9, 0x0

    if-eqz v10, :cond_2

    if-eqz v5, :cond_1

    const-wide/16 v12, -0x1

    mul-long/2addr v6, v12

    :cond_1
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    add-int v11, v2, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/text/ParsePosition;->setIndex(I)V

    :cond_2
    return-object v9

    :cond_3
    const/4 v5, 0x1

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/4 v12, 0x0

    aget-char v11, v11, v12

    sub-int v4, v3, v11

    if-ltz v4, :cond_5

    const/16 v11, 0x9

    if-ge v11, v4, :cond_6

    :cond_5
    invoke-static {v3}, Landroid/icu/lang/UCharacter;->digit(I)I

    move-result v4

    :cond_6
    if-ltz v4, :cond_7

    const/16 v11, 0x9

    if-ge v11, v4, :cond_8

    :cond_7
    const/4 v4, 0x0

    :goto_2
    const/16 v11, 0xa

    if-ge v4, v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    aget-char v11, v11, v4

    if-ne v3, v11, :cond_9

    :cond_8
    if-ltz v4, :cond_0

    const/16 v11, 0x9

    if-gt v4, v11, :cond_0

    const-wide v12, 0xccccccccccccccbL

    cmp-long v11, v6, v12

    if-gez v11, :cond_0

    const/4 v10, 0x1

    const-wide/16 v12, 0xa

    mul-long/2addr v12, v6

    int-to-long v14, v4

    add-long v6, v12, v14

    goto :goto_1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public setMaximumIntegerDigits(I)V
    .locals 0

    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->maxIntDigits:I

    return-void
.end method

.method public setMinimumIntegerDigits(I)V
    .locals 0

    iput p1, p0, Landroid/icu/impl/DateNumberFormat;->minIntDigits:I

    return-void
.end method

.method public setParsePositiveOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/icu/impl/DateNumberFormat;->positiveOnly:Z

    return-void
.end method

.method public setZeroDigit(C)V
    .locals 4

    const/16 v3, 0xa

    iput-char p1, p0, Landroid/icu/impl/DateNumberFormat;->zeroDigit:C

    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    if-nez v1, :cond_0

    new-array v1, v3, [C

    iput-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Landroid/icu/impl/DateNumberFormat;->digits:[C

    add-int v2, p1, v0

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
