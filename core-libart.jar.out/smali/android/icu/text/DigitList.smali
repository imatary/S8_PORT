.class final Landroid/icu/text/DigitList;
.super Ljava/lang/Object;
.source "DigitList.java"


# static fields
.field public static final DBL_DIG:I = 0x11

.field private static LONG_MIN_REP:[B = null

.field public static final MAX_LONG_DIGITS:I = 0x13


# instance fields
.field public count:I

.field public decimalAt:I

.field private didRound:Z

.field public digits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x13

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [B

    sput-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iput v1, p0, Landroid/icu/text/DigitList;->count:I

    const/16 v0, 0x13

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    iput-boolean v1, p0, Landroid/icu/text/DigitList;->didRound:Z

    return-void
.end method

.method private final ensureCapacity(II)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    array-length v1, v1

    if-le p1, v1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    new-array v0, v1, [B

    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    invoke-static {v1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    :cond_0
    return-void
.end method

.method private getStringRep(Z)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x30

    const/16 v5, 0x2e

    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "0"

    return-object v4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_1

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    if-gez v0, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-gez v0, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v2, v4, :cond_5

    if-ne v0, v2, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v4, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v4, v4, v2

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    if-le v0, v4, :cond_6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isLongMIN_VALUE()Z
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, v0

    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    aget-byte v2, v2, v0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method private set(Ljava/lang/String;I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v9, -0x1

    iput v9, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iput v5, p0, Landroid/icu/text/DigitList;->count:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2d

    if-ne v6, v7, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x2e

    if-ne v0, v6, :cond_2

    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    iput v6, p0, Landroid/icu/text/DigitList;->decimalAt:I

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x65

    if-eq v0, v6, :cond_3

    const/16 v6, 0x45

    if-ne v0, v6, :cond_7

    :cond_3
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_5
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    if-ne v5, v9, :cond_6

    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    :cond_6
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    sub-int v6, v1, v3

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    return-void

    :cond_7
    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v6, p2, :cond_1

    if-nez v4, :cond_8

    const/16 v6, 0x30

    if-eq v0, v6, :cond_9

    const/4 v4, 0x1

    :goto_2
    if-nez v4, :cond_8

    iget v6, p0, Landroid/icu/text/DigitList;->decimalAt:I

    if-eq v6, v9, :cond_8

    add-int/lit8 v3, v3, 0x1

    :cond_8
    if-eqz v4, :cond_1

    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroid/icu/text/DigitList;->count:I

    invoke-direct {p0, v6, v7}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    iget-object v6, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v7, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Landroid/icu/text/DigitList;->count:I

    int-to-byte v8, v0

    aput-byte v8, v6, v7

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_2
.end method

.method private setBigDecimalDigits(Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/DigitList;->didRound:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DigitList;->set(Ljava/lang/String;I)V

    if-eqz p3, :cond_1

    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/2addr p2, v0

    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList;->round(I)V

    return-void

    :cond_1
    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0
.end method

.method private shouldRoundUp(I)Z
    .locals 5

    const/16 v4, 0x35

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    if-ge p1, v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, p1

    if-le v3, v4, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, p1

    if-ne v3, v4, :cond_4

    add-int/lit8 v0, p1, 0x1

    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, v0

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    add-int/lit8 v4, p1, -0x1

    aget-byte v3, v3, v4

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    :goto_1
    return v1

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    return v2
.end method


# virtual methods
.method public append(I)V
    .locals 3

    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    instance-of v2, p1, Landroid/icu/text/DigitList;

    if-nez v2, :cond_1

    return v4

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/icu/text/DigitList;

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    iget v3, v1, Landroid/icu/text/DigitList;->count:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iget v3, v1, Landroid/icu/text/DigitList;->decimalAt:I

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v0

    iget-object v3, v1, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_4

    return v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public getBigDecimal(Z)Ljava/math/BigDecimal;
    .locals 12

    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    return-object v8

    :cond_0
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    int-to-long v8, v8

    iget v10, p0, Landroid/icu/text/DigitList;->decimalAt:I

    int-to-long v10, v10

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_5

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    const-wide/32 v8, 0x7fffffff

    sub-long v2, v4, v8

    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    int-to-long v8, v1

    sub-long/2addr v8, v2

    long-to-int v1, v8

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_2

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v8, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v8, Ljava/math/BigDecimal;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(I)V

    return-object v8

    :cond_4
    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/math/BigDecimal;

    long-to-int v9, v4

    invoke-direct {v8, v7, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v8

    :cond_5
    new-instance v8, Ljava/math/BigDecimal;

    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->getStringRep(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v8
.end method

.method public getBigDecimalICU(Z)Landroid/icu/math/BigDecimal;
    .locals 12

    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    move-result-object v8

    return-object v8

    :cond_0
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    int-to-long v8, v8

    iget v10, p0, Landroid/icu/text/DigitList;->decimalAt:I

    int-to-long v10, v10

    sub-long v4, v8, v10

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_5

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    const-wide/32 v8, 0x7fffffff

    cmp-long v8, v4, v8

    if-lez v8, :cond_1

    const-wide/32 v8, 0x7fffffff

    sub-long v2, v4, v8

    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    int-to-long v8, v8

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    int-to-long v8, v1

    sub-long/2addr v8, v2

    long-to-int v1, v8

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v1, 0x1

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez p1, :cond_2

    const/16 v8, 0x2d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v8, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v8, v8, v0

    int-to-char v8, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v8, Landroid/icu/math/BigDecimal;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/icu/math/BigDecimal;-><init>(I)V

    return-object v8

    :cond_4
    new-instance v7, Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/icu/math/BigDecimal;

    long-to-int v9, v4

    invoke-direct {v8, v7, v9}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v8

    :cond_5
    new-instance v8, Landroid/icu/math/BigDecimal;

    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->getStringRep(Z)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v8
.end method

.method public getBigInteger(Z)Ljava/math/BigInteger;
    .locals 6

    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    :cond_0
    iget v4, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    if-le v4, v5, :cond_2

    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    :goto_0
    if-nez p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    new-array v3, v1, [C

    const/4 v2, 0x0

    if-nez p1, :cond_4

    const/16 v4, 0x2d

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    aput-char v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_0

    :cond_3
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v2, v4, 0x1

    :goto_2
    move v0, v2

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_6

    const/16 v4, 0x30

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v4, :cond_5

    iget-object v4, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v4, v4, v0

    int-to-char v4, v4

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/math/BigInteger;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method public getDigitValue(I)B
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v0, v0, p1

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    return v0
.end method

.method public final getDouble()D
    .locals 4

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public final getLong()J
    .locals 4

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    :cond_0
    invoke-direct {p0}, Landroid/icu/text/DigitList;->isLongMIN_VALUE()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/high16 v2, -0x8000000000000000L

    return-wide v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v0

    int-to-char v2, v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x30

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v3, v3, v1

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method isIntegral()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v2, v2, v3

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method isZero()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v1, v1, v0

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final round(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_2

    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    if-ge p1, v0, :cond_2

    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->shouldRoundUp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_3

    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    const/16 v1, 0x31

    aput-byte v1, v0, v2

    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    const/4 p1, 0x0

    iput-boolean v3, p0, Landroid/icu/text/DigitList;->didRound:Z

    :goto_0
    add-int/lit8 p1, p1, 0x1

    :cond_1
    iput p1, p0, Landroid/icu/text/DigitList;->count:I

    :cond_2
    :goto_1
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    if-le v0, v3, :cond_4

    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x30

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    iput-boolean v3, p0, Landroid/icu/text/DigitList;->didRound:Z

    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v0, v0, p1

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_4
    return-void
.end method

.method final set(DIZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmpl-double v1, p1, v2

    if-nez v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    iput-boolean v4, p0, Landroid/icu/text/DigitList;->didRound:Z

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Landroid/icu/text/DigitList;->set(Ljava/lang/String;I)V

    if-eqz p4, :cond_3

    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    neg-int v1, v1

    if-le v1, p3, :cond_1

    iput v4, p0, Landroid/icu/text/DigitList;->count:I

    return-void

    :cond_1
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    neg-int v1, v1

    if-ne v1, p3, :cond_3

    invoke-direct {p0, v4}, Landroid/icu/text/DigitList;->shouldRoundUp(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v5, p0, Landroid/icu/text/DigitList;->count:I

    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    const/16 v2, 0x31

    aput-byte v2, v1, v4

    :goto_0
    return-void

    :cond_2
    iput v4, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_0

    :cond_3
    :goto_1
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    if-le v1, v5, :cond_4

    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0x30

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_6

    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/2addr p3, v1

    :cond_5
    :goto_2
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList;->round(I)V

    return-void

    :cond_6
    if-nez p3, :cond_5

    const/4 p3, -0x1

    goto :goto_2
.end method

.method public final set(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DigitList;->set(JI)V

    return-void
.end method

.method public final set(JI)V
    .locals 9

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/icu/text/DigitList;->didRound:Z

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_2

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    const/16 v2, 0x13

    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    const/16 v2, 0x13

    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_0
    if-lez p3, :cond_0

    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList;->round(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v4, 0xa

    rem-long v4, p1, v4

    const-wide/16 v6, 0x30

    add-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const-wide/16 v2, 0xa

    div-long/2addr p1, v2

    goto :goto_1

    :cond_3
    rsub-int/lit8 v2, v0, 0x13

    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    const/16 v1, 0x12

    :goto_2
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v1

    const/16 v3, 0x30

    if-ne v2, v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    const/4 v5, 0x0

    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0
.end method

.method public final set(Landroid/icu/math/BigDecimal;IZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final set(Ljava/math/BigDecimal;IZ)V
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final set(Ljava/math/BigInteger;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    iput-boolean v5, p0, Landroid/icu/text/DigitList;->didRound:Z

    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    iget v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    :cond_1
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    invoke-direct {p0, v3, v5}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    add-int v4, v0, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList;->round(I)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "0"

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0."

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    aget-byte v2, v2, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "x10^"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasRounded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/DigitList;->didRound:Z

    return v0
.end method
