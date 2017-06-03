.class Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;
.super Landroid/icu/text/ScientificNumberFormatter$Style;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ScientificNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MarkupStyle"
.end annotation


# instance fields
.field private final beginMarkup:Ljava/lang/String;

.field private final endMarkup:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/icu/text/ScientificNumberFormatter$Style;-><init>(Landroid/icu/text/ScientificNumberFormatter$Style;)V

    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    :goto_0
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->current()C

    move-result v4

    const v5, 0xffff

    if-eq v4, v5, :cond_2

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getAttributes()Ljava/util/Map;

    move-result-object v0

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunStart(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v4

    invoke-static {p1, v1, v4, v3}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT_SYMBOL:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->beginMarkup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Landroid/icu/text/NumberFormat$Field;->EXPONENT:Landroid/icu/text/NumberFormat$Field;

    invoke-interface {p1, v4}, Ljava/text/AttributedCharacterIterator;->getRunLimit(Ljava/text/AttributedCharacterIterator$Attribute;)I

    move-result v2

    invoke-static {p1, v1, v2, v3}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    move v1, v2

    invoke-interface {p1, v2}, Ljava/text/AttributedCharacterIterator;->setIndex(I)C

    iget-object v4, p0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->endMarkup:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v4

    invoke-static {p1, v1, v4, v3}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;->append(Ljava/text/AttributedCharacterIterator;IILjava/lang/StringBuilder;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
