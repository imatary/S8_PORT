.class public Lorg/apache/commons/imaging/common/RationalNumber;
.super Ljava/lang/Number;
.source "RationalNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/RationalNumber$Option;
    }
.end annotation


# static fields
.field private static final TOLERANCE:D = 1.0E-8

.field private static final serialVersionUID:J = -0x74be5c50e41188e3L


# instance fields
.field public final divisor:I

.field public final numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    iput p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iput p2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    return-void
.end method

.method static factoryMethod(JJ)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v8, 0x1

    const-wide/32 v6, 0x7fffffff

    const-wide/32 v4, -0x80000000

    cmp-long v2, p0, v6

    if-gtz v2, :cond_0

    cmp-long v2, p0, v4

    if-ltz v2, :cond_0

    cmp-long v2, p2, v6

    if-gtz v2, :cond_0

    cmp-long v2, p2, v4

    if-gez v2, :cond_3

    :cond_0
    :goto_0
    cmp-long v2, p0, v6

    if-gtz v2, :cond_1

    cmp-long v2, p0, v4

    if-ltz v2, :cond_1

    cmp-long v2, p2, v6

    if-gtz v2, :cond_1

    cmp-long v2, p2, v4

    if-gez v2, :cond_2

    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_2

    shr-long/2addr p0, v8

    shr-long/2addr p2, v8

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value, numerator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", divisor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/RationalNumber;->gcd(JJ)J

    move-result-wide v0

    div-long/2addr p2, v0

    div-long/2addr p0, v0

    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    long-to-int v3, p0

    long-to-int v4, p2

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object v2
.end method

.method private static gcd(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    :goto_0
    return-wide p0

    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber;->gcd(JJ)J

    move-result-wide p0

    goto :goto_0
.end method

.method public static valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 20

    const-wide v14, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v13, p0, v14

    if-ltz v13, :cond_0

    new-instance v13, Lorg/apache/commons/imaging/common/RationalNumber;

    const v14, 0x7fffffff

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    :goto_0
    return-object v13

    :cond_0
    const-wide v14, -0x3e20000000400000L    # -2.147483647E9

    cmpg-double v13, p0, v14

    if-gtz v13, :cond_1

    new-instance v13, Lorg/apache/commons/imaging/common/RationalNumber;

    const v14, -0x7fffffff

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    const-wide/16 v14, 0x0

    cmpg-double v13, p0, v14

    if-gez v13, :cond_2

    const/4 v12, 0x1

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    :cond_2
    const-wide/16 v14, 0x0

    cmpl-double v13, p0, v14

    if-nez v13, :cond_3

    new-instance v13, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_0

    :cond_3
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v13, p0, v14

    if-ltz v13, :cond_6

    move-wide/from16 v0, p0

    double-to-int v2, v0

    int-to-double v14, v2

    cmpg-double v13, v14, p0

    if-gez v13, :cond_5

    new-instance v7, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v7, v2, v13}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/lit8 v13, v2, 0x1

    const/4 v14, 0x1

    invoke-direct {v5, v13, v14}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    :goto_1
    move-wide/from16 v0, p0

    invoke-static {v7, v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber$Option;->factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;

    move-result-object v8

    move-wide/from16 v0, p0

    invoke-static {v5, v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber$Option;->factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;

    move-result-object v6

    iget-wide v14, v8, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v0, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_8

    move-object v3, v8

    :goto_2
    const/16 v9, 0x64

    const/4 v4, 0x0

    :goto_3
    iget-wide v14, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    const-wide v16, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v13, v14, v16

    if-lez v13, :cond_4

    const/16 v13, 0x64

    if-ge v4, v13, :cond_4

    iget-object v13, v8, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v13, v13, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-long v14, v13

    iget-object v13, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v13, v13, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    iget-object v13, v8, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v13, v13, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    iget-object v13, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v13, v13, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/imaging/common/RationalNumber;->factoryMethod(JJ)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v10

    move-wide/from16 v0, p0

    invoke-static {v10, v0, v1}, Lorg/apache/commons/imaging/common/RationalNumber$Option;->factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;

    move-result-object v11

    invoke-virtual {v10}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v14

    cmpg-double v13, p0, v14

    if-gez v13, :cond_b

    iget-wide v14, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v0, v11, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gtz v13, :cond_9

    :cond_4
    if-eqz v12, :cond_c

    iget-object v13, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v13}, Lorg/apache/commons/imaging/common/RationalNumber;->negate()Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v13

    goto/16 :goto_0

    :cond_5
    new-instance v7, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/lit8 v13, v2, -0x1

    const/4 v14, 0x1

    invoke-direct {v7, v13, v14}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v5, v2, v13}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_1

    :cond_6
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double v14, v14, p0

    double-to-int v2, v14

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    int-to-double v0, v2

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    cmpg-double v13, v14, p0

    if-gez v13, :cond_7

    new-instance v7, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v7, v13, v2}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v13, 0x1

    add-int/lit8 v14, v2, -0x1

    invoke-direct {v5, v13, v14}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto/16 :goto_1

    :cond_7
    new-instance v7, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v13, 0x1

    add-int/lit8 v14, v2, 0x1

    invoke-direct {v7, v13, v14}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    const/4 v13, 0x1

    invoke-direct {v5, v13, v2}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto/16 :goto_1

    :cond_8
    move-object v3, v6

    goto/16 :goto_2

    :cond_9
    move-object v6, v11

    :goto_4
    iget-wide v14, v11, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v0, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-gez v13, :cond_a

    move-object v3, v11

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_b
    iget-wide v14, v8, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v0, v11, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    move-wide/from16 v16, v0

    cmpg-double v13, v14, v16

    if-lez v13, :cond_4

    move-object v8, v11

    goto :goto_4

    :cond_c
    iget-object v13, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    goto/16 :goto_0
.end method


# virtual methods
.method public doubleValue()D
    .locals 4

    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public floatValue()F
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    div-int/2addr v0, v1

    return v0
.end method

.method public longValue()J
    .locals 4

    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public negate()Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 3

    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber;

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object v0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 6

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    div-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-double v2, v1

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-double v4, v1

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rational ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    div-int/2addr v1, v2

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-double v2, v2

    iget v4, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
