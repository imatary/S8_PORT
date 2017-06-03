.class Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
.super Ljava/lang/Object;
.source "DateTimePatternGenerator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateTimeMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private baseOriginal:[Ljava/lang/String;

.field private original:[Ljava/lang/String;

.field private type:[I


# direct methods
.method static synthetic -get0(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)[I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    return-object v0
.end method

.method private constructor <init>()V
    .locals 2

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    neg-int v2, v0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->compareTo(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x0

    instance-of v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    if-nez v2, :cond_0

    return v4

    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, v1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method extractFrom(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v2, v2, v0

    aput v2, v1, v0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    iget-object v2, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aput v3, v1, v0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    const-string/jumbo v2, ""

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method public fieldIsNumeric(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v1, v1, p1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method getBasePattern()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getDistance(Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;ILandroid/icu/text/DateTimePatternGenerator$DistanceInfo;)I
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p3}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v4, v4

    if-ge v0, v4, :cond_4

    const/4 v4, 0x1

    shl-int/2addr v4, v0

    and-int/2addr v4, p2

    if-nez v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p1, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v2, v4, v0

    if-ne v1, v2, :cond_1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v1, v4, v0

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/high16 v4, 0x10000

    add-int/2addr v3, v4

    invoke-virtual {p3, v0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->addExtra(I)V

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    add-int/lit16 v3, v3, 0x1000

    invoke-virtual {p3, v0}, Landroid/icu/text/DateTimePatternGenerator$DistanceInfo;->addMissing(I)V

    goto :goto_2

    :cond_3
    sub-int v4, v1, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_2

    :cond_4
    return v3
.end method

.method getFieldMask()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public origStringForField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method set(Ljava/lang/String;Landroid/icu/text/DateTimePatternGenerator$FormatParser;Z)Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;
    .locals 16

    const/4 v4, 0x0

    :goto_0
    const/16 v13, 0x10

    if-ge v4, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    const/4 v14, 0x0

    aput v14, v13, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    const-string/jumbo v14, ""

    aput-object v14, v13, v4

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    const-string/jumbo v14, ""

    aput-object v14, v13, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->set(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$FormatParser;

    invoke-virtual/range {p2 .. p2}, Landroid/icu/text/DateTimePatternGenerator$FormatParser;->getItems()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    instance-of v13, v6, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    if-eqz v13, :cond_1

    move-object v5, v6

    check-cast v5, Landroid/icu/text/DateTimePatternGenerator$VariableField;

    invoke-virtual {v5}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x61

    if-eq v13, v14, :cond_1

    invoke-static {v5}, Landroid/icu/text/DateTimePatternGenerator$VariableField;->-wrap0(Landroid/icu/text/DateTimePatternGenerator$VariableField;)I

    move-result v2

    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    move-result-object v13

    aget-object v10, v13, v2

    const/4 v13, 0x1

    aget v12, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v13, v13, v12

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_4

    if-nez p3, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v13, v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x72

    if-ne v13, v14, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x55

    if-eq v13, v14, :cond_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v13, v13, v12

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x55

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x72

    if-eq v13, v14, :cond_1

    :cond_3
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Conflicting fields:\t"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v15, v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\t in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aput-object v3, v13, v12

    const/4 v13, 0x0

    aget v13, v10, v13

    int-to-char v8, v13

    const/4 v13, 0x3

    aget v9, v10, v13

    const-string/jumbo v13, "GEzvQ"

    invoke-virtual {v13, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_5

    const/4 v9, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->baseOriginal:[Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v9}, Landroid/icu/impl/Utility;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v12

    const/4 v13, 0x2

    aget v11, v10, v13

    if-lez v11, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v11, v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->type:[I

    aput v11, v13, v12

    goto/16 :goto_1

    :cond_7
    return-object p0
.end method

.method public toCanonicalString()Ljava/lang/String;
    .locals 10

    const/16 v6, 0x68

    const/4 v9, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v7, 0x10

    if-ge v0, v7, :cond_4

    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    move-result-object v7

    array-length v7, v7

    if-ge v1, v7, :cond_1

    invoke-static {}, Landroid/icu/text/DateTimePatternGenerator;->-get1()[[I

    move-result-object v7

    aget-object v5, v7, v1

    const/4 v7, 0x1

    aget v7, v5, v7

    if-ne v7, v0, :cond_3

    iget-object v7, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v6, :cond_0

    const/16 v7, 0x4b

    if-ne v2, v7, :cond_2

    :cond_0
    move v3, v6

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Landroid/icu/impl/Utility;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v7, v5, v9

    int-to-char v3, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/DateTimePatternGenerator$DateTimeMatcher;->original:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
