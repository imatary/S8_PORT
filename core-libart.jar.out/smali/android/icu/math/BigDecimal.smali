.class public Landroid/icu/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/math/BigDecimal;",
        ">;"
    }
.end annotation


# static fields
.field private static final MaxArg:I = 0x3b9ac9ff

.field private static final MaxExp:I = 0x3b9ac9ff

.field private static final MinArg:I = -0x3b9ac9ff

.field private static final MinExp:I = -0x3b9ac9ff

.field public static final ONE:Landroid/icu/math/BigDecimal;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Landroid/icu/math/BigDecimal;

.field public static final ZERO:Landroid/icu/math/BigDecimal;

.field private static bytecar:[B = null

.field private static bytedig:[B = null

.field private static final isneg:B = -0x1t

.field private static final ispos:B = 0x1t

.field private static final iszero:B = 0x0t

.field private static final plainMC:Landroid/icu/math/MathContext;

.field private static final serialVersionUID:J = 0x726d636b3a313030L


# instance fields
.field private exp:I

.field private form:B

.field private ind:B

.field private mant:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/icu/math/BigDecimal;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    new-instance v0, Landroid/icu/math/BigDecimal;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Landroid/icu/math/BigDecimal;-><init>(J)V

    sput-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    new-instance v0, Landroid/icu/math/BigDecimal;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(I)V

    sput-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    new-instance v0, Landroid/icu/math/MathContext;

    invoke-direct {v0, v4, v4}, Landroid/icu/math/MathContext;-><init>(II)V

    sput-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v0, 0xbe

    new-array v0, v0, [B

    sput-object v0, Landroid/icu/math/BigDecimal;->bytecar:[B

    invoke-static {}, Landroid/icu/math/BigDecimal;->diginit()[B

    move-result-object v0

    sput-object v0, Landroid/icu/math/BigDecimal;->bytedig:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->form:B

    const/4 v0, 0x0

    const/16 v2, 0x9

    if-gt p1, v2, :cond_4

    const/16 v2, -0x9

    if-lt p1, v2, :cond_4

    if-nez p1, :cond_0

    sget-object v2, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    :goto_0
    return-void

    :cond_0
    if-ne p1, v5, :cond_1

    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_1
    if-ne p1, v6, :cond_2

    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_2
    new-array v2, v5, [B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    if-lez p1, :cond_3

    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v4

    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    neg-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_4
    if-lez p1, :cond_5

    iput-byte v5, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int p1, p1

    :goto_1
    move v1, p1

    const/16 v0, 0x9

    :goto_2
    div-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_6

    rsub-int/lit8 v2, v0, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rsub-int/lit8 v2, v0, 0xa

    add-int/lit8 v0, v2, -0x1

    :goto_3
    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rem-int/lit8 v3, p1, 0xa

    int-to-byte v3, v3

    neg-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    div-int/lit8 p1, p1, 0xa

    if-nez p1, :cond_7

    return-void

    :cond_5
    iput-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_3
.end method

.method public constructor <init>(J)V
    .locals 11

    const/4 v4, 0x0

    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->form:B

    const/4 v0, 0x0

    cmp-long v1, p1, v6

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-long p1, p1

    :goto_0
    move-wide v2, p1

    const/16 v0, 0x12

    :goto_1
    div-long/2addr v2, v8

    cmp-long v1, v2, v6

    if-nez v1, :cond_2

    rsub-int/lit8 v1, v0, 0x13

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rsub-int/lit8 v1, v0, 0x13

    add-int/lit8 v0, v1, -0x1

    :goto_2
    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    rem-long v4, p1, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    neg-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    div-long/2addr p1, v8

    cmp-long v1, p1, v6

    if-nez v1, :cond_3

    return-void

    :cond_0
    cmp-long v1, p1, v6

    if-nez v1, :cond_1

    iput-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 3

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Negative scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    neg-int v0, p2

    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    return-void
.end method

.method public constructor <init>([C)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/icu/math/BigDecimal;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 23

    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    const/4 v14, 0x0

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x0

    const/16 v18, 0x0

    if-gtz p3, :cond_0

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    aget-char v21, p1, p2

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_1

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_1
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    add-int/lit8 p2, p2, 0x1

    :cond_2
    :goto_0
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v17, -0x1

    move/from16 v2, p3

    move/from16 v14, p2

    :goto_1
    if-lez v2, :cond_16

    aget-char v19, p1, v14

    const/16 v21, 0x30

    move/from16 v0, v19

    move/from16 v1, v21

    if-lt v0, v1, :cond_5

    const/16 v21, 0x39

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_5

    move/from16 v17, v14

    add-int/lit8 v7, v7, 0x1

    :goto_2
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_3
    aget-char v21, p1, p2

    const/16 v22, 0x2b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    add-int/lit8 p3, p3, -0x1

    if-nez p3, :cond_4

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    const/16 v21, 0x2e

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    if-ltz v8, :cond_6

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_6
    sub-int v8, v14, p2

    goto :goto_2

    :cond_7
    const/16 v21, 0x65

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    const/16 v21, 0x45

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    invoke-static/range {v19 .. v19}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v21

    if-nez v21, :cond_8

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_8
    const/4 v12, 0x1

    move/from16 v17, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    sub-int v21, v14, p2

    add-int/lit8 v22, p3, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_a

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_a
    const/4 v11, 0x0

    add-int/lit8 v21, v14, 0x1

    aget-char v21, p1, v21

    const/16 v22, 0x2d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    const/4 v11, 0x1

    add-int/lit8 v16, v14, 0x2

    :goto_3
    sub-int v21, v16, p2

    sub-int v10, p3, v21

    if-nez v10, :cond_11

    const/16 v21, 0x1

    move/from16 v22, v21

    :goto_4
    const/16 v21, 0x9

    move/from16 v0, v21

    if-le v10, v0, :cond_12

    const/16 v21, 0x1

    :goto_5
    or-int v21, v21, v22

    if-eqz v21, :cond_b

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_b
    move v3, v10

    move/from16 v15, v16

    :goto_6
    if-lez v3, :cond_14

    aget-char v20, p1, v15

    const/16 v21, 0x30

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_c
    const/16 v21, 0x39

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_13

    invoke-static/range {v20 .. v20}, Landroid/icu/lang/UCharacter;->isDigit(I)Z

    move-result v21

    if-nez v21, :cond_d

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_d
    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v9

    if-gez v9, :cond_e

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0xa

    add-int v21, v21, v9

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_f
    add-int/lit8 v21, v14, 0x1

    aget-char v21, p1, v21

    const/16 v22, 0x2b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    add-int/lit8 v16, v14, 0x2

    goto :goto_3

    :cond_10
    add-int/lit8 v16, v14, 0x1

    goto :goto_3

    :cond_11
    const/16 v21, 0x0

    move/from16 v22, v21

    goto :goto_4

    :cond_12
    const/16 v21, 0x0

    goto :goto_5

    :cond_13
    add-int/lit8 v9, v20, -0x30

    goto :goto_7

    :cond_14
    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    :cond_15
    const/4 v13, 0x1

    :cond_16
    if-nez v7, :cond_17

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_17
    if-ltz v8, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v21, v0

    add-int v21, v21, v8

    sub-int v21, v21, v7

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    :cond_18
    add-int/lit8 v4, v17, -0x1

    move/from16 v14, p2

    :goto_8
    if-gt v14, v4, :cond_1b

    aget-char v19, p1, v14

    const/16 v21, 0x30

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v7, v7, -0x1

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_19
    const/16 v21, 0x2e

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_9

    :cond_1a
    const/16 v21, 0x39

    move/from16 v0, v19

    move/from16 v1, v21

    if-gt v0, v1, :cond_1d

    :cond_1b
    new-array v0, v7, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v15, p2

    if-eqz v12, :cond_20

    move v5, v7

    const/4 v14, 0x0

    :goto_a
    if-lez v5, :cond_22

    if-ne v14, v8, :cond_1c

    add-int/lit8 v15, v15, 0x1

    :cond_1c
    aget-char v20, p1, v15

    const/16 v21, 0x39

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v21, v0

    add-int/lit8 v22, v20, -0x30

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v14

    :goto_b
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_1d
    const/16 v21, 0xa

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v21

    if-nez v21, :cond_1b

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    :cond_1e
    const/16 v21, 0xa

    invoke-static/range {v20 .. v21}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v9

    if-gez v9, :cond_1f

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v21, v0

    int-to-byte v0, v9

    move/from16 v22, v0

    aput-byte v22, v21, v14

    goto :goto_b

    :cond_20
    move v6, v7

    const/4 v14, 0x0

    :goto_c
    if-lez v6, :cond_22

    if-ne v14, v8, :cond_21

    add-int/lit8 v15, v15, 0x1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v21, v0

    aget-char v22, p1, v15

    add-int/lit8 v22, v22, -0x30

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v21, v14

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    if-nez v21, :cond_25

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v21, v0

    if-lez v21, :cond_23

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    :cond_23
    if-eqz v13, :cond_24

    sget-object v21, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    :cond_24
    :goto_d
    return-void

    :cond_25
    if-eqz v13, :cond_24

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int/lit8 v18, v21, -0x1

    const v21, -0x3b9ac9ff

    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_26

    const/16 v21, 0x1

    move/from16 v22, v21

    :goto_e
    const v21, 0x3b9ac9ff

    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_27

    const/16 v21, 0x1

    :goto_f
    or-int v21, v21, v22

    if-eqz v21, :cond_24

    invoke-direct/range {p0 .. p1}, Landroid/icu/math/BigDecimal;->bad([C)V

    goto :goto_d

    :cond_26
    const/16 v21, 0x0

    move/from16 v22, v21

    goto :goto_e

    :cond_27
    const/16 v21, 0x0

    goto :goto_f
.end method

.method private static final allzero([BI)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    array-length v2, p0

    add-int/lit8 v0, v2, -0x1

    move v1, p1

    :goto_0
    if-gt v1, v0, :cond_2

    aget-byte v2, p0, v1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private bad([C)V
    .locals 3

    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private badarg(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final byteaddsub([BI[BIIZ)[B
    .locals 17

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    array-length v2, v0

    move-object/from16 v0, p2

    array-length v4, v0

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v5, p3, -0x1

    move v9, v5

    if-ge v5, v3, :cond_0

    move v9, v3

    :cond_0
    const/4 v13, 0x0

    check-cast v13, [B

    if-eqz p5, :cond_1

    add-int/lit8 v14, v9, 0x1

    if-ne v14, v2, :cond_1

    move-object/from16 v13, p0

    :cond_1
    if-nez v13, :cond_2

    add-int/lit8 v14, v9, 0x1

    new-array v13, v14, [B

    :cond_2
    const/4 v12, 0x0

    const/4 v14, 0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_8

    const/4 v12, 0x1

    :cond_3
    :goto_0
    const/4 v6, 0x0

    move v11, v9

    :goto_1
    if-ltz v11, :cond_c

    if-ltz v3, :cond_5

    if-ge v3, v2, :cond_4

    aget-byte v14, p0, v3

    add-int/2addr v6, v14

    :cond_4
    add-int/lit8 v3, v3, -0x1

    :cond_5
    if-ltz v5, :cond_7

    if-ge v5, v4, :cond_6

    if-eqz v12, :cond_a

    if-lez p4, :cond_9

    aget-byte v14, p2, v5

    add-int/2addr v6, v14

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, -0x1

    :cond_7
    const/16 v14, 0xa

    if-ge v6, v14, :cond_b

    if-ltz v6, :cond_b

    int-to-byte v14, v6

    aput-byte v14, v13, v11

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    :cond_8
    const/4 v14, -0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    :cond_9
    aget-byte v14, p2, v5

    sub-int/2addr v6, v14

    goto :goto_2

    :cond_a
    aget-byte v14, p2, v5

    mul-int v14, v14, p4

    add-int/2addr v6, v14

    goto :goto_2

    :cond_b
    add-int/lit8 v7, v6, 0x5a

    sget-object v14, Landroid/icu/math/BigDecimal;->bytedig:[B

    aget-byte v14, v14, v7

    aput-byte v14, v13, v11

    sget-object v14, Landroid/icu/math/BigDecimal;->bytecar:[B

    aget-byte v6, v14, v7

    goto :goto_3

    :cond_c
    if-nez v6, :cond_d

    return-object v13

    :cond_d
    const/4 v10, 0x0

    check-cast v10, [B

    if-eqz p5, :cond_e

    add-int/lit8 v14, v9, 0x2

    move-object/from16 v0, p0

    array-length v15, v0

    if-ne v14, v15, :cond_e

    move-object/from16 v10, p0

    :cond_e
    if-nez v10, :cond_f

    add-int/lit8 v14, v9, 0x2

    new-array v10, v14, [B

    :cond_f
    int-to-byte v14, v6

    const/4 v15, 0x0

    aput-byte v14, v10, v15

    const/16 v14, 0xa

    if-ge v9, v14, :cond_10

    add-int/lit8 v1, v9, 0x1

    const/4 v8, 0x0

    :goto_4
    if-lez v1, :cond_11

    add-int/lit8 v14, v8, 0x1

    aget-byte v15, v13, v8

    aput-byte v15, v10, v14

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_10
    add-int/lit8 v14, v9, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-static {v13, v15, v10, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    return-object v10
.end method

.method private checkdigits(Landroid/icu/math/BigDecimal;I)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, p2, :cond_1

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    if-le v0, p2, :cond_3

    iget-object v0, p1, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v0, p2}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Too many digits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private static final clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 2

    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0}, Landroid/icu/math/BigDecimal;-><init>()V

    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->ind:B

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    iget-byte v1, p0, Landroid/icu/math/BigDecimal;->form:B

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->form:B

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v1, v0, Landroid/icu/math/BigDecimal;->mant:[B

    return-object v0
.end method

.method private static final diginit()[B
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/16 v3, 0xbe

    new-array v2, v3, [B

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0xbd

    if-gt v1, v3, :cond_1

    add-int/lit8 v0, v1, -0x5a

    if-ltz v0, :cond_0

    rem-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v4, v0, 0xa

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x64

    rem-int/lit8 v3, v0, 0xa

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    sget-object v3, Landroid/icu/math/BigDecimal;->bytecar:[B

    div-int/lit8 v4, v0, 0xa

    add-int/lit8 v4, v4, -0xa

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;
    .locals 30

    const/16 v27, 0x0

    const/4 v15, 0x0

    const/16 v28, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v23, 0x0

    const/4 v13, 0x0

    const/16 v22, 0x0

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p3

    iget-boolean v6, v0, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v6, :cond_0

    move-object/from16 v0, p3

    iget v6, v0, Landroid/icu/math/MathContext;->digits:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    move-object/from16 v17, p0

    move-object/from16 v0, p2

    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "Divide by 0"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object/from16 v0, p0

    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v6, :cond_4

    move-object/from16 v0, p3

    iget v6, v0, Landroid/icu/math/MathContext;->form:I

    if-eqz v6, :cond_2

    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v6

    :cond_2
    const/4 v6, -0x1

    move/from16 v0, p4

    if-ne v0, v6, :cond_3

    return-object p0

    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/icu/math/BigDecimal;->setScale(I)Landroid/icu/math/BigDecimal;

    move-result-object v6

    return-object v6

    :cond_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/icu/math/MathContext;->digits:I

    move/from16 v24, v0

    if-lez v24, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    move/from16 v0, v24

    if-le v6, v0, :cond_5

    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v17

    :cond_5
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    move/from16 v0, v24

    if-le v6, v0, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p2

    :cond_6
    :goto_0
    move-object/from16 v0, v17

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v6, v7

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    sub-int v19, v6, v7

    if-gez v19, :cond_c

    const/16 v6, 0x44

    move/from16 v0, p1

    if-eq v0, v6, :cond_c

    const/16 v6, 0x49

    move/from16 v0, p1

    if-ne v0, v6, :cond_b

    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v6

    :cond_7
    const/4 v6, -0x1

    move/from16 v0, p4

    if-ne v0, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result p4

    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v6

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v6, v6

    move/from16 v0, p4

    if-eq v0, v6, :cond_9

    add-int v6, v24, p4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int v24, v6, v7

    :cond_9
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    sub-int v6, v24, v6

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v24, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    move/from16 v0, v24

    if-ge v0, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v6

    move/from16 v24, v0

    :cond_a
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    move/from16 v0, v24

    if-ge v0, v6, :cond_6

    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v6

    move/from16 v24, v0

    goto :goto_0

    :cond_b
    invoke-static/range {v17 .. v17}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-direct {v6, v0, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v6

    return-object v6

    :cond_c
    new-instance v25, Landroid/icu/math/BigDecimal;

    invoke-direct/range {v25 .. v25}, Landroid/icu/math/BigDecimal;-><init>()V

    move-object/from16 v0, v17

    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, p2

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    mul-int/2addr v6, v7

    int-to-byte v6, v6

    move-object/from16 v0, v25

    iput-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v0, v19

    move-object/from16 v1, v25

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v6, v24, 0x1

    new-array v6, v6, [B

    move-object/from16 v0, v25

    iput-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    add-int v6, v24, v24

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v0, v20

    invoke-static {v6, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v2

    move/from16 v3, v20

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v5, v20

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    mul-int/lit8 v6, v6, 0xa

    add-int/lit8 v11, v6, 0x1

    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_d

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/2addr v11, v6

    :cond_d
    const/4 v14, 0x0

    :goto_1
    const/16 v27, 0x0

    :cond_e
    :goto_2
    if-ge v3, v5, :cond_12

    :cond_f
    if-eqz v14, :cond_1b

    const/4 v6, 0x1

    move v7, v6

    :goto_3
    if-eqz v27, :cond_1c

    const/4 v6, 0x1

    :goto_4
    or-int/2addr v6, v7

    if-eqz v6, :cond_1e

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v0, v27

    int-to-byte v7, v0

    aput-byte v7, v6, v14

    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v6, v24, 0x1

    if-ne v14, v6, :cond_1d

    :cond_10
    :goto_5
    if-nez v14, :cond_11

    const/4 v14, 0x1

    :cond_11
    const/16 v6, 0x49

    move/from16 v0, p1

    if-ne v0, v6, :cond_21

    const/4 v6, 0x1

    move v7, v6

    :goto_6
    const/16 v6, 0x52

    move/from16 v0, p1

    if-ne v0, v6, :cond_22

    const/4 v6, 0x1

    :goto_7
    or-int/2addr v6, v7

    if-eqz v6, :cond_2b

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v6, v14

    move/from16 v0, v24

    if-le v6, v0, :cond_23

    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "Integer overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    if-ne v3, v5, :cond_19

    move v8, v3

    const/4 v15, 0x0

    :goto_8
    if-lez v8, :cond_18

    array-length v6, v4

    if-ge v15, v6, :cond_16

    aget-byte v28, v4, v15

    :goto_9
    aget-byte v6, v2, v15

    move/from16 v0, v28

    if-lt v6, v0, :cond_f

    aget-byte v6, v2, v15

    move/from16 v0, v28

    if-le v6, v0, :cond_17

    const/4 v6, 0x0

    aget-byte v12, v2, v6

    :cond_13
    :goto_a
    mul-int/lit8 v6, v12, 0xa

    div-int v18, v6, v11

    if-nez v18, :cond_14

    const/16 v18, 0x1

    :cond_14
    add-int v27, v27, v18

    move/from16 v0, v18

    neg-int v6, v0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v2

    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-nez v6, :cond_e

    add-int/lit8 v9, v3, -0x2

    const/16 v26, 0x0

    :goto_b
    move/from16 v0, v26

    if-gt v0, v9, :cond_15

    aget-byte v6, v2, v26

    if-eqz v6, :cond_1a

    :cond_15
    if-eqz v26, :cond_e

    const/4 v6, 0x0

    move/from16 v0, v26

    invoke-static {v2, v0, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :cond_16
    const/16 v28, 0x0

    goto :goto_9

    :cond_17
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    :cond_18
    add-int/lit8 v27, v27, 0x1

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v0, v27

    int-to-byte v7, v0

    aput-byte v7, v6, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v6, v2, v7

    goto/16 :goto_5

    :cond_19
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    mul-int/lit8 v12, v6, 0xa

    const/4 v6, 0x1

    if-le v3, v6, :cond_13

    const/4 v6, 0x1

    aget-byte v6, v2, v6

    add-int/2addr v12, v6

    goto :goto_a

    :cond_1a
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    :cond_1b
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_3

    :cond_1c
    const/4 v6, 0x0

    goto/16 :goto_4

    :cond_1d
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eqz v6, :cond_10

    :cond_1e
    if-ltz p4, :cond_1f

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v6, v6

    move/from16 v0, p4

    if-gt v6, v0, :cond_10

    :cond_1f
    const/16 v6, 0x44

    move/from16 v0, p1

    if-eq v0, v6, :cond_20

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v6, :cond_10

    :cond_20
    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v25

    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1

    :cond_21
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_6

    :cond_22
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_23
    const/16 v6, 0x52

    move/from16 v0, p1

    if-ne v0, v6, :cond_2c

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    if-nez v6, :cond_24

    invoke-static/range {v17 .. v17}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-direct {v6, v0, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v6

    return-object v6

    :cond_24
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-nez v6, :cond_25

    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v6

    :cond_25
    move-object/from16 v0, v17

    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, v25

    iput-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    add-int v6, v24, v24

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    sub-int v23, v6, v7

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v6, v6, v23

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v6, v7

    move-object/from16 v0, v25

    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    move v13, v3

    add-int/lit8 v15, v3, -0x1

    :goto_c
    const/4 v6, 0x1

    if-lt v15, v6, :cond_26

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lt v6, v7, :cond_28

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, v25

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-lt v7, v0, :cond_29

    const/4 v7, 0x1

    :goto_e
    or-int/2addr v6, v7

    if-eqz v6, :cond_2a

    :cond_26
    array-length v6, v2

    if-ge v13, v6, :cond_27

    new-array v0, v13, [B

    move-object/from16 v22, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-static {v2, v6, v0, v7, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v2, v22

    :cond_27
    move-object/from16 v0, v25

    iput-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v6, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v6

    return-object v6

    :cond_28
    const/4 v6, 0x0

    goto :goto_d

    :cond_29
    const/4 v7, 0x0

    goto :goto_e

    :cond_2a
    aget-byte v6, v2, v15

    if-nez v6, :cond_26

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v25

    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v15, v15, -0x1

    goto :goto_c

    :cond_2b
    const/4 v6, 0x0

    aget-byte v6, v2, v6

    if-eqz v6, :cond_2c

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v7, v14, -0x1

    aget-byte v16, v6, v7

    rem-int/lit8 v6, v16, 0x5

    if-nez v6, :cond_2c

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v7, v14, -0x1

    add-int/lit8 v29, v16, 0x1

    move/from16 v0, v29

    int-to-byte v0, v0

    move/from16 v29, v0

    aput-byte v29, v6, v7

    :cond_2c
    if-ltz p4, :cond_2f

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-eq v14, v6, :cond_2d

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v25

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    sub-int/2addr v7, v14

    sub-int/2addr v6, v7

    move-object/from16 v0, v25

    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_2d
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    move-object/from16 v0, v25

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v7, v7

    sub-int v7, v7, p4

    sub-int v10, v6, v7

    move-object/from16 v0, p3

    iget v6, v0, Landroid/icu/math/MathContext;->roundingMode:I

    move-object/from16 v0, v25

    invoke-direct {v0, v10, v6}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v0, p4

    neg-int v7, v0

    if-eq v6, v7, :cond_2e

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, v25

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v6

    move-object/from16 v0, v25

    iput-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, v25

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v25

    iput v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_2e
    const/4 v6, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v6

    return-object v6

    :cond_2f
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-ne v14, v6, :cond_30

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move/from16 v14, v24

    :goto_f
    const/4 v6, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v6

    return-object v6

    :cond_30
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    if-nez v6, :cond_31

    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v6

    :cond_31
    new-array v0, v14, [B

    move-object/from16 v21, v0

    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v7, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-static {v6, v7, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    goto :goto_f
.end method

.method private static final extend([BI)[B
    .locals 3

    const/4 v2, 0x0

    array-length v1, p0

    if-ne v1, p1, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [B

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;
    .locals 12

    const v11, 0x3b9ac9ff

    const/4 v6, 0x1

    const v10, -0x3b9ac9ff

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget v8, p1, Landroid/icu/math/MathContext;->digits:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    iget v9, p1, Landroid/icu/math/MathContext;->digits:I

    if-le v8, v9, :cond_0

    invoke-direct {p0, p1}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    :cond_0
    if-eqz p2, :cond_2

    iget v8, p1, Landroid/icu/math/MathContext;->form:I

    if-eqz v8, :cond_2

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v8

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-lt v2, v6, :cond_1

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v2

    if-eqz v8, :cond_5

    :cond_1
    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    if-ge v1, v8, :cond_2

    new-array v4, v1, [B

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    :cond_2
    iput-byte v7, p0, Landroid/icu/math/BigDecimal;->form:B

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v8

    const/4 v2, 0x0

    :goto_1
    if-lez v0, :cond_e

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v8, v8, v2

    if-eqz v8, :cond_d

    if-lez v2, :cond_3

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v8, v8

    sub-int/2addr v8, v2

    new-array v4, v8, [B

    iget-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    sub-int/2addr v9, v2

    invoke-static {v8, v2, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    :cond_3
    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    add-int v3, v8, v9

    if-lez v3, :cond_6

    iget v8, p1, Landroid/icu/math/MathContext;->digits:I

    if-le v3, v8, :cond_4

    iget v8, p1, Landroid/icu/math/MathContext;->digits:I

    if-eqz v8, :cond_4

    iget v8, p1, Landroid/icu/math/MathContext;->form:I

    int-to-byte v8, v8

    iput-byte v8, p0, Landroid/icu/math/BigDecimal;->form:B

    :cond_4
    add-int/lit8 v8, v3, -0x1

    if-gt v8, v11, :cond_7

    return-object p0

    :cond_5
    add-int/lit8 v1, v1, -0x1

    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_6
    const/4 v8, -0x5

    if-ge v3, v8, :cond_7

    iget v8, p1, Landroid/icu/math/MathContext;->form:I

    int-to-byte v8, v8

    iput-byte v8, p0, Landroid/icu/math/BigDecimal;->form:B

    :cond_7
    add-int/lit8 v3, v3, -0x1

    if-ge v3, v10, :cond_a

    move v8, v6

    :goto_2
    if-le v3, v11, :cond_b

    :goto_3
    or-int/2addr v6, v8

    if-eqz v6, :cond_9

    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    rem-int/lit8 v5, v3, 0x3

    if-gez v5, :cond_8

    add-int/lit8 v5, v5, 0x3

    :cond_8
    sub-int/2addr v3, v5

    if-lt v3, v10, :cond_c

    if-gt v3, v11, :cond_c

    :cond_9
    return-object p0

    :cond_a
    move v8, v7

    goto :goto_2

    :cond_b
    move v6, v7

    goto :goto_3

    :cond_c
    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exponent Overflow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_d
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_e
    iput-byte v7, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget v6, p1, Landroid/icu/math/MathContext;->form:I

    if-eqz v6, :cond_10

    iput v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_f
    :goto_4
    sget-object v6, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v6, v6, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    return-object p0

    :cond_10
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v6, :cond_11

    iput v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_4

    :cond_11
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ge v6, v10, :cond_f

    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Exponent Overflow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private intcheck(II)I
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    if-ge v0, p1, :cond_0

    move v3, v1

    :goto_0
    if-le v0, p2, :cond_1

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conversion overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    return v0
.end method

.method private layout()[C
    .locals 21

    const/4 v10, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v7, v0, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v3, v0

    const/4 v10, 0x0

    :goto_0
    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v10

    add-int/lit8 v18, v18, 0x30

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    aput-char v18, v7, v10

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    move/from16 v18, v0

    if-eqz v18, :cond_9

    new-instance v15, Ljava/lang/StringBuilder;

    array-length v0, v7

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    const/16 v18, 0x2d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v18, v0

    array-length v0, v7

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v9, v18, -0x1

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/16 v18, 0x0

    aget-char v18, v7, v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_2

    const/16 v18, 0x2e

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v7

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    if-gez v9, :cond_8

    const/16 v8, 0x2d

    neg-int v9, v9

    :goto_2
    const/16 v18, 0x45

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    move/from16 v0, v18

    new-array v14, v0, [C

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-eqz v17, :cond_4

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v14, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    :cond_4
    return-object v14

    :cond_5
    rem-int/lit8 v16, v9, 0x3

    if-gez v16, :cond_6

    add-int/lit8 v16, v16, 0x3

    :cond_6
    sub-int v9, v9, v16

    add-int/lit8 v16, v16, 0x1

    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v15, v7, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    array-length v0, v7

    move/from16 v18, v0

    sub-int v4, v16, v18

    :goto_3
    if-lez v4, :cond_2

    const/16 v18, 0x30

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v7, v0, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2e

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v7

    move/from16 v19, v0

    sub-int v19, v19, v16

    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v7, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_8
    const/16 v8, 0x2b

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v18, v0

    if-ltz v18, :cond_a

    return-object v7

    :cond_a
    array-length v0, v7

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v14, v0, [C

    const/16 v18, 0x2d

    const/16 v19, 0x0

    aput-char v18, v14, v19

    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v7, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v14

    :cond_b
    move-object/from16 v0, p0

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v18, v0

    array-length v0, v7

    move/from16 v19, v0

    add-int v12, v18, v19

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_f

    add-int/lit8 v18, v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v19, v0

    sub-int v11, v18, v19

    new-array v14, v11, [C

    if-eqz v13, :cond_c

    const/16 v18, 0x2d

    const/16 v19, 0x0

    aput-char v18, v14, v19

    :cond_c
    const/16 v18, 0x30

    aput-char v18, v14, v13

    add-int/lit8 v18, v13, 0x1

    const/16 v19, 0x2e

    aput-char v19, v14, v18

    neg-int v5, v12

    add-int/lit8 v10, v13, 0x2

    :goto_5
    if-lez v5, :cond_e

    const/16 v18, 0x30

    aput-char v18, v14, v10

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    const/4 v13, 0x0

    goto :goto_4

    :cond_e
    add-int/lit8 v18, v13, 0x2

    sub-int v18, v18, v12

    array-length v0, v7

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v7, v0, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v14

    :cond_f
    array-length v0, v7

    move/from16 v18, v0

    move/from16 v0, v18

    if-le v12, v0, :cond_12

    add-int v11, v13, v12

    new-array v14, v11, [C

    if-eqz v13, :cond_10

    const/16 v18, 0x2d

    const/16 v19, 0x0

    aput-char v18, v14, v19

    :cond_10
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v7, v0, v14, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v7

    move/from16 v18, v0

    sub-int v6, v12, v18

    array-length v0, v7

    move/from16 v18, v0

    add-int v10, v13, v18

    :goto_6
    if-lez v6, :cond_11

    const/16 v18, 0x30

    aput-char v18, v14, v10

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_11
    return-object v14

    :cond_12
    add-int/lit8 v18, v13, 0x1

    array-length v0, v7

    move/from16 v19, v0

    add-int v11, v18, v19

    new-array v14, v11, [C

    if-eqz v13, :cond_13

    const/16 v18, 0x2d

    const/16 v19, 0x0

    aput-char v18, v14, v19

    :cond_13
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v7, v0, v14, v13, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v18, v13, v12

    const/16 v19, 0x2e

    aput-char v19, v14, v18

    add-int v18, v13, v12

    add-int/lit8 v18, v18, 0x1

    array-length v0, v7

    move/from16 v19, v0

    sub-int v19, v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v7, v12, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v14
.end method

.method private round(II)Landroid/icu/math/BigDecimal;
    .locals 12

    const/4 v3, 0x1

    const/4 v1, 0x5

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    sub-int v6, v0, p1

    if-gtz v6, :cond_0

    return-object p0

    :cond_0
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v0, v6

    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-byte v10, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    if-lez p1, :cond_3

    new-array v0, p1, [B

    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v9, v11, v0, v11, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    aget-byte v7, v9, p1

    :goto_0
    const/4 v4, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    if-lt v7, v1, :cond_1

    move v4, v10

    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v0, :cond_f

    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    int-to-byte v0, v4

    iput-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    :cond_2
    :goto_2
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    const v1, 0x3b9ac9ff

    if-le v0, v1, :cond_12

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exponent Overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iput-byte v11, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v5, 0x0

    if-nez p1, :cond_4

    aget-byte v7, v9, v11

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    if-ne p2, v0, :cond_6

    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "Rounding necessary"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-ne p2, v1, :cond_8

    if-le v7, v1, :cond_7

    move v4, v10

    goto :goto_1

    :cond_7
    if-ne v7, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-static {v9, v0}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v10

    goto :goto_1

    :cond_8
    const/4 v0, 0x6

    if-ne p2, v0, :cond_b

    if-le v7, v1, :cond_9

    move v4, v10

    goto :goto_1

    :cond_9
    if-ne v7, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-static {v9, v0}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_a

    move v4, v10

    goto :goto_1

    :cond_a
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v4, v10

    goto/16 :goto_1

    :cond_b
    if-eq p2, v3, :cond_1

    if-nez p2, :cond_c

    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v10

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x2

    if-ne p2, v0, :cond_d

    if-lez v10, :cond_1

    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v10

    goto/16 :goto_1

    :cond_d
    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    if-gez v10, :cond_1

    invoke-static {v9, p1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_1

    move v4, v10

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad round value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    neg-int v4, v4

    :cond_10
    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    sget-object v2, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    iget-object v2, v2, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static/range {v0 .. v5}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v8

    array-length v0, v8

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    if-le v0, v1, :cond_11

    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    invoke-static {v8, v11, v0, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :cond_11
    iput-object v8, p0, Landroid/icu/math/BigDecimal;->mant:[B

    goto/16 :goto_2

    :cond_12
    return-object p0
.end method

.method private round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    iget v1, p1, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Landroid/icu/math/BigDecimal;
    .locals 2

    new-instance v0, Landroid/icu/math/BigDecimal;

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, p0, p1}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Landroid/icu/math/BigDecimal;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/math/BigDecimal;->valueOf(JI)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(JI)Landroid/icu/math/BigDecimal;
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-nez v1, :cond_0

    sget-object v0, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    :goto_0
    if-nez p2, :cond_3

    return-object v0

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v1, p0, v2

    if-nez v1, :cond_1

    sget-object v0, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0xa

    cmp-long v1, p0, v2

    if-nez v1, :cond_2

    sget-object v0, Landroid/icu/math/BigDecimal;->TEN:Landroid/icu/math/BigDecimal;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/icu/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Landroid/icu/math/BigDecimal;-><init>(J)V

    goto :goto_0

    :cond_3
    if-gez p2, :cond_4

    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    neg-int v1, p2

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    return-object v0
.end method


# virtual methods
.method public abs()Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public abs(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 22

    const/4 v15, 0x0

    const/16 v19, 0x0

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-boolean v7, v0, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v7, :cond_0

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/math/MathContext;->digits:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    move-object/from16 v14, p0

    move-object/from16 v0, p0

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v7, :cond_1

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/math/MathContext;->form:I

    if-eqz v7, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    :cond_1
    move-object/from16 v0, p1

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v7, :cond_2

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/math/MathContext;->form:I

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/math/MathContext;->digits:I

    move/from16 v16, v0

    if-lez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    move/from16 v0, v16

    if-le v7, v0, :cond_3

    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v14

    :cond_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v7, v7

    move/from16 v0, v16

    if-le v7, v0, :cond_4

    invoke-static/range {p1 .. p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    :cond_4
    new-instance v17, Landroid/icu/math/BigDecimal;

    invoke-direct/range {v17 .. v17}, Landroid/icu/math/BigDecimal;-><init>()V

    iget-object v2, v14, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v7, v14, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v7

    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v7, v0, :cond_7

    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_5
    :goto_0
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v7, :cond_f

    const/4 v7, 0x1

    move-object/from16 v0, v17

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    :goto_1
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_10

    const/4 v7, 0x1

    :goto_2
    move-object/from16 v0, p1

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    const/16 v20, 0x1

    :goto_3
    move/from16 v0, v20

    if-ne v7, v0, :cond_12

    const/4 v6, 0x1

    :cond_6
    :goto_4
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v7

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    :cond_7
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v7, v0, :cond_b

    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v7, v3

    move-object/from16 v0, p1

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v20, v0

    sub-int v15, v7, v20

    add-int v7, v5, v16

    add-int/lit8 v7, v7, 0x1

    if-lt v15, v7, :cond_9

    if-lez v16, :cond_9

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, v17

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v0, v16

    if-ge v3, v0, :cond_8

    iget-object v7, v14, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v0, v16

    invoke-static {v7, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v7

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v20, v16, v3

    sub-int v7, v7, v20

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_8
    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    :cond_9
    move-object/from16 v0, p1

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v7, v16, 0x1

    if-le v15, v7, :cond_a

    if-lez v16, :cond_a

    sub-int v7, v15, v16

    add-int/lit8 v19, v7, -0x1

    sub-int v5, v5, v19

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int v7, v7, v19

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v15, v16, 0x1

    :cond_a
    if-le v15, v3, :cond_5

    move v3, v15

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p1

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v7, v5

    iget v0, v14, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v20, v0

    sub-int v15, v7, v20

    add-int v7, v3, v16

    add-int/lit8 v7, v7, 0x1

    if-lt v15, v7, :cond_d

    if-lez v16, :cond_d

    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, p1

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, p1

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, v17

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v0, v16

    if-ge v5, v0, :cond_c

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move/from16 v0, v16

    invoke-static {v7, v0}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v7

    move-object/from16 v0, v17

    iput-object v7, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int v20, v16, v5

    sub-int v7, v7, v20

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    :cond_c
    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v7

    return-object v7

    :cond_d
    iget v7, v14, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v7, v16, 0x1

    if-le v15, v7, :cond_e

    if-lez v16, :cond_e

    sub-int v7, v15, v16

    add-int/lit8 v19, v7, -0x1

    sub-int v3, v3, v19

    move-object/from16 v0, v17

    iget v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int v7, v7, v19

    move-object/from16 v0, v17

    iput v7, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v15, v16, 0x1

    :cond_e
    if-le v15, v5, :cond_5

    move v5, v15

    goto/16 :goto_0

    :cond_f
    iget-byte v7, v14, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, v17

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    goto/16 :goto_1

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v20, 0x0

    goto/16 :goto_3

    :cond_12
    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    if-eqz v7, :cond_6

    if-ge v3, v5, :cond_13

    const/4 v7, 0x1

    :goto_5
    iget-byte v0, v14, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v20, v0

    if-nez v20, :cond_14

    const/16 v20, 0x1

    :goto_6
    or-int v7, v7, v20

    if-eqz v7, :cond_15

    move-object/from16 v18, v2

    move-object v2, v4

    move-object/from16 v4, v18

    move/from16 v19, v3

    move v3, v5

    move/from16 v5, v19

    move-object/from16 v0, v17

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v7, v7

    int-to-byte v7, v7

    move-object/from16 v0, v17

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    goto/16 :goto_4

    :cond_13
    const/4 v7, 0x0

    goto :goto_5

    :cond_14
    const/16 v20, 0x0

    goto :goto_6

    :cond_15
    if-gt v3, v5, :cond_6

    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v7, v2

    add-int/lit8 v10, v7, -0x1

    array-length v7, v4

    add-int/lit8 v11, v7, -0x1

    :goto_7
    if-gt v12, v10, :cond_16

    aget-byte v8, v2, v12

    :goto_8
    if-gt v13, v11, :cond_18

    aget-byte v9, v4, v13

    :goto_9
    if-eq v8, v9, :cond_19

    if-ge v8, v9, :cond_6

    move-object/from16 v18, v2

    move-object v2, v4

    move-object/from16 v4, v18

    move/from16 v19, v3

    move v3, v5

    move/from16 v5, v19

    move-object/from16 v0, v17

    iget-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v7, v7

    int-to-byte v7, v7

    move-object/from16 v0, v17

    iput-byte v7, v0, Landroid/icu/math/BigDecimal;->ind:B

    goto/16 :goto_4

    :cond_16
    if-le v13, v11, :cond_17

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/math/MathContext;->form:I

    if-eqz v7, :cond_6

    sget-object v7, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    return-object v7

    :cond_17
    const/4 v8, 0x0

    goto :goto_8

    :cond_18
    const/4 v9, 0x0

    goto :goto_9

    :cond_19
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_7
.end method

.method public byteValueExact()B
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/16 v3, 0x7f

    if-le v0, v3, :cond_0

    move v3, v1

    :goto_0
    const/16 v4, -0x80

    if-ge v0, v4, :cond_1

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conversion overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    int-to-byte v1, v0

    return v1
.end method

.method public compareTo(Landroid/icu/math/BigDecimal;)I
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    return v0
.end method

.method public compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-boolean v4, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v4, :cond_0

    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v4}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v7, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iget v7, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget v8, p1, Landroid/icu/math/BigDecimal;->exp:I

    if-ne v7, v8, :cond_2

    move v7, v5

    :goto_1
    and-int/2addr v4, v7

    if-eqz v4, :cond_a

    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v4

    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v4, v4

    int-to-byte v4, v4

    return v4

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v7, v6

    goto :goto_1

    :cond_3
    iget-object v4, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-le v3, v4, :cond_4

    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    return v4

    :cond_4
    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    if-gt v3, v4, :cond_5

    move v4, v5

    :goto_2
    iget v7, p2, Landroid/icu/math/MathContext;->digits:I

    if-nez v7, :cond_6

    :goto_3
    or-int/2addr v4, v5

    if-eqz v4, :cond_c

    move v0, v3

    const/4 v1, 0x0

    :goto_4
    if-lez v0, :cond_9

    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v1

    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v1

    if-ge v4, v5, :cond_7

    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v4, v4

    int-to-byte v4, v4

    return v4

    :cond_5
    move v4, v6

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3

    :cond_7
    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v4, v4, v1

    iget-object v5, p1, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v5, v5, v1

    if-le v4, v5, :cond_8

    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    return v4

    :cond_8
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return v6

    :cond_a
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v6, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-ge v4, v6, :cond_b

    const/4 v4, -0x1

    return v4

    :cond_b
    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v6, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-le v4, v6, :cond_c

    return v5

    :cond_c
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    iget-byte v4, v2, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v4, v4

    int-to-byte v4, v4

    iput-byte v4, v2, Landroid/icu/math/BigDecimal;->ind:B

    invoke-virtual {p0, v2, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v4

    iget-byte v4, v4, Landroid/icu/math/BigDecimal;->ind:B

    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/math/BigDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public divide(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v1, 0x44

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Landroid/icu/math/BigDecimal;I)Landroid/icu/math/BigDecimal;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/icu/math/MathContext;

    invoke-direct {v0, v1, v1, v1, p2}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    const/16 v1, 0x44

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public divide(Landroid/icu/math/BigDecimal;II)Landroid/icu/math/BigDecimal;
    .locals 4

    const/4 v1, 0x0

    if-gez p2, :cond_0

    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Negative scale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/icu/math/MathContext;

    invoke-direct {v0, v1, v1, v1, p3}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    const/16 v1, 0x44

    invoke-direct {p0, v1, p1, v0, p2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x44

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideInteger(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v1, 0x49

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideInteger(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x49

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v8

    :cond_0
    instance-of v6, p1, Landroid/icu/math/BigDecimal;

    if-nez v6, :cond_1

    return v8

    :cond_1
    move-object v5, p1

    check-cast v5, Landroid/icu/math/BigDecimal;

    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    iget-byte v9, v5, Landroid/icu/math/BigDecimal;->ind:B

    if-eq v6, v9, :cond_2

    return v8

    :cond_2
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    iget-object v9, v5, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    if-ne v6, v9, :cond_3

    move v6, v7

    :goto_0
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget v10, v5, Landroid/icu/math/BigDecimal;->exp:I

    if-ne v9, v10, :cond_4

    move v9, v7

    :goto_1
    and-int/2addr v9, v6

    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    iget-byte v10, v5, Landroid/icu/math/BigDecimal;->form:B

    if-ne v6, v10, :cond_5

    move v6, v7

    :goto_2
    and-int/2addr v6, v9

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v6

    const/4 v2, 0x0

    :goto_3
    if-lez v0, :cond_a

    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v2

    iget-object v9, v5, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v9, v9, v2

    if-eq v6, v9, :cond_6

    return v8

    :cond_3
    move v6, v8

    goto :goto_0

    :cond_4
    move v9, v8

    goto :goto_1

    :cond_5
    move v6, v8

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v3

    invoke-direct {v5}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v4

    array-length v6, v3

    array-length v9, v4

    if-eq v6, v9, :cond_8

    return v8

    :cond_8
    array-length v1, v3

    const/4 v2, 0x0

    :goto_4
    if-lez v1, :cond_a

    aget-char v6, v3, v2

    aget-char v9, v4, v2

    if-eq v6, v9, :cond_9

    return v8

    :cond_9
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    return v7
.end method

.method public floatValue()F
    .locals 1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public format(II)Ljava/lang/String;
    .locals 7

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Landroid/icu/math/BigDecimal;->format(IIIIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public format(IIIIII)Ljava/lang/String;
    .locals 28

    const/4 v15, 0x0

    const/16 v23, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v17, 0x0

    const/4 v13, 0x0

    const/16 v22, 0x0

    const/16 v24, -0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    const/16 v24, 0x1

    move/from16 v25, v24

    :goto_0
    if-nez p1, :cond_b

    const/16 v24, 0x1

    :goto_1
    or-int v24, v24, v25

    if-eqz v24, :cond_0

    const-string/jumbo v24, "format"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/16 v24, -0x1

    move/from16 v0, p2

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    const-string/jumbo v24, "format"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const/16 v24, -0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    const/16 v24, 0x1

    move/from16 v25, v24

    :goto_2
    if-nez p3, :cond_d

    const/16 v24, 0x1

    :goto_3
    or-int v24, v24, v25

    if-eqz v24, :cond_2

    const-string/jumbo v24, "format"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    const/16 v24, -0x1

    move/from16 v0, p4

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    const-string/jumbo v24, "format"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    const/16 v24, 0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    :cond_4
    :goto_4
    const/16 v24, 0x4

    move/from16 v0, p6

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    const/16 v24, -0x1

    move/from16 v0, p6

    move/from16 v1, v24

    if-ne v0, v1, :cond_10

    const/16 p6, 0x4

    :cond_5
    :goto_5
    invoke-static/range {p0 .. p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v19

    const/16 v24, -0x1

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    :goto_6
    if-ltz p2, :cond_7

    :cond_6
    :goto_7
    move-object/from16 v0, v19

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    move/from16 v24, v0

    if-nez v24, :cond_15

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v24, v0

    move/from16 v0, v24

    neg-int v0, v0

    move/from16 v23, v0

    :goto_8
    move/from16 v0, v23

    move/from16 v1, p2

    if-ne v0, v1, :cond_19

    :cond_7
    :goto_9
    invoke-direct/range {v19 .. v19}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v11

    if-lez p1, :cond_1e

    array-length v6, v11

    const/16 v21, 0x0

    :goto_a
    if-lez v6, :cond_8

    aget-char v24, v11, v21

    const/16 v25, 0x2e

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    :cond_8
    move/from16 v0, v21

    move/from16 v1, p1

    if-le v0, v1, :cond_9

    const-string/jumbo v24, "format"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    move/from16 v0, v21

    move/from16 v1, p1

    if-ge v0, v1, :cond_1e

    array-length v0, v11

    move/from16 v24, v0

    add-int v24, v24, p1

    sub-int v24, v24, v21

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v17, v0

    sub-int v7, p1, v21

    const/4 v13, 0x0

    :goto_b
    if-lez v7, :cond_1d

    const/16 v24, 0x20

    aput-char v24, v17, v13

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_a
    const/16 v24, 0x0

    move/from16 v25, v24

    goto/16 :goto_0

    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v24, 0x0

    move/from16 v25, v24

    goto/16 :goto_2

    :cond_d
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_e
    const/16 v24, 0x2

    move/from16 v0, p5

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, -0x1

    move/from16 v0, p5

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 p5, 0x1

    goto/16 :goto_4

    :cond_f
    const-string/jumbo v24, "format"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    :try_start_0
    new-instance v24, Landroid/icu/math/MathContext;

    const/16 v25, 0x9

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/math/MathContext;-><init>(IIZI)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v5

    const-string/jumbo v24, "format"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, v19

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->ind:B

    move/from16 v24, v0

    if-nez v24, :cond_12

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    goto/16 :goto_6

    :cond_12
    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v15, v24, v25

    move/from16 v0, p4

    if-le v15, v0, :cond_13

    move/from16 v0, p5

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    goto/16 :goto_6

    :cond_13
    const/16 v24, -0x5

    move/from16 v0, v24

    if-ge v15, v0, :cond_14

    move/from16 v0, p5

    int-to-byte v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    goto/16 :goto_6

    :cond_14
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->form:B

    goto/16 :goto_6

    :cond_15
    move-object/from16 v0, v19

    iget-byte v0, v0, Landroid/icu/math/BigDecimal;->form:B

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_16

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v23, v24, -0x1

    goto/16 :goto_8

    :cond_16
    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v24, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    add-int/lit8 v24, v24, -0x1

    rem-int/lit8 v14, v24, 0x3

    if-gez v14, :cond_17

    add-int/lit8 v14, v14, 0x3

    :cond_17
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v14, v0, :cond_18

    const/16 v23, 0x0

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    sub-int v23, v24, v14

    goto/16 :goto_8

    :cond_19
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int v25, v25, p2

    sub-int v25, v25, v23

    invoke-static/range {v24 .. v25}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v24, v0

    sub-int v25, p2, v23

    sub-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v24, v0

    const v25, -0x3b9ac9ff

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_7

    new-instance v24, Ljava/lang/ArithmeticException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Exponent Overflow: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_1a
    sub-int v12, v23, p2

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v12, v0, :cond_1b

    sget-object v24, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Landroid/icu/math/BigDecimal;->mant:[B

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput-byte v0, v1, Landroid/icu/math/BigDecimal;->ind:B

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v19

    iput v0, v1, Landroid/icu/math/BigDecimal;->exp:I

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    sub-int v16, v24, v12

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/icu/math/BigDecimal;->exp:I

    move/from16 v24, v0

    sub-int v24, v24, v20

    move/from16 v0, v24

    if-ne v0, v12, :cond_6

    goto/16 :goto_9

    :cond_1c
    aget-char v24, v11, v21

    const/16 v25, 0x45

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_a

    :cond_1d
    array-length v0, v11

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v17

    move/from16 v2, v24

    invoke-static {v11, v0, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v11, v17

    :cond_1e
    if-lez p3, :cond_22

    array-length v0, v11

    move/from16 v24, v0

    add-int/lit8 v8, v24, -0x1

    array-length v0, v11

    move/from16 v24, v0

    add-int/lit8 v21, v24, -0x1

    :goto_c
    if-lez v8, :cond_1f

    aget-char v24, v11, v21

    const/16 v25, 0x45

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_20

    :cond_1f
    if-nez v21, :cond_23

    array-length v0, v11

    move/from16 v24, v0

    add-int v24, v24, p3

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v17, v0

    array-length v0, v11

    move/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, p3, 0x2

    array-length v13, v11

    :goto_d
    if-lez v9, :cond_21

    const/16 v24, 0x20

    aput-char v24, v17, v13

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_20
    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v21, v21, -0x1

    goto :goto_c

    :cond_21
    move-object/from16 v11, v17

    :cond_22
    :goto_e
    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/lang/String;-><init>([C)V

    return-object v24

    :cond_23
    array-length v0, v11

    move/from16 v24, v0

    sub-int v24, v24, v21

    add-int/lit8 v22, v24, -0x2

    move/from16 v0, v22

    move/from16 v1, p3

    if-le v0, v1, :cond_24

    const-string/jumbo v24, "format"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    move-object/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Landroid/icu/math/BigDecimal;->badarg(Ljava/lang/String;ILjava/lang/String;)V

    :cond_24
    move/from16 v0, v22

    move/from16 v1, p3

    if-ge v0, v1, :cond_22

    array-length v0, v11

    move/from16 v24, v0

    add-int v24, v24, p3

    sub-int v24, v24, v22

    move/from16 v0, v24

    new-array v0, v0, [C

    move-object/from16 v17, v0

    add-int/lit8 v24, v21, 0x2

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v17

    move/from16 v2, v26

    move/from16 v3, v24

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v10, p3, v22

    add-int/lit8 v13, v21, 0x2

    :goto_f
    if-lez v10, :cond_25

    const/16 v24, 0x30

    aput-char v24, v17, v13

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    :cond_25
    add-int/lit8 v24, v21, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-static {v11, v0, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v11, v17

    goto :goto_e
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public intValueExact()I
    .locals 10

    const/16 v9, 0x9

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v6, :cond_0

    return v8

    :cond_0
    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    add-int/lit8 v2, v6, -0x1

    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-gez v6, :cond_4

    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v6

    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    add-int/lit8 v7, v2, 0x1

    invoke-static {v6, v7}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Decimal part non-zero: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    if-gez v2, :cond_2

    return v8

    :cond_2
    const/4 v5, 0x0

    :goto_0
    const/4 v3, 0x0

    add-int v0, v2, v5

    const/4 v1, 0x0

    :goto_1
    if-gt v1, v0, :cond_6

    mul-int/lit8 v3, v3, 0xa

    if-gt v1, v2, :cond_3

    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v1

    add-int/2addr v3, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget v6, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v6, v2

    if-le v6, v9, :cond_5

    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Conversion overflow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    iget v5, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_0

    :cond_6
    add-int v6, v2, v5

    if-ne v6, v9, :cond_8

    const v6, 0x3b9aca00

    div-int v4, v3, v6

    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v8

    if-eq v4, v6, :cond_8

    const/high16 v6, -0x80000000

    if-ne v3, v6, :cond_7

    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v7, -0x1

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v6, v6, v8

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    return v3

    :cond_7
    new-instance v6, Ljava/lang/ArithmeticException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Conversion overflow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    return v3

    :cond_9
    neg-int v6, v3

    return v6
.end method

.method public longValue()J
    .locals 2

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public longValueExact()J
    .locals 14

    const-wide/16 v10, 0x0

    const/16 v13, 0x12

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const-wide/16 v6, 0x0

    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    if-nez v9, :cond_0

    return-wide v10

    :cond_0
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    add-int/lit8 v3, v9, -0x1

    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-gez v9, :cond_5

    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v3, v9

    if-gez v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v9, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Ljava/lang/ArithmeticException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Decimal part non-zero: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    :cond_2
    if-gez v3, :cond_3

    return-wide v10

    :cond_3
    const/4 v8, 0x0

    :goto_1
    const-wide/16 v4, 0x0

    add-int v0, v3, v8

    const/4 v2, 0x0

    :goto_2
    if-gt v2, v0, :cond_7

    const-wide/16 v10, 0xa

    mul-long/2addr v4, v10

    if-gt v2, v3, :cond_4

    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v9, v9, v2

    int-to-long v10, v9

    add-long/2addr v4, v10

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget v9, p0, Landroid/icu/math/BigDecimal;->exp:I

    iget-object v10, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v10, v10

    add-int/2addr v9, v10

    if-le v9, v13, :cond_6

    new-instance v9, Ljava/lang/ArithmeticException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Conversion overflow: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    iget v8, p0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_1

    :cond_7
    add-int v9, v3, v8

    if-ne v9, v13, :cond_9

    const-wide v10, 0xde0b6b3a7640000L

    div-long v6, v4, v10

    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v9, v9, v12

    int-to-long v10, v9

    cmp-long v9, v6, v10

    if-eqz v9, :cond_9

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v9, v4, v10

    if-nez v9, :cond_8

    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    aget-byte v9, v9, v12

    const/16 v10, 0x9

    if-ne v9, v10, :cond_8

    return-wide v4

    :cond_8
    new-instance v9, Ljava/lang/ArithmeticException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Conversion overflow: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_9
    iget-byte v9, p0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    return-wide v4

    :cond_a
    neg-long v10, v4

    return-wide v10
.end method

.method public max(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public max(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public min(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public min(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/math/BigDecimal;->compareTo(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public movePointLeft(I)Landroid/icu/math/BigDecimal;
    .locals 3

    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    sget-object v1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public movePointRight(I)Landroid/icu/math/BigDecimal;
    .locals 3

    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iget v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/icu/math/BigDecimal;->exp:I

    sget-object v1, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public multiply(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 15

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    iget v2, v0, Landroid/icu/math/MathContext;->digits:I

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v2}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    move-object v9, p0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget v13, v0, Landroid/icu/math/MathContext;->digits:I

    if-lez v13, :cond_4

    iget-object v2, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    if-le v2, v13, :cond_1

    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v9

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    if-le v2, v13, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object p1

    :cond_2
    :goto_0
    iget-object v2, v9, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v2, v2

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v6, v6

    if-ge v2, v6, :cond_6

    iget-object v10, v9, Landroid/icu/math/BigDecimal;->mant:[B

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/icu/math/BigDecimal;->mant:[B

    :goto_1
    array-length v2, v10

    array-length v6, v3

    add-int/2addr v2, v6

    add-int/lit8 v4, v2, -0x1

    const/4 v2, 0x0

    aget-byte v2, v10, v2

    const/4 v6, 0x0

    aget-byte v6, v3, v6

    mul-int/2addr v2, v6

    const/16 v6, 0x9

    if-le v2, v6, :cond_7

    add-int/lit8 v8, v4, 0x1

    :goto_2
    new-instance v14, Landroid/icu/math/BigDecimal;

    invoke-direct {v14}, Landroid/icu/math/BigDecimal;-><init>()V

    new-array v1, v8, [B

    array-length v7, v10

    const/4 v11, 0x0

    :goto_3
    if-lez v7, :cond_8

    aget-byte v5, v10, v11

    if-eqz v5, :cond_3

    array-length v2, v1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Landroid/icu/math/BigDecimal;->byteaddsub([BI[BIIZ)[B

    move-result-object v1

    :cond_3
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v2, :cond_5

    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v12, v2, 0x0

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    if-lez v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v12, v2

    goto :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v3, v9, Landroid/icu/math/BigDecimal;->mant:[B

    goto :goto_1

    :cond_7
    move v8, v4

    goto :goto_2

    :cond_8
    iget-byte v2, v9, Landroid/icu/math/BigDecimal;->ind:B

    move-object/from16 v0, p1

    iget-byte v6, v0, Landroid/icu/math/BigDecimal;->ind:B

    mul-int/2addr v2, v6

    int-to-byte v2, v2

    iput-byte v2, v14, Landroid/icu/math/BigDecimal;->ind:B

    iget v2, v9, Landroid/icu/math/BigDecimal;->exp:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v2, v6

    sub-int/2addr v2, v12

    iput v2, v14, Landroid/icu/math/BigDecimal;->exp:I

    if-nez v12, :cond_9

    iput-object v1, v14, Landroid/icu/math/BigDecimal;->mant:[B

    :goto_4
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-direct {v14, v0, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v2

    return-object v2

    :cond_9
    array-length v2, v1

    add-int/2addr v2, v12

    invoke-static {v1, v2}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v2

    iput-object v2, v14, Landroid/icu/math/BigDecimal;->mant:[B

    goto :goto_4
.end method

.method public negate()Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public negate(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 3

    iget-boolean v1, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    check-cast v1, Landroid/icu/math/BigDecimal;

    iget v2, p1, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, v1, v2}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public plus()Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, v0}, Landroid/icu/math/BigDecimal;->plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public plus(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p1, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    check-cast v0, Landroid/icu/math/BigDecimal;

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, v0, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    iget v0, p1, Landroid/icu/math/MathContext;->form:I

    if-nez v0, :cond_2

    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v0, v0

    iget v1, p1, Landroid/icu/math/MathContext;->digits:I

    if-gt v0, v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p1, Landroid/icu/math/MathContext;->digits:I

    if-nez v0, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    invoke-direct {v0, p1, v2}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 12

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v9, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v9, :cond_0

    iget v9, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v9}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    const v9, -0x3b9ac9ff

    const v10, 0x3b9ac9ff

    invoke-direct {p1, v9, v10}, Landroid/icu/math/BigDecimal;->intcheck(II)I

    move-result v3

    move-object v2, p0

    iget v4, p2, Landroid/icu/math/MathContext;->digits:I

    if-nez v4, :cond_2

    iget-byte v9, p1, Landroid/icu/math/BigDecimal;->ind:B

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    new-instance v9, Ljava/lang/ArithmeticException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Negative power: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_1
    const/4 v7, 0x0

    :goto_0
    new-instance v8, Landroid/icu/math/MathContext;

    iget v9, p2, Landroid/icu/math/MathContext;->form:I

    iget v10, p2, Landroid/icu/math/MathContext;->roundingMode:I

    invoke-direct {v8, v7, v9, v11, v10}, Landroid/icu/math/MathContext;-><init>(IIZI)V

    sget-object v5, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    if-nez v3, :cond_5

    return-object v5

    :cond_2
    iget-object v9, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    iget v10, p1, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v9, v10

    if-le v9, v4, :cond_3

    new-instance v9, Ljava/lang/ArithmeticException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Too many digits: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    iget-object v9, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    if-le v9, v4, :cond_4

    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v9

    invoke-direct {v9, p2}, Landroid/icu/math/BigDecimal;->round(Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    :cond_4
    iget-object v9, p1, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v9, v9

    iget v10, p1, Landroid/icu/math/BigDecimal;->exp:I

    add-int v0, v9, v10

    add-int v9, v4, v0

    add-int/lit8 v7, v9, 0x1

    goto :goto_0

    :cond_5
    if-gez v3, :cond_6

    neg-int v3, v3

    :cond_6
    const/4 v6, 0x0

    const/4 v1, 0x1

    :goto_1
    add-int/2addr v3, v3

    if-gez v3, :cond_7

    const/4 v6, 0x1

    invoke-virtual {v5, v2, v8}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v5

    :cond_7
    const/16 v9, 0x1f

    if-ne v1, v9, :cond_9

    iget-byte v9, p1, Landroid/icu/math/BigDecimal;->ind:B

    if-gez v9, :cond_8

    sget-object v9, Landroid/icu/math/BigDecimal;->ONE:Landroid/icu/math/BigDecimal;

    invoke-virtual {v9, v5, v8}, Landroid/icu/math/BigDecimal;->divide(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v5

    :cond_8
    const/4 v9, 0x1

    invoke-direct {v5, p2, v9}, Landroid/icu/math/BigDecimal;->finish(Landroid/icu/math/MathContext;Z)Landroid/icu/math/BigDecimal;

    move-result-object v9

    return-object v9

    :cond_9
    if-nez v6, :cond_a

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v5, v5, v8}, Landroid/icu/math/BigDecimal;->multiply(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v5

    goto :goto_2
.end method

.method public remainder(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 3

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    const/16 v1, 0x52

    const/4 v2, -0x1

    invoke-direct {p0, v1, p1, v0, v2}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public remainder(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    const/16 v0, 0x52

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/icu/math/BigDecimal;->dodivide(CLandroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;I)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public scale()I
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v0, v0

    return v0
.end method

.method public setScale(I)Landroid/icu/math/BigDecimal;
    .locals 1

    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->setScale(II)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(II)Landroid/icu/math/BigDecimal;
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-byte v4, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v3

    if-gt v1, p1, :cond_3

    if-nez v1, :cond_2

    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    add-int v2, v4, p1

    :goto_0
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v5, v3, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v4

    iput-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    neg-int v4, p1

    iput v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    :cond_1
    :goto_1
    iput-byte v6, v3, Landroid/icu/math/BigDecimal;->form:B

    return-object v3

    :cond_2
    sub-int v2, p1, v1

    goto :goto_0

    :cond_3
    if-gez p1, :cond_4

    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Negative scale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    sub-int v5, v1, p1

    sub-int v0, v4, v5

    invoke-direct {v3, v0, p2}, Landroid/icu/math/BigDecimal;->round(II)Landroid/icu/math/BigDecimal;

    move-result-object v3

    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v5, p1

    if-eq v4, v5, :cond_1

    iget-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v5, v3, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Landroid/icu/math/BigDecimal;->extend([BI)[B

    move-result-object v4

    iput-object v4, v3, Landroid/icu/math/BigDecimal;->mant:[B

    iget v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_1
.end method

.method public shortValueExact()S
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->intValueExact()I

    move-result v0

    const/16 v3, 0x7fff

    if-le v0, v3, :cond_0

    move v3, v1

    :goto_0
    const/16 v4, -0x8000

    if-ge v0, v4, :cond_1

    :goto_1
    or-int/2addr v1, v3

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/ArithmeticException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Conversion overflow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    int-to-short v1, v0

    return v1
.end method

.method public signum()I
    .locals 1

    iget-byte v0, p0, Landroid/icu/math/BigDecimal;->ind:B

    return v0
.end method

.method public subtract(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;
    .locals 1

    sget-object v0, Landroid/icu/math/BigDecimal;->plainMC:Landroid/icu/math/MathContext;

    invoke-virtual {p0, p1, v0}, Landroid/icu/math/BigDecimal;->subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;
    .locals 2

    iget-boolean v1, p2, Landroid/icu/math/MathContext;->lostDigits:Z

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/icu/math/MathContext;->digits:I

    invoke-direct {p0, p1, v1}, Landroid/icu/math/BigDecimal;->checkdigits(Landroid/icu/math/BigDecimal;I)V

    :cond_0
    invoke-static {p1}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iget-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/icu/math/BigDecimal;->ind:B

    invoke-virtual {p0, v0, p2}, Landroid/icu/math/BigDecimal;->add(Landroid/icu/math/BigDecimal;Landroid/icu/math/MathContext;)Landroid/icu/math/BigDecimal;

    move-result-object v1

    return-object v1
.end method

.method public toBigDecimal()Ljava/math/BigDecimal;
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->scale()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v3, :cond_0

    move v3, v4

    :goto_0
    iget-byte v6, p0, Landroid/icu/math/BigDecimal;->form:B

    if-nez v6, :cond_1

    :goto_1
    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    move-object v2, p0

    :goto_2
    new-instance v3, Ljava/math/BigInteger;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v2}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v3, :cond_3

    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    iput-byte v5, v2, Landroid/icu/math/BigDecimal;->form:B

    goto :goto_2

    :cond_3
    iget v3, p0, Landroid/icu/math/BigDecimal;->exp:I

    neg-int v3, v3

    iget-object v4, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v4, v4

    if-lt v3, v4, :cond_4

    sget-object v2, Landroid/icu/math/BigDecimal;->ZERO:Landroid/icu/math/BigDecimal;

    goto :goto_2

    :cond_4
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v2

    iget-object v3, v2, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v3, v3

    iget v4, v2, Landroid/icu/math/BigDecimal;->exp:I

    add-int v0, v3, v4

    new-array v1, v0, [B

    iget-object v3, v2, Landroid/icu/math/BigDecimal;->mant:[B

    invoke-static {v3, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, v2, Landroid/icu/math/BigDecimal;->mant:[B

    iput-byte v5, v2, Landroid/icu/math/BigDecimal;->form:B

    iput v5, v2, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_2
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .locals 3

    iget v0, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/icu/math/BigDecimal;->mant:[B

    iget-object v1, p0, Landroid/icu/math/BigDecimal;->mant:[B

    array-length v1, v1

    iget v2, p0, Landroid/icu/math/BigDecimal;->exp:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Landroid/icu/math/BigDecimal;->allzero([BI)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Decimal part non-zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toCharArray()[C
    .locals 1

    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-direct {p0}, Landroid/icu/math/BigDecimal;->layout()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/math/BigDecimal;->exp:I

    if-ltz v1, :cond_0

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p0}, Landroid/icu/math/BigDecimal;->clone(Landroid/icu/math/BigDecimal;)Landroid/icu/math/BigDecimal;

    move-result-object v0

    iput v2, v0, Landroid/icu/math/BigDecimal;->exp:I

    goto :goto_0
.end method
