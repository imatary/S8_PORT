.class public Lcom/caverock/androidsvg/IntegerParser;
.super Ljava/lang/Object;
.source "IntegerParser.java"


# instance fields
.field isNegative:Z

.field pos:I

.field value:J


# direct methods
.method public constructor <init>(ZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/caverock/androidsvg/IntegerParser;->isNegative:Z

    iput-wide p2, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    iput p4, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return-void
.end method

.method public static parseHex(Ljava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseHex(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 8

    move v1, p1

    const-wide/16 v2, 0x0

    if-lt v1, p2, :cond_1

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    if-ge v1, p2, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_2

    const/16 v4, 0x39

    if-gt v0, v4, :cond_2

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x30

    int-to-long v6, v6

    add-long v2, v4, v6

    :goto_1
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/16 v4, 0x41

    if-lt v0, v4, :cond_3

    const/16 v4, 0x46

    if-gt v0, v4, :cond_3

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x41

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    goto :goto_1

    :cond_3
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x66

    if-gt v0, v4, :cond_4

    const-wide/16 v4, 0x10

    mul-long/2addr v4, v2

    add-int/lit8 v6, v0, -0x61

    int-to-long v6, v6

    add-long/2addr v4, v6

    const-wide/16 v6, 0xa

    add-long v2, v4, v6

    goto :goto_1

    :cond_4
    if-ne v1, p1, :cond_5

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    new-instance v4, Lcom/caverock/androidsvg/IntegerParser;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)Lcom/caverock/androidsvg/IntegerParser;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/caverock/androidsvg/IntegerParser;->parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;II)Lcom/caverock/androidsvg/IntegerParser;
    .locals 10

    move v2, p1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    if-lt v2, p2, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v3, v2

    :goto_2
    if-ge v2, p2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    const/16 v6, 0x39

    if-gt v0, v6, :cond_3

    if-eqz v1, :cond_1

    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    sub-long v4, v6, v8

    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0xa

    mul-long/2addr v6, v4

    add-int/lit8 v8, v0, -0x30

    int-to-long v8, v8

    add-long v4, v6, v8

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-ne v2, v3, :cond_4

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    new-instance v6, Lcom/caverock/androidsvg/IntegerParser;

    invoke-direct {v6, v1, v4, v5, v2}, Lcom/caverock/androidsvg/IntegerParser;-><init>(ZJI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEndPos()I
    .locals 1

    iget v0, p0, Lcom/caverock/androidsvg/IntegerParser;->pos:I

    return v0
.end method

.method public value()I
    .locals 2

    iget-wide v0, p0, Lcom/caverock/androidsvg/IntegerParser;->value:J

    long-to-int v0, v0

    return v0
.end method
