.class public Landroid/icu/text/PluralRules$FixedDecimal;
.super Ljava/lang/Number;
.source "PluralRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/PluralRules$FixedDecimal;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic -android-icu-text-PluralRules$OperandSwitchesValues:[I = null

.field static final MAX:J = 0xde0b6b3a7640000L

.field private static final MAX_INTEGER_PART:J = 0x3b9aca00L

.field private static final serialVersionUID:J = -0x42016b294abcff1dL


# instance fields
.field private final baseFactor:I

.field public final decimalDigits:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final decimalDigitsWithoutTrailingZeros:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final hasIntegerValue:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final integerValue:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final isNegative:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final source:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final visibleDecimalDigitCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final visibleDecimalDigitCountWithoutTrailingZeros:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .locals 1

    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return v0
.end method

.method private static synthetic -getandroid-icu-text-PluralRules$OperandSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/text/PluralRules$FixedDecimal;->-android-icu-text-PluralRules$OperandSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/PluralRules$FixedDecimal;->-android-icu-text-PluralRules$OperandSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/text/PluralRules$Operand;->values()[Landroid/icu/text/PluralRules$Operand;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Landroid/icu/text/PluralRules$FixedDecimal;->-android-icu-text-PluralRules$OperandSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(D)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;->decimals(D)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v0

    int-to-long v4, v0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    return-void
.end method

.method public constructor <init>(DIJ)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const-wide/16 v4, 0x0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    iget-boolean v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v3, :cond_1

    neg-double v4, p1

    :goto_1
    iput-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iput p3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iput-wide p4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    const-wide v4, 0x43abc16d674ec800L    # 1.0E18

    cmpl-double v3, p1, v4

    if-lez v3, :cond_2

    const-wide v4, 0xde0b6b3a7640000L

    :goto_2
    iput-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v6, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v6, v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-nez v3, :cond_4

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    const/4 v3, 0x0

    iput v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    :goto_4
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, p3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-wide v4, p1

    goto :goto_1

    :cond_2
    double-to-long v4, p1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    move-wide v0, p4

    move v2, p3

    :goto_5
    const-wide/16 v4, 0xa

    rem-long v4, v0, v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_5
    iput-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    iput v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    goto :goto_4
.end method

.method public constructor <init>(J)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    long-to-double v0, p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    return-void
.end method

.method public static decimals(D)I
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v11, 0x0

    return v11

    :cond_1
    const-wide/16 v14, 0x0

    cmpg-double v11, p0, v14

    if-gez v11, :cond_2

    move-wide/from16 v0, p0

    neg-double v0, v0

    move-wide/from16 p0, v0

    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v14

    cmpl-double v11, p0, v14

    if-nez v11, :cond_3

    const/4 v11, 0x0

    return v11

    :cond_3
    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v11, p0, v14

    if-gez v11, :cond_6

    const-wide v14, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, p0

    double-to-long v14, v14

    const-wide/32 v16, 0xf4240

    rem-long v12, v14, v16

    const/16 v9, 0xa

    const/4 v3, 0x6

    :goto_0
    if-lez v3, :cond_5

    int-to-long v14, v9

    rem-long v14, v12, v14

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_4

    return v3

    :cond_4
    mul-int/lit8 v9, v9, 0xa

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_5
    const/4 v11, 0x0

    return v11

    :cond_6
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v14, "%1.15e"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v11, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x65

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v14, 0x2b

    if-ne v11, v14, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v11, v4, -0x2

    sub-int v10, v11, v6

    if-gez v10, :cond_8

    const/4 v11, 0x0

    return v11

    :cond_8
    add-int/lit8 v8, v4, -0x1

    :goto_1
    if-lez v10, :cond_9

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v14, 0x30

    if-eq v11, v14, :cond_a

    :cond_9
    return v10

    :cond_a
    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1
.end method

.method private static getFractionalDigits(DI)I
    .locals 8

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    const-wide/16 v4, 0x0

    cmpg-double v1, p0, v4

    if-gez v1, :cond_1

    neg-double p0, p0

    :cond_1
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    int-to-double v6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v0, v4

    int-to-double v4, v0

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    int-to-long v4, v0

    rem-long v4, v2, v4

    long-to-int v1, v4

    return v1
.end method

.method public static getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/icu/text/PluralRules$Operand;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;

    move-result-object v0

    return-object v0
.end method

.method private static getVisibleFractionCount(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_3

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v5, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-eq v4, v5, :cond_5

    iget v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v5, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ge v4, v5, :cond_4

    :goto_2
    return v2

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    sub-long v0, v4, v6

    cmp-long v4, v0, v8

    if-eqz v4, :cond_7

    cmp-long v4, v0, v8

    if-gez v4, :cond_6

    :goto_3
    return v2

    :cond_6
    move v2, v3

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules$FixedDecimal;->compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    neg-double v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return v2

    :cond_0
    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v3, p1, Landroid/icu/text/PluralRules$FixedDecimal;

    if-nez v3, :cond_2

    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimal;

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_3

    iget v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v4, v0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    double-to-float v0, v0

    return v0
.end method

.method public get(Landroid/icu/text/PluralRules$Operand;)D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/text/PluralRules$FixedDecimal;->-getandroid-icu-text-PluralRules$OperandSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v0, v0

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    long-to-double v0, v0

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    long-to-double v0, v0

    return-wide v0

    :pswitch_3
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    int-to-double v0, v0

    return-wide v0

    :pswitch_4
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    int-to-double v0, v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBaseFactor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return v0
.end method

.method public getDecimalDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    return-wide v0
.end method

.method public getDecimalDigitsWithoutTrailingZeros()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    return-wide v0
.end method

.method public getIntegerValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public getShiftedValue()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSource()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0
.end method

.method public getVisibleDecimalDigitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    return v0
.end method

.method public getVisibleDecimalDigitCountWithoutTrailingZeros()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    return v0
.end method

.method public hasIntegerValue()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return v0
.end method

.method public hashCode()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    const-wide v6, 0x4042800000000000L    # 37.0

    mul-double/2addr v4, v6

    double-to-int v3, v4

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x25

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-int v0, v0

    return v0
.end method

.method public isHasIntegerValue()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return v0
.end method

.method public isNegative()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    return v0
.end method

.method public longValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "%."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
