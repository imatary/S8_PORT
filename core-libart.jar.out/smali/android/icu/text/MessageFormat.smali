.class public Landroid/icu/text/MessageFormat;
.super Landroid/icu/text/UFormat;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MessageFormat$AppendableWrapper;,
        Landroid/icu/text/MessageFormat$AttributeAndPosition;,
        Landroid/icu/text/MessageFormat$Field;,
        Landroid/icu/text/MessageFormat$PluralSelectorContext;,
        Landroid/icu/text/MessageFormat$PluralSelectorProvider;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final CURLY_BRACE_LEFT:C = '{'

.field private static final CURLY_BRACE_RIGHT:C = '}'

.field private static final DATE_MODIFIER_EMPTY:I = 0x0

.field private static final DATE_MODIFIER_FULL:I = 0x4

.field private static final DATE_MODIFIER_LONG:I = 0x3

.field private static final DATE_MODIFIER_MEDIUM:I = 0x2

.field private static final DATE_MODIFIER_SHORT:I = 0x1

.field private static final MODIFIER_CURRENCY:I = 0x1

.field private static final MODIFIER_EMPTY:I = 0x0

.field private static final MODIFIER_INTEGER:I = 0x3

.field private static final MODIFIER_PERCENT:I = 0x2

.field private static final SINGLE_QUOTE:C = '\''

.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_IN_QUOTE:I = 0x2

.field private static final STATE_MSG_ELEMENT:I = 0x3

.field private static final STATE_SINGLE_QUOTE:I = 0x1

.field private static final TYPE_DATE:I = 0x1

.field private static final TYPE_DURATION:I = 0x5

.field private static final TYPE_NUMBER:I = 0x0

.field private static final TYPE_ORDINAL:I = 0x4

.field private static final TYPE_SPELLOUT:I = 0x3

.field private static final TYPE_TIME:I = 0x2

.field private static final dateModifierList:[Ljava/lang/String;

.field private static final modifierList:[Ljava/lang/String;

.field private static final rootLocale:Ljava/util/Locale;

.field static final serialVersionUID:J = 0x6308eb804ceb42dcL

.field private static final typeList:[Ljava/lang/String;


# instance fields
.field private transient cachedFormatters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/text/Format;",
            ">;"
        }
    .end annotation
.end field

.field private transient customFormatArgStarts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private transient ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

.field private transient stockDateFormatter:Landroid/icu/text/DateFormat;

.field private transient stockNumberFormatter:Landroid/icu/text/NumberFormat;

.field private transient ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static synthetic -get0(Landroid/icu/text/MessageFormat;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->findFirstPluralNumberArg(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/icu/text/MessageFormat;I)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/text/MessageFormat;->findOtherSubMessage(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Landroid/icu/text/MessageFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    aput-object v3, v0, v1

    const-string/jumbo v3, "date"

    aput-object v3, v0, v2

    const-string/jumbo v3, "time"

    aput-object v3, v0, v5

    const-string/jumbo v3, "spellout"

    aput-object v3, v0, v6

    const-string/jumbo v3, "ordinal"

    aput-object v3, v0, v7

    const-string/jumbo v3, "duration"

    const/4 v4, 0x5

    aput-object v3, v0, v4

    sput-object v0, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v0, v1

    const-string/jumbo v3, "currency"

    aput-object v3, v0, v2

    const-string/jumbo v3, "percent"

    aput-object v3, v0, v5

    const-string/jumbo v3, "integer"

    aput-object v3, v0, v6

    sput-object v0, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, ""

    aput-object v3, v0, v1

    const-string/jumbo v1, "short"

    aput-object v1, v0, v2

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v5

    const-string/jumbo v1, "long"

    aput-object v1, v0, v6

    const-string/jumbo v1, "full"

    aput-object v1, v0, v7

    sput-object v0, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    iput-object p2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private argNameMatches(ILjava/lang/String;I)Z
    .locals 3

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static autoQuoteApostrophe(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v5, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    sparse-switch v2, :sswitch_data_1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_2
    const/4 v5, 0x0

    goto :goto_1

    :sswitch_3
    const/4 v5, 0x2

    goto :goto_1

    :pswitch_2
    packed-switch v2, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const/4 v5, 0x0

    goto :goto_1

    :pswitch_4
    packed-switch v2, :pswitch_data_2

    :pswitch_5
    goto :goto_1

    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_7
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x7b -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x27 -> :sswitch_2
        0x7b -> :sswitch_3
        0x7d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7b
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method private cacheExplicitFormats()V
    .locals 11

    const/4 v10, 0x0

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    :cond_0
    iput-object v10, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v9

    add-int/lit8 v6, v9, -0x2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v6, :cond_3

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v9, v10, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    sget-object v9, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, v9, :cond_1

    move v5, v3

    add-int/lit8 v3, v3, 0x2

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v10, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, ""

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v4}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_STYLE:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v7}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v3, v4, 0x1

    :goto_2
    invoke-direct {p0, v1, v8}, Landroid/icu/text/MessageFormat;->createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;

    move-result-object v2

    invoke-direct {p0, v5, v2}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private createAppropriateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/Format;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x0

    sget-object v5, Landroid/icu/text/MessageFormat;->typeList:[Ljava/lang/String;

    invoke-static {p1, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown format type \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_0
    sget-object v5, Landroid/icu/text/MessageFormat;->modifierList:[Ljava/lang/String;

    invoke-static {p2, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_1

    new-instance v1, Landroid/icu/text/DecimalFormat;

    new-instance v5, Landroid/icu/text/DecimalFormatSymbols;

    iget-object v6, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v5, v6}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    invoke-direct {v1, p2, v5}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    :goto_0
    return-object v1

    :pswitch_1
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getCurrencyInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getPercentInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v5}, Landroid/icu/text/NumberFormat;->getIntegerInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    sget-object v5, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_2

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v1, p2, v5}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_6
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v9, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_8
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_9
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v8, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_a
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v6, v5}, Landroid/icu/text/DateFormat;->getDateInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_b
    sget-object v5, Landroid/icu/text/MessageFormat;->dateModifierList:[Ljava/lang/String;

    invoke-static {p2, v5}, Landroid/icu/text/MessageFormat;->findKeyword(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_3

    new-instance v1, Landroid/icu/text/SimpleDateFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v1, p2, v5}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    goto :goto_0

    :pswitch_c
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_d
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v9, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_e
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v7, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_f
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v8, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto :goto_0

    :pswitch_10
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v6, v5}, Landroid/icu/text/DateFormat;->getTimeInstance(ILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_11
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v2, v5, v8}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    move-object v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_12
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v2, v5, v7}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    move-object v1, v2

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :pswitch_13
    new-instance v2, Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v2, v5, v9}, Landroid/icu/text/RuleBasedNumberFormat;-><init>(Landroid/icu/util/ULocale;I)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v2, v3}, Landroid/icu/text/RuleBasedNumberFormat;->setDefaultRuleSet(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_3
    move-object v1, v2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_b
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private static findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I
    .locals 10

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v3

    add-int/lit8 p1, p1, 0x2

    :goto_0
    move v4, p1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_1
    return v4

    :cond_1
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v8

    sget-object v9, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v8, v9, :cond_2

    move p1, v6

    goto :goto_1

    :cond_2
    sget-boolean v9, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    if-nez v9, :cond_3

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_3
    invoke-virtual {p0, v5}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v0

    add-int/lit8 p1, v6, 0x1

    invoke-virtual {p0, v6}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v7

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v9, 0x3c

    if-ne v2, v9, :cond_4

    cmpl-double v9, p2, v0

    if-lez v9, :cond_0

    goto :goto_0

    :cond_4
    cmpl-double v9, p2, v0

    if-ltz v9, :cond_0

    goto :goto_0
.end method

.method private findFirstPluralNumberArg(ILjava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    add-int/lit8 v1, p1, 0x1

    :goto_0
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_0

    return v6

    :cond_0
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_1

    const/4 v4, -0x1

    return v4

    :cond_1
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    if-eq v0, v4, :cond_2

    sget-object v4, Landroid/icu/text/MessagePattern$ArgType;->SIMPLE:Landroid/icu/text/MessagePattern$ArgType;

    if-ne v0, v4, :cond_3

    :cond_2
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v2, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static final findKeyword(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    invoke-static {p0}, Landroid/icu/impl/PatternProps;->trimWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/icu/text/MessageFormat;->rootLocale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findOtherSubMessage(I)I
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    :goto_0
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_2

    move p1, v2

    :cond_1
    return v5

    :cond_2
    sget-boolean v4, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    if-nez v4, :cond_4

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v3, v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const-string/jumbo v6, "other"

    invoke-virtual {v4, v1, v6}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    :cond_5
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, v2}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 p1, v2, 0x1

    :goto_2
    iget-object v4, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_6
    move p1, v2

    goto :goto_2
.end method

.method public static format(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/text/MessageFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v38

    add-int/lit8 v11, p1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v40

    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v31

    move-object/from16 v0, p5

    move-object/from16 v1, v32

    move/from16 v2, v38

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;II)V

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v40

    if-ne v0, v7, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v38

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v40

    if-ne v0, v7, :cond_3

    move-object/from16 v0, p2

    iget-boolean v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v7, :cond_2

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v9, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v9}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v40

    if-ne v0, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v27

    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v36

    const/16 v33, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v12

    if-eqz p3, :cond_6

    invoke-virtual/range {v36 .. v36}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v28

    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    :cond_4
    if-ltz v28, :cond_5

    move-object/from16 v0, p3

    array-length v7, v0

    move/from16 v0, v28

    if-ge v0, v7, :cond_5

    aget-object v25, p3, v28

    :goto_2
    add-int/lit8 v11, v11, 0x1

    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v37

    const/16 v30, 0x0

    if-eqz v33, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "{"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "}"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move/from16 v2, v37

    move-object/from16 v3, p6

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MessageFormat;->updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;

    move-result-object p6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v38

    move/from16 v11, v27

    goto/16 :goto_1

    :cond_5
    const/16 v25, 0x0

    const/16 v33, 0x1

    goto :goto_2

    :cond_6
    move-object/from16 v26, v12

    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    goto :goto_2

    :cond_7
    const/16 v25, 0x0

    const/16 v33, 0x1

    goto :goto_2

    :cond_8
    if-nez v25, :cond_9

    const-string/jumbo v7, "null"

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    if-eqz p2, :cond_b

    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    add-int/lit8 v9, v11, -0x2

    if-ne v7, v9, :cond_b

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->offset:D

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x0

    cmpl-double v7, v16, v20

    if-nez v7, :cond_a

    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v7, v9, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    move-object/from16 v0, p2

    iget-object v7, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v9, v11, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/text/Format;

    if-eqz v30, :cond_11

    move-object/from16 v0, v30

    instance-of v7, v0, Ljava/text/ChoiceFormat;

    if-nez v7, :cond_c

    move-object/from16 v0, v30

    instance-of v7, v0, Landroid/icu/text/PluralFormat;

    if-nez v7, :cond_c

    move-object/from16 v0, v30

    instance-of v7, v0, Landroid/icu/text/SelectFormat;

    if-eqz v7, :cond_10

    :cond_c
    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    const/16 v7, 0x7b

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_e

    const/16 v7, 0x27

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    invoke-static/range {p5 .. p5}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v7

    if-nez v7, :cond_f

    move-object/from16 v0, p5

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_e
    new-instance v6, Landroid/icu/text/MessageFormat;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    move-object/from16 v0, v39

    invoke-direct {v6, v0, v7}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v12}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p5

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_11
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v29

    if-eq v0, v7, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    add-int/lit8 v9, v11, -0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    :cond_12
    move-object/from16 v0, v25

    instance-of v7, v0, Ljava/lang/Number;

    if-eqz v7, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v7

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, v25

    instance-of v7, v0, Ljava/util/Date;

    if-eqz v7, :cond_14

    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockDateFormatter()Landroid/icu/text/DateFormat;

    move-result-object v7

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-virtual {v0, v7, v1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->formatAndAppend(Ljava/text/Format;Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_14
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_15
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v29

    if-ne v0, v7, :cond_17

    move-object/from16 v0, v25

    instance-of v7, v0, Ljava/lang/Number;

    if-nez v7, :cond_16

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v16, "\' is not a Number"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_16
    check-cast v25, Ljava/lang/Number;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v34

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-wide/from16 v0, v34

    invoke-static {v7, v11, v0, v1}, Landroid/icu/text/MessageFormat;->findChoiceSubMessage(Landroid/icu/text/MessagePattern;ID)I

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v7, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    goto/16 :goto_3

    :cond_17
    invoke-virtual/range {v29 .. v29}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v7

    if-eqz v7, :cond_1c

    move-object/from16 v0, v25

    instance-of v7, v0, Ljava/lang/Number;

    if-nez v7, :cond_18

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "\'"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v16, "\' is not a Number"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_18
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->PLURAL:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v29

    if-ne v0, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v7, :cond_19

    new-instance v7, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v9, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    move-object/from16 v18, v0

    :goto_4
    move-object/from16 v13, v25

    check-cast v13, Ljava/lang/Number;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, v11}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v14

    new-instance v10, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/MessageFormat$PluralSelectorContext;-><init>(ILjava/lang/String;Ljava/lang/Number;DLandroid/icu/text/MessageFormat$PluralSelectorContext;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v16, v0

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    move/from16 v17, v11

    move-object/from16 v19, v10

    invoke-static/range {v16 .. v21}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result v8

    move-object/from16 v19, p0

    move/from16 v20, v8

    move-object/from16 v21, v10

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    invoke-direct/range {v19 .. v24}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    if-nez v7, :cond_1b

    new-instance v7, Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    sget-object v9, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v9}, Landroid/icu/text/MessageFormat$PluralSelectorProvider;-><init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    move-object/from16 v18, v0

    goto :goto_4

    :cond_1c
    sget-object v7, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v29

    if-ne v0, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v11, v9}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v8

    const/16 v21, 0x0

    move-object/from16 v19, p0

    move/from16 v20, v8

    move-object/from16 v22, p3

    move-object/from16 v23, p4

    move-object/from16 v24, p5

    invoke-direct/range {v19 .. v24}, Landroid/icu/text/MessageFormat;->formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V

    goto/16 :goto_3

    :cond_1d
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "unexpected argType "

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, v1, p1, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_0
    return-void

    :cond_1
    check-cast p1, [Ljava/lang/Object;

    invoke-direct {p0, p1, v1, p2, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    goto :goto_0
.end method

.method private format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            "Ljava/text/FieldPosition;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void
.end method

.method private formatComplexSubMessage(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/icu/text/MessageFormat$PluralSelectorContext;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/icu/text/MessageFormat$AppendableWrapper;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v12

    move/from16 v8, p1

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v15

    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v9

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v15, v2, :cond_3

    if-nez v13, :cond_2

    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :goto_1
    const/16 v2, 0x7b

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_a

    new-instance v1, Landroid/icu/text/MessageFormat;

    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-direct {v1, v2, v3}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;)V

    sget-object v2, Landroid/icu/text/MessagePattern$ApostropheMode;->DOUBLE_REQUIRED:Landroid/icu/text/MessagePattern$ApostropheMode;

    invoke-virtual {v1, v14, v2}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Landroid/icu/text/MessageFormat;->format(ILandroid/icu/text/MessageFormat$PluralSelectorContext;[Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v13, v10, v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_1

    :cond_3
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v15, v2, :cond_4

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v15, v2, :cond_8

    :cond_4
    if-nez v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {v13, v10, v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v15, v2, :cond_6

    move-object/from16 v0, p2

    iget-boolean v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    invoke-virtual {v11}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v12

    goto :goto_0

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/MessageFormat;->getStockNumberFormatter()Landroid/icu/text/NumberFormat;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v2, v3}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v15, v2, :cond_1

    if-nez v13, :cond_9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    invoke-virtual {v13, v10, v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v12, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v9

    invoke-static {v10, v12, v9, v13}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v12, v9

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/icu/text/MessageFormat$AppendableWrapper;->append(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private getArgName(I)Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v1

    sget-object v2, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v0}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLiteralStringUntilNextArgument(I)Ljava/lang/String;
    .locals 10

    const/4 v8, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v5

    add-int/lit8 v1, p1, 0x1

    :goto_0
    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v2

    invoke-virtual {v0, v3, v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v6, v7, :cond_0

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_1
    sget-boolean v7, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    if-nez v7, :cond_4

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v6, v7, :cond_2

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_3

    :cond_2
    move v7, v8

    :goto_1
    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/AssertionError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unexpected Part "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " in parsed message."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getStockDateFormatter()Landroid/icu/text/DateFormat;
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v1, v1, v0}, Landroid/icu/text/DateFormat;->getDateTimeInstance(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    return-object v0
.end method

.method private getStockNumberFormatter()Landroid/icu/text/NumberFormat;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method private static matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v6

    invoke-virtual {v6}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v5

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    if-eq p1, p2, :cond_1

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v6

    sget-object v7, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v6, v7, :cond_0

    :cond_1
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v0

    sub-int v1, v0, v5

    if-eqz v1, :cond_2

    invoke-virtual {p3, p4, v3, v5, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    add-int/2addr v2, v1

    if-ne p1, p2, :cond_4

    return v2

    :cond_3
    const/4 v6, -0x1

    return v6

    :cond_4
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v5

    goto :goto_0
.end method

.method private nextTopLevelArgStart(I)I
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v0

    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_1

    return p1

    :cond_1
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    return v1
.end method

.method private parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v22

    invoke-virtual/range {p3 .. p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v23

    new-instance v26, Ljava/text/ParsePosition;

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    add-int/lit8 v15, p1, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v16

    sub-int v18, v16, v22

    if-eqz v18, :cond_1

    move-object/from16 v0, v19

    move/from16 v1, v22

    move-object/from16 v2, p2

    move/from16 v3, v23

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v28

    if-eqz v28, :cond_2

    :cond_1
    add-int v23, v23, v18

    add-int v22, v22, v18

    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-void

    :cond_2
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_3
    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_4

    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->INSERT_CHAR:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_5

    :cond_4
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v22

    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_5
    sget-boolean v28, Landroid/icu/text/MessageFormat;->-assertionsDisabled:Z

    if-nez v28, :cond_7

    sget-object v28, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_6

    const/16 v28, 0x1

    :goto_2
    if-nez v28, :cond_7

    new-instance v28, Ljava/lang/AssertionError;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Unexpected Part "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " in parsed message."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v28

    :cond_6
    const/16 v28, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v7

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getArgType()Landroid/icu/text/MessagePattern$ArgType;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v21

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v17, 0x0

    if-eqz p4, :cond_8

    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    move-object/from16 v28, v0

    if-eqz v28, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    move-object/from16 v28, v0

    add-int/lit8 v29, v15, -0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/text/Format;

    if-eqz v11, :cond_c

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Ljava/text/Format;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_8
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v28

    sget-object v29, Landroid/icu/text/MessagePattern$Part$Type;->ARG_NAME:Landroid/icu/text/MessagePattern$Part$Type;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/MessagePattern;->getSubstring(Landroid/icu/text/MessagePattern$Part;)Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object/from16 v6, v17

    goto :goto_3

    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_4

    :cond_a
    const/4 v14, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    move-result v23

    :goto_5
    if-eqz v14, :cond_b

    if-eqz p4, :cond_16

    aput-object v9, p4, v8

    :cond_b
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v22

    move v15, v7

    goto/16 :goto_1

    :cond_c
    sget-object v28, Landroid/icu/text/MessagePattern$ArgType;->NONE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v28

    if-eq v10, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    move-object/from16 v28, v0

    if-eqz v28, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    move-object/from16 v28, v0

    add-int/lit8 v29, v15, -0x2

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/icu/text/MessageFormat;->getLiteralStringUntilNextArgument(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    if-eqz v28, :cond_e

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v20

    :goto_7
    if-gez v20, :cond_f

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_e
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v20

    goto :goto_7

    :cond_f
    move-object/from16 v0, p2

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "{"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string/jumbo v29, "}"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_10

    const/4 v14, 0x1

    move-object/from16 v9, v24

    :cond_10
    move/from16 v23, v20

    goto/16 :goto_5

    :cond_11
    sget-object v28, Landroid/icu/text/MessagePattern$ArgType;->CHOICE:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v28

    if-ne v10, v0, :cond_13

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-static {v0, v15, v1, v2}, Landroid/icu/text/MessageFormat;->parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D

    move-result-wide v12

    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    move-result v28

    move/from16 v0, v28

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-void

    :cond_12
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v14, 0x1

    invoke-virtual/range {v26 .. v26}, Ljava/text/ParsePosition;->getIndex()I

    move-result v23

    goto/16 :goto_5

    :cond_13
    invoke-virtual {v10}, Landroid/icu/text/MessagePattern$ArgType;->hasPluralStyle()Z

    move-result v28

    if-nez v28, :cond_14

    sget-object v28, Landroid/icu/text/MessagePattern$ArgType;->SELECT:Landroid/icu/text/MessagePattern$ArgType;

    move-object/from16 v0, v28

    if-ne v10, v0, :cond_15

    :cond_14
    new-instance v28, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v29, "Parsing of plural/select/selectordinal argument is not supported."

    invoke-direct/range {v28 .. v29}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_15
    new-instance v28, Ljava/lang/IllegalStateException;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "unexpected argType "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v28

    :cond_16
    if-eqz p5, :cond_b

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6
.end method

.method private static parseChoiceArgument(Landroid/icu/text/MessagePattern;ILjava/lang/String;Ljava/text/ParsePosition;)D
    .locals 11

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    move v2, v6

    const-wide/high16 v0, 0x7ff8000000000000L    # NaN

    const-wide/16 v8, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v7

    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v7, v10, :cond_0

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v8

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v4

    invoke-static {p0, p1, v4, p2, v6}, Landroid/icu/text/MessageFormat;->matchStringUntilLimitPart(Landroid/icu/text/MessagePattern;IILjava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_1

    add-int v5, v6, v3

    if-le v5, v2, :cond_1

    move v2, v5

    move-wide v0, v8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v5, v7, :cond_1

    :cond_0
    if-ne v2, v6, :cond_2

    invoke-virtual {p3, v6}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :goto_1
    return-wide v0

    :cond_1
    add-int/lit8 p1, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v7

    iput-object v7, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessagePattern$ApostropheMode;

    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v7}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v7

    if-eq v0, v7, :cond_1

    :cond_0
    new-instance v7, Landroid/icu/text/MessagePattern;

    invoke-direct {v7, v0}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v7, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :cond_1
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {p0, v4}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    :goto_0
    if-lez v5, :cond_3

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    invoke-virtual {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setFormat(ILjava/text/Format;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    :goto_1
    if-lez v6, :cond_4

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private resetPattern()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    iput-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    return-void
.end method

.method private setArgStartFormat(ILjava/text/Format;)V
    .locals 2

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCustomArgStartFormat(ILjava/text/Format;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/icu/text/MessageFormat;->setArgStartFormat(ILjava/text/Format;)V

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateMetaData(Landroid/icu/text/MessageFormat$AppendableWrapper;ILjava/text/FieldPosition;Ljava/lang/Object;)Ljava/text/FieldPosition;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v2

    invoke-direct {v1, p4, p2, v2}, Landroid/icu/text/MessageFormat$AttributeAndPosition;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, Landroid/icu/text/MessageFormat$Field;->ARGUMENT:Landroid/icu/text/MessageFormat$Field;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/MessageFormat$Field;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p3, p2}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-static {p1}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get1(Landroid/icu/text/MessageFormat$AppendableWrapper;)I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v3

    :cond_1
    return-object p3
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v2}, Landroid/icu/util/ULocale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v2, :cond_0

    new-instance v2, Landroid/icu/text/MessagePattern;

    invoke-direct {v2}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :cond_0
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    :cond_2
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void

    :cond_3
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v1, :cond_0

    new-instance v1, Landroid/icu/text/MessagePattern;

    invoke-direct {v1, p1}, Landroid/icu/text/MessagePattern;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :goto_0
    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->cacheExplicitFormats()V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->parse(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/icu/text/MessageFormat;->resetPattern()V

    throw v0
.end method

.method public applyPattern(Ljava/lang/String;Landroid/icu/text/MessagePattern$ApostropheMode;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_1

    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0, p2}, Landroid/icu/text/MessagePattern;-><init>(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p2}, Landroid/icu/text/MessagePattern;->clearPatternAndSetApostropheMode(Landroid/icu/text/MessagePattern$ApostropheMode;)V

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 9

    const/4 v7, 0x0

    invoke-super {p0}, Landroid/icu/text/UFormat;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/MessageFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v4, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v5, v4, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v7, v4, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    :cond_1
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v8, v4, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/text/Format;

    invoke-interface {v8, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object v7, v4, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    :cond_3
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v5, :cond_4

    move-object v5, v7

    :goto_2
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    if-nez v5, :cond_5

    move-object v5, v7

    :goto_3
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    if-nez v5, :cond_6

    move-object v5, v7

    :goto_4
    iput-object v5, v4, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    iput-object v7, v4, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    iput-object v7, v4, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    return-object v4

    :cond_4
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v5}, Landroid/icu/text/MessagePattern;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/MessagePattern;

    goto :goto_2

    :cond_5
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    invoke-virtual {v5}, Landroid/icu/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/DateFormat;

    goto :goto_3

    :cond_6
    iget-object v5, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    invoke-virtual {v5}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/NumberFormat;

    goto :goto_4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/MessageFormat;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_1
    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/MessageFormat;

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    iget-object v3, v0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v3, v0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    iget-object v3, v0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    iget-object v2, v0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public final format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format(Ljava/util/Map;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            ")",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public final format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    new-instance v0, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v0, p2}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuffer;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/util/Map;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    return-object p2
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 9

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "formatToCharacterIterator must be passed non-null object"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Landroid/icu/text/MessageFormat$AppendableWrapper;

    invoke-direct {v4, v3}, Landroid/icu/text/MessageFormat$AppendableWrapper;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v4}, Landroid/icu/text/MessageFormat$AppendableWrapper;->useAttributes()V

    invoke-direct {p0, p1, v4, v5}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;Landroid/icu/text/MessageFormat$AppendableWrapper;Ljava/text/FieldPosition;)V

    new-instance v2, Ljava/text/AttributedString;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/icu/text/MessageFormat$AppendableWrapper;->-get0(Landroid/icu/text/MessageFormat$AppendableWrapper;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/MessageFormat$AttributeAndPosition;

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get0(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/text/AttributedCharacterIterator$Attribute;

    move-result-object v5

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get3(Landroid/icu/text/MessageFormat$AttributeAndPosition;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get2(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v7

    invoke-static {v0}, Landroid/icu/text/MessageFormat$AttributeAndPosition;->-get1(Landroid/icu/text/MessageFormat$AttributeAndPosition;)I

    move-result v8

    invoke-virtual {v2, v5, v6, v7, v8}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    return-object v5
.end method

.method public getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :cond_0
    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getApostropheMode()Landroid/icu/text/MessagePattern$ApostropheMode;

    move-result-object v0

    return-object v0
.end method

.method public getArgumentNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getFormatByArgumentName(Ljava/lang/String;)Ljava/text/Format;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ge v0, v2, :cond_1

    return-object v3

    :cond_1
    const/4 v1, 0x0

    :cond_2
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_3

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    return-object v2

    :cond_3
    return-object v3
.end method

.method public getFormats()[Ljava/text/Format;
    .locals 5

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/text/Format;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/text/Format;

    return-object v2
.end method

.method public getFormatsByArgumentIndex()[Ljava/text/Format;
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v2

    if-ltz v2, :cond_3

    iget-object v3, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3, v5}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    if-nez v3, :cond_2

    move-object v3, v4

    :goto_2
    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/icu/text/MessageFormat;->cachedFormatters:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/Format;

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/text/Format;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/text/Format;

    return-object v3
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "MessageFormat parse error!"

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    return-object v1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;
    .locals 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "This method is not available in MessageFormat objects that use named argument."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v8, -0x1

    const/4 v9, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v9}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v9

    if-ltz v9, :cond_2

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v0, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v6

    if-le v6, v8, :cond_1

    move v8, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v7, :cond_3

    return-object v5

    :cond_3
    return-object v4
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MessageFormat;->parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public parseToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v1}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "MessageFormat parse error!"

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    return-object v5
.end method

.method public parseToMap(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/text/ParsePosition;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MessageFormat;->parse(ILjava/lang/String;Ljava/text/ParsePosition;[Ljava/lang/Object;Ljava/util/Map;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    if-ne v0, v6, :cond_0

    return-object v4

    :cond_0
    return-object v5
.end method

.method public setFormat(ILjava/text/Format;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    if-ne v0, p1, :cond_0

    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2
.end method

.method public setFormatByArgumentIndex(ILjava/text/Format;)V
    .locals 3

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-direct {p0, v0, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFormatByArgumentName(Ljava/lang/String;Ljava/text/Format;)V
    .locals 3

    invoke-static {p1}, Landroid/icu/text/MessagePattern;->validateArgumentName(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ge v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, p1, v0}, Landroid/icu/text/MessageFormat;->argNameMatches(ILjava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFormats([Ljava/text/Format;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_0

    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFormatsByArgumentIndex([Ljava/text/Format;)V
    .locals 4

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "This method is not available in MessageFormat objects that use alphanumeric argument names."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getValue()I

    move-result v0

    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setFormatsByArgumentName(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/text/Format;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Landroid/icu/text/MessageFormat;->nextTopLevelArgStart(I)I

    move-result v1

    if-ltz v1, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Landroid/icu/text/MessageFormat;->getArgName(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/text/Format;

    invoke-direct {p0, v1, v2}, Landroid/icu/text/MessageFormat;->setCustomArgStartFormat(ILjava/text/Format;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessageFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    iput-object p1, p0, Landroid/icu/text/MessageFormat;->ulocale:Landroid/icu/util/ULocale;

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->stockDateFormatter:Landroid/icu/text/DateFormat;

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->stockNumberFormatter:Landroid/icu/text/NumberFormat;

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->pluralProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    iput-object v1, p0, Landroid/icu/text/MessageFormat;->ordinalProvider:Landroid/icu/text/MessageFormat$PluralSelectorProvider;

    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/text/MessageFormat;->setLocale(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Landroid/icu/text/MessageFormat;->customFormatArgStarts:Ljava/util/Set;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "toPattern() is not supported after custom Format objects have been set via setFormat() or similar APIs"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    :cond_2
    return-object v0
.end method

.method public usesNamedArguments()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/text/MessageFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->hasNamedArguments()Z

    move-result v0

    return v0
.end method
