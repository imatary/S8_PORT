.class public final Landroid/icu/impl/coll/CollationRuleParser;
.super Ljava/lang/Object;
.source "CollationRuleParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationRuleParser$Importer;,
        Landroid/icu/impl/coll/CollationRuleParser$Position;,
        Landroid/icu/impl/coll/CollationRuleParser$Sink;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BEFORE:Ljava/lang/String; = "[before"

.field private static final OFFSET_SHIFT:I = 0x8

.field static final POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

.field static final POS_BASE:C = '\u2800'

.field static final POS_LEAD:C = '\ufffe'

.field private static final STARRED_FLAG:I = 0x10

.field private static final STRENGTH_MASK:I = 0xf

.field private static final UCOL_DEFAULT:I = -0x1

.field private static final UCOL_OFF:I = 0x0

.field private static final UCOL_ON:I = 0x1

.field private static final U_PARSE_CONTEXT_LEN:I = 0x10

.field private static final gSpecialReorderCodes:[Ljava/lang/String;

.field private static final positions:[Ljava/lang/String;


# instance fields
.field private final baseData:Landroid/icu/impl/coll/CollationData;

.field private importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

.field private nfc:Landroid/icu/text/Normalizer2;

.field private nfd:Landroid/icu/text/Normalizer2;

.field private final rawBuilder:Ljava/lang/StringBuilder;

.field private ruleIndex:I

.field private rules:Ljava/lang/String;

.field private settings:Landroid/icu/impl/coll/CollationSettings;

.field private sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/impl/coll/CollationRuleParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationRuleParser;->-assertionsDisabled:Z

    invoke-static {}, Landroid/icu/impl/coll/CollationRuleParser$Position;->values()[Landroid/icu/impl/coll/CollationRuleParser$Position;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->POSITION_VALUES:[Landroid/icu/impl/coll/CollationRuleParser$Position;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "first tertiary ignorable"

    aput-object v3, v0, v1

    const-string/jumbo v3, "last tertiary ignorable"

    aput-object v3, v0, v2

    const-string/jumbo v3, "first secondary ignorable"

    aput-object v3, v0, v5

    const-string/jumbo v3, "last secondary ignorable"

    aput-object v3, v0, v6

    const-string/jumbo v3, "first primary ignorable"

    aput-object v3, v0, v7

    const-string/jumbo v3, "last primary ignorable"

    const/4 v4, 0x5

    aput-object v3, v0, v4

    const-string/jumbo v3, "first variable"

    const/4 v4, 0x6

    aput-object v3, v0, v4

    const-string/jumbo v3, "last variable"

    const/4 v4, 0x7

    aput-object v3, v0, v4

    const-string/jumbo v3, "first regular"

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string/jumbo v3, "last regular"

    const/16 v4, 0x9

    aput-object v3, v0, v4

    const-string/jumbo v3, "first implicit"

    const/16 v4, 0xa

    aput-object v3, v0, v4

    const-string/jumbo v3, "last implicit"

    const/16 v4, 0xb

    aput-object v3, v0, v4

    const-string/jumbo v3, "first trailing"

    const/16 v4, 0xc

    aput-object v3, v0, v4

    const-string/jumbo v3, "last trailing"

    const/16 v4, 0xd

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "space"

    aput-object v3, v0, v1

    const-string/jumbo v1, "punct"

    aput-object v1, v0, v2

    const-string/jumbo v1, "symbol"

    aput-object v1, v0, v5

    const-string/jumbo v1, "currency"

    aput-object v1, v0, v6

    const-string/jumbo v1, "digit"

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFCInstance()Landroid/icu/text/Normalizer2;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    return-void
.end method

.method private appendErrorContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " at index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " near \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v2, v3, -0xf

    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v1, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int v0, v3, v4

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    const/16 v0, 0xf

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v0, 0xe

    :cond_1
    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/2addr v5, v0

    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    const/16 v3, 0x22

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    if-lez v2, :cond_0

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getOnOffValue(Ljava/lang/String;)I
    .locals 1

    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static getReorderCode(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->gSpecialReorderCodes:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit16 v3, v1, 0x1000

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0x100a

    :try_start_0
    invoke-static {v3, p0}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I
    :try_end_0
    .catch Landroid/icu/impl/IllegalIcuArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_2

    return v2

    :catch_0
    move-exception v0

    :cond_2
    const-string/jumbo v3, "others"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x67

    return v3

    :cond_3
    const/4 v3, -0x1

    return v3
.end method

.method private static final isSurrogate(I)Z
    .locals 2

    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSyntaxChar(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-gt v2, p0, :cond_3

    const/16 v2, 0x7e

    if-gt p0, v2, :cond_3

    const/16 v2, 0x2f

    if-le p0, v2, :cond_0

    const/16 v2, 0x3a

    if-gt v2, p0, :cond_1

    const/16 v2, 0x40

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x5b

    if-gt v2, p0, :cond_2

    const/16 v2, 0x60

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x7b

    if-le v2, p0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private makeParseException(Ljava/lang/String;)Ljava/text/ParseException;
    .locals 3

    new-instance v0, Ljava/text/ParseException;

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->appendErrorContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method private parse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    :goto_0
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_0
    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v1, "expected a reset or setting or comment"

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRuleChain()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseSetting()V

    goto :goto_0

    :sswitch_2
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result v1

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    const/16 v2, 0x800

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :sswitch_4
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_4
        0x23 -> :sswitch_2
        0x26 -> :sswitch_0
        0x40 -> :sswitch_3
        0x5b -> :sswitch_1
    .end sparse-switch
.end method

.method private parseRelationOperator()I
    .locals 9

    const/16 v8, 0x2a

    const/4 v7, -0x1

    const/16 v6, 0x3c

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-direct {p0, v4}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v4

    iput v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v4, v5, :cond_0

    return v7

    :cond_0
    iget v1, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v7

    :sswitch_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    add-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x3

    :goto_0
    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_1

    add-int/lit8 v1, v1, 0x1

    or-int/lit8 v3, v3, 0x10

    :cond_1
    :goto_1
    iget v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    sub-int v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v3

    return v4

    :cond_2
    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const/4 v3, 0x1

    move v1, v2

    goto :goto_1

    :sswitch_2
    const/4 v3, 0x2

    move v1, v2

    goto :goto_1

    :sswitch_3
    const/16 v3, 0xf

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_5

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x1f

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_2
        0x3b -> :sswitch_1
        0x3c -> :sswitch_0
        0x3d -> :sswitch_3
    .end sparse-switch
.end method

.method private parseRelationStrings(II)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v3, ""

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v8}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p2, v8, :cond_3

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_0
    const/16 v8, 0x7c

    if-ne v4, v8, :cond_0

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v8, p2, 0x1

    iget-object v9, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v8, v9}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge p2, v8, :cond_4

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :cond_0
    :goto_1
    const/16 v8, 0x2f

    if-ne v4, v8, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v8, p2, 0x1

    invoke-direct {p0, v8, v2}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result p2

    move-object v3, v2

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v6}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfc:Landroid/icu/text/Normalizer2;

    invoke-virtual {v7, v0}, Landroid/icu/text/Normalizer2;->hasBoundaryBefore(I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    :try_start_0
    iget-object v7, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v8, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, v5, v8, v3}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_3
    move v4, v7

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v7, "in \'prefix|str\', prefix and str must each start with an NFC boundary"

    invoke-direct {p0, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v7, "adding relation failed"

    invoke-direct {p0, v7, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private parseReordering(Ljava/lang/CharSequence;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const/4 v11, 0x7

    if-ne v11, v10, :cond_0

    iget-object v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    return-void

    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v4, v10, :cond_3

    add-int/lit8 v4, v4, 0x1

    move v7, v4

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-ge v7, v10, :cond_1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {p1, v4, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/impl/coll/CollationRuleParser;->getReorderCode(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    const-string/jumbo v10, "unknown script or reorder code"

    invoke-direct {p0, v10}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v7

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    :goto_2
    return-void

    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v3, v10, [I

    const/4 v5, 0x0

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v3, v5

    move v5, v6

    goto :goto_3

    :cond_5
    iget-object v10, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    iget-object v11, p0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v10, v11, v3}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    goto :goto_2
.end method

.method private parseResetAndPosition()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, -0x1

    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    const-string/jumbo v6, "[before"

    const-string/jumbo v7, "[before"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v2, v6, v9, v7}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "[before"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v3, v2, v5

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x31

    if-gt v5, v0, :cond_0

    const/16 v5, 0x33

    if-gt v0, v5, :cond_0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_0

    add-int/lit8 v5, v0, -0x31

    add-int/lit8 v4, v5, 0x0

    add-int/lit8 v5, v3, 0x2

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v2

    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v2, v5, :cond_1

    const-string/jumbo v5, "reset without position"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v8

    :cond_0
    const/16 v4, 0xf

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v5}, Landroid/icu/impl/coll/CollationRuleParser;->parseSpecialPosition(ILjava/lang/StringBuilder;)I

    move-result v2

    :goto_1
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4, v6}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addReset(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return v4

    :cond_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v5}, Landroid/icu/impl/coll/CollationRuleParser;->parseTailoringString(ILjava/lang/StringBuilder;)I

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "adding reset failed"

    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return v8
.end method

.method private parseRuleChain()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseResetAndPosition()I

    move-result v2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationOperator()I

    move-result v3

    if-gez v3, :cond_2

    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    iget v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_0

    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->skipComment(I)I

    move-result v5

    iput v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const-string/jumbo v5, "reset not followed by a relation"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    and-int/lit8 v4, v3, 0xf

    const/16 v5, 0xf

    if-ge v2, v5, :cond_4

    if-eqz v1, :cond_3

    if-eq v4, v2, :cond_4

    const-string/jumbo v5, "reset-before strength differs from its first relation"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_3
    if-ge v4, v2, :cond_4

    const-string/jumbo v5, "reset-before strength followed by a stronger relation"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_4
    iget v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    shr-int/lit8 v6, v3, 0x8

    add-int v0, v5, v6

    and-int/lit8 v5, v3, 0x10

    if-nez v5, :cond_5

    invoke-direct {p0, v4, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseRelationStrings(II)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-direct {p0, v4, v0}, Landroid/icu/impl/coll/CollationRuleParser;->parseStarredCharacters(II)V

    goto :goto_1
.end method

.method private parseSetting()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    move/from16 v19, v0

    add-int/lit8 v8, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v8, v1}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v10

    if-le v10, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    if-nez v19, :cond_1

    :cond_0
    const-string/jumbo v19, "expected a setting/option at \'[\'"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x5d

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_22

    add-int/lit8 v10, v10, 0x1

    const-string/jumbo v19, "reorder"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    const/16 v19, 0x7

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/icu/impl/coll/CollationRuleParser;->parseReordering(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_3
    const-string/jumbo v19, "backwards 2"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v19, v0

    const/16 v20, 0x800

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_4
    const/16 v19, 0x20

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    if-ltz v18, :cond_6

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :goto_0
    const-string/jumbo v19, "strength"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v17, -0x1

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v19, 0x31

    move/from16 v0, v19

    if-gt v0, v5, :cond_7

    const/16 v19, 0x34

    move/from16 v0, v19

    if-gt v5, v0, :cond_7

    add-int/lit8 v19, v5, -0x31

    add-int/lit8 v17, v19, 0x0

    :cond_5
    :goto_1
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_6
    const-string/jumbo v16, ""

    goto :goto_0

    :cond_7
    const/16 v19, 0x49

    move/from16 v0, v19

    if-ne v5, v0, :cond_5

    const/16 v17, 0xf

    goto :goto_1

    :cond_8
    const-string/jumbo v19, "alternate"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    const/16 v17, -0x1

    const-string/jumbo v19, "non-ignorable"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v17, 0x0

    :cond_9
    :goto_2
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v20, v0

    if-lez v17, :cond_b

    const/16 v19, 0x1

    :goto_3
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_a
    const-string/jumbo v19, "shifted"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    const/16 v17, 0x1

    goto :goto_2

    :cond_b
    const/16 v19, 0x0

    goto :goto_3

    :cond_c
    const-string/jumbo v19, "maxVariable"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v17, -0x1

    const-string/jumbo v19, "space"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/16 v17, 0x0

    :cond_d
    :goto_4
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->baseData:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v20, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    sget-boolean v19, Landroid/icu/impl/coll/CollationRuleParser;->-assertionsDisabled:Z

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v19, v20, v22

    if-eqz v19, :cond_11

    const/16 v19, 0x1

    :goto_5
    if-nez v19, :cond_12

    new-instance v19, Ljava/lang/AssertionError;

    invoke-direct/range {v19 .. v19}, Ljava/lang/AssertionError;-><init>()V

    throw v19

    :cond_e
    const-string/jumbo v19, "punct"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    const/16 v17, 0x1

    goto :goto_4

    :cond_f
    const-string/jumbo v19, "symbol"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v17, 0x2

    goto :goto_4

    :cond_10
    const-string/jumbo v19, "currency"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/16 v17, 0x3

    goto/16 :goto_4

    :cond_11
    const/16 v19, 0x0

    goto :goto_5

    :cond_12
    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_13
    const-string/jumbo v19, "caseFirst"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v17, -0x1

    const-string/jumbo v19, "off"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    const/16 v17, 0x0

    :cond_14
    :goto_6
    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_15
    const-string/jumbo v19, "lower"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v17, 0x200

    goto :goto_6

    :cond_16
    const-string/jumbo v19, "upper"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v17, 0x300

    goto :goto_6

    :cond_17
    const-string/jumbo v19, "caseLevel"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v17

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v20, v0

    if-lez v17, :cond_18

    const/16 v19, 0x1

    :goto_7
    const/16 v21, 0x400

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_18
    const/16 v19, 0x0

    goto :goto_7

    :cond_19
    const-string/jumbo v19, "normalization"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v17

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v20, v0

    if-lez v17, :cond_1a

    const/16 v19, 0x1

    :goto_8
    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1a
    const/16 v19, 0x0

    goto :goto_8

    :cond_1b
    const-string/jumbo v19, "numericOrdering"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v17

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    move-object/from16 v20, v0

    if-lez v17, :cond_1c

    const/16 v19, 0x1

    :goto_9
    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1c
    const/16 v19, 0x0

    goto :goto_9

    :cond_1d
    const-string/jumbo v19, "hiraganaQ"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    invoke-static/range {v16 .. v16}, Landroid/icu/impl/coll/CollationRuleParser;->getOnOffValue(Ljava/lang/String;)I

    move-result v17

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_24

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    const-string/jumbo v19, "[hiraganaQ on] is not supported"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :cond_1e
    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_1f
    const-string/jumbo v19, "import"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    :try_start_0
    new-instance v19, Landroid/icu/util/ULocale$Builder;

    invoke-direct/range {v19 .. v19}, Landroid/icu/util/ULocale$Builder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/icu/util/ULocale$Builder;->setLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/ULocale$Builder;->build()Landroid/icu/util/ULocale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v19, "collation"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    move-object/from16 v19, v0

    if-nez v19, :cond_20

    const-string/jumbo v19, "[import langTag] is not supported"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :goto_a
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v19, "expected language tag in [import langTag]"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_20
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    move-object/from16 v19, v0

    if-eqz v6, :cond_21

    :goto_b
    move-object/from16 v0, v19

    invoke-interface {v0, v4, v6}, Landroid/icu/impl/coll/CollationRuleParser$Importer;->getRules(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_c
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    goto :goto_a

    :cond_21
    :try_start_3
    const-string/jumbo v6, "standard"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_b

    :catch_1
    move-exception v7

    const-string/jumbo v19, "[import langTag] failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :catch_2
    move-exception v7

    move-object/from16 v0, p0

    iput v12, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    const-string/jumbo v19, "parsing imported rules failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x5b

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_24

    new-instance v15, Landroid/icu/text/UnicodeSet;

    invoke-direct {v15}, Landroid/icu/text/UnicodeSet;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Landroid/icu/impl/coll/CollationRuleParser;->parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I

    move-result v10

    const-string/jumbo v19, "optimize"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_23

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->optimize(Landroid/icu/text/UnicodeSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_d
    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :catch_3
    move-exception v7

    const-string/jumbo v19, "[optimize set] failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_d

    :cond_23
    const-string/jumbo v19, "suppressContractions"

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->suppressContractions(Landroid/icu/text/UnicodeSet;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_e
    move-object/from16 v0, p0

    iput v10, v0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :catch_4
    move-exception v7

    const-string/jumbo v19, "[suppressContractions set] failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v7}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e

    :cond_24
    const-string/jumbo v19, "not a valid setting/option"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void
.end method

.method private parseSpecialPosition(ILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v6, 0x0

    const v5, 0xfffe

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/coll/CollationRuleParser;->readWords(ILjava/lang/StringBuilder;)I

    move-result v0

    if-le v0, p1, :cond_3

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v1, 0x0

    :goto_0
    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    sget-object v3, Landroid/icu/impl/coll/CollationRuleParser;->positions:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit16 v4, v1, 0x2800

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "top"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_REGULAR:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit16 v4, v4, 0x2800

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_2
    const-string/jumbo v3, "variable top"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/icu/impl/coll/CollationRuleParser$Position;->LAST_VARIABLE:Landroid/icu/impl/coll/CollationRuleParser$Position;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/lit16 v4, v4, 0x2800

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0

    :cond_3
    const-string/jumbo v3, "not a valid special reset position"

    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1
.end method

.method private parseStarredCharacters(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string/jumbo v2, ""

    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v5

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v5, v6}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "missing starred-relation string"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v4, -0x1

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v0}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "starred-relation string is not all NFD-inert"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v0}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v2, v6, v2}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "adding relation failed"

    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p2, v5, :cond_3

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v5

    iput v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->ruleIndex:I

    return-void

    :cond_4
    if-gez v4, :cond_5

    const-string/jumbo v5, "range without start in starred-relation string"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v5, p2, 0x1

    iget-object v6, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v5, v6}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "range without end in starred-relation string"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rawBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v0

    if-ge v0, v4, :cond_8

    const-string/jumbo v5, "range start greater than end in starred-relation string"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_7
    :try_start_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    invoke-static {v4}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v2, v6, v2}, Landroid/icu/impl/coll/CollationRuleParser$Sink;->addRelation(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    if-gt v4, v0, :cond_b

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->nfd:Landroid/icu/text/Normalizer2;

    invoke-virtual {v5, v4}, Landroid/icu/text/Normalizer2;->isInert(I)Z

    move-result v5

    if-nez v5, :cond_9

    const-string/jumbo v5, "starred-relation string range is not all NFD-inert"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_9
    invoke-static {v4}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "starred-relation string range contains a surrogate"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :cond_a
    const v5, 0xfffd

    if-gt v5, v4, :cond_7

    const v5, 0xffff

    if-gt v4, v5, :cond_7

    const-string/jumbo v5, "starred-relation string range contains U+FFFD, U+FFFE or U+FFFF"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    const-string/jumbo v5, "adding relation failed"

    invoke-direct {p0, v5, v1}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_b
    const/4 v4, -0x1

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    goto/16 :goto_0
.end method

.method private parseString(ILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v6, 0x27

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p1, v5, :cond_6

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v5

    if-eqz v5, :cond_7

    if-ne v0, v6, :cond_3

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_0

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, v3, 0x1

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne p1, v5, :cond_1

    const-string/jumbo v5, "quoted literal text missing terminating apostrophe"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_1
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v5, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_c

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    add-int/lit8 p1, v3, 0x1

    :goto_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move p1, v3

    goto :goto_0

    :cond_3
    const/16 v5, 0x5c

    if-ne v0, v5, :cond_5

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_4

    const-string/jumbo v5, "backslash escape at the end of the rule string"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v3

    :cond_4
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int p1, v3, v5

    goto/16 :goto_0

    :cond_5
    add-int/lit8 p1, v3, -0x1

    :cond_6
    :goto_3
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_b

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->codePointAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/coll/CollationRuleParser;->isSurrogate(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "string contains an unpaired surrogate"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_7
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 p1, v3, -0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v3

    goto/16 :goto_0

    :cond_9
    const v5, 0xfffd

    if-gt v5, v1, :cond_a

    const v5, 0xffff

    if-gt v1, v5, :cond_a

    const-string/jumbo v5, "string contains U+FFFD, U+FFFE or U+FFFF"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return p1

    :cond_a
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_4

    :cond_b
    return p1

    :cond_c
    move p1, v3

    goto :goto_2
.end method

.method private parseTailoringString(ILjava/lang/StringBuilder;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Landroid/icu/impl/coll/CollationRuleParser;->parseString(ILjava/lang/StringBuilder;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "missing relation string"

    invoke-direct {p0, v0}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v0

    return v0
.end method

.method private parseUnicodeSet(ILandroid/icu/text/UnicodeSet;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/16 v7, 0x5d

    const/4 v4, 0x0

    move v2, p1

    :goto_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_0

    const-string/jumbo v5, "unbalanced UnicodeSet pattern brackets"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x5b

    if-ne v0, v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_1

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, p1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;)Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0, v3}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result v2

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_3

    iget-object v5, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    :cond_3
    const-string/jumbo v5, "missing option-terminating \']\' after UnicodeSet pattern"

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    return v2

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "not a valid UnicodeSet pattern: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/icu/impl/coll/CollationRuleParser;->setParseError(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private readWords(ILjava/lang/StringBuilder;)I
    .locals 5

    const/16 v4, 0x20

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/coll/CollationRuleParser;->isSyntaxChar(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_3

    const/16 v2, 0x5f

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    return p1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return p1

    :cond_3
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-direct {p0, v2}, Landroid/icu/impl/coll/CollationRuleParser;->skipWhiteSpace(I)I

    move-result p1

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private setParseError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    throw v0
.end method

.method private setParseError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/icu/impl/coll/CollationRuleParser;->makeParseException(Ljava/lang/String;)Ljava/text/ParseException;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method private skipComment(I)I
    .locals 3

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    :cond_0
    move p1, v1

    :cond_1
    return p1

    :cond_2
    const/16 v2, 0xd

    if-eq v0, v2, :cond_0

    const/16 v2, 0x85

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2028

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2029

    if-eq v0, v2, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method private skipWhiteSpace(I)I
    .locals 1

    :goto_0
    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/icu/impl/coll/CollationRuleParser;->rules:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method


# virtual methods
.method parse(Ljava/lang/String;Landroid/icu/impl/coll/CollationSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iput-object p2, p0, Landroid/icu/impl/coll/CollationRuleParser;->settings:Landroid/icu/impl/coll/CollationSettings;

    invoke-direct {p0, p1}, Landroid/icu/impl/coll/CollationRuleParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method setImporter(Landroid/icu/impl/coll/CollationRuleParser$Importer;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->importer:Landroid/icu/impl/coll/CollationRuleParser$Importer;

    return-void
.end method

.method setSink(Landroid/icu/impl/coll/CollationRuleParser$Sink;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/coll/CollationRuleParser;->sink:Landroid/icu/impl/coll/CollationRuleParser$Sink;

    return-void
.end method
