.class public abstract Landroid/icu/text/Transliterator;
.super Ljava/lang/Object;
.source "Transliterator.java"

# interfaces
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Transliterator$Factory;,
        Landroid/icu/text/Transliterator$Position;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final FORWARD:I = 0x0

.field static final ID_DELIM:C = ';'

.field static final ID_SEP:C = '-'

.field private static final RB_DISPLAY_NAME_PATTERN:Ljava/lang/String; = "TransliteratorNamePattern"

.field private static final RB_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%%"

.field private static final RB_RULE_BASED_IDS:Ljava/lang/String; = "RuleBasedTransliteratorIDs"

.field private static final RB_SCRIPT_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "%Translit%"

.field public static final REVERSE:I = 0x1

.field private static final ROOT:Ljava/lang/String; = "root"

.field static final VARIANT_SEP:C = '/'

.field private static displayNameCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static registry:Landroid/icu/text/TransliteratorRegistry;


# instance fields
.field private ID:Ljava/lang/String;

.field private filter:Landroid/icu/text/UnicodeSet;

.field private maximumContextLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v15, 0x1

    const/4 v14, 0x0

    new-instance v0, Landroid/icu/text/TransliteratorRegistry;

    invoke-direct {v0}, Landroid/icu/text/TransliteratorRegistry;-><init>()V

    sput-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    const-string/jumbo v0, "android/icu/impl/data/icudt56b/translit"

    const-string/jumbo v3, "root"

    invoke-static {v0, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    const-string/jumbo v0, "RuleBasedTransliteratorIDs"

    invoke-virtual {v6, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_4

    invoke-virtual {v12, v11}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v14}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v0, "file"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "internal"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "resource"

    invoke-virtual {v10, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "direction"

    invoke-virtual {v10, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t parse direction: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v4, 0x0

    :goto_1
    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const-string/jumbo v3, "UTF-16"

    const-string/jumbo v5, "internal"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v14

    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :sswitch_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v5, v15

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "alias"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, v1, v2, v15}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknow type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    sget-object v0, Landroid/icu/text/NullTransliterator;->SHORT_ID:Ljava/lang/String;

    sget-object v3, Landroid/icu/text/NullTransliterator;->SHORT_ID:Ljava/lang/String;

    invoke-static {v0, v3, v14}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    const-class v3, Landroid/icu/text/NullTransliterator;

    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Landroid/icu/text/Transliterator;->registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {}, Landroid/icu/text/RemoveTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/EscapeTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/UnescapeTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/LowercaseTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/UppercaseTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/TitlecaseTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/CaseFoldTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/UnicodeNameTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/NameUnicodeTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/NormalizationTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/BreakTransliterator;->register()V

    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    return-void
.end method

.method public static final createFromRules(Ljava/lang/String;Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .locals 13

    const/4 v7, 0x0

    new-instance v4, Landroid/icu/text/TransliteratorParser;

    invoke-direct {v4}, Landroid/icu/text/TransliteratorParser;-><init>()V

    invoke-virtual {v4, p1, p2}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    new-instance v7, Landroid/icu/text/NullTransliterator;

    invoke-direct {v7}, Landroid/icu/text/NullTransliterator;-><init>()V

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    new-instance v7, Landroid/icu/text/RuleBasedTransliterator;

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/icu/text/RuleBasedTransliterator$Data;

    iget-object v11, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-direct {v7, p0, v10, v11}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    goto :goto_0

    :cond_2
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_4

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_0

    invoke-virtual {v7, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v7

    goto :goto_1

    :cond_4
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    iget-object v11, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    move v6, v5

    :goto_2
    if-ge v1, v3, :cond_6

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v8

    instance-of v10, v8, Landroid/icu/text/NullTransliterator;

    if-nez v10, :cond_5

    invoke-static {v2}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_7

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedTransliterator$Data;

    new-instance v10, Landroid/icu/text/RuleBasedTransliterator;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "%Pass"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v0, v12}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    goto :goto_2

    :cond_6
    new-instance v7, Landroid/icu/text/CompoundTransliterator;

    add-int/lit8 v10, v6, -0x1

    invoke-direct {v7, v9, v10}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;I)V

    invoke-virtual {v7, p0}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v10, :cond_0

    iget-object v10, v4, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v7, v10}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    goto/16 :goto_0

    :cond_7
    move v5, v6

    goto :goto_3
.end method

.method private filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    if-eqz p4, :cond_3

    :cond_0
    move-object/from16 v0, p2

    iget v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    const/4 v10, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    :goto_0
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v21

    if-eqz v21, :cond_4

    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v21, v0

    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->limit:I

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p3}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    return-void

    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v21, v0

    invoke-static {v4}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v22

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->start:I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_2
    move-object/from16 v0, p2

    iput v7, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void

    :cond_7
    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v0, v7, :cond_8

    const/4 v8, 0x0

    :goto_3
    if-eqz p4, :cond_b

    if-eqz v8, :cond_b

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v18, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v17, v0

    sub-int v16, v17, v18

    invoke-interface/range {p1 .. p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v13

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-interface {v0, v1, v2, v13}, Landroid/icu/text/Replaceable;->copy(III)V

    move/from16 v12, v18

    move v14, v13

    move-object/from16 v0, p2

    iget v11, v0, Landroid/icu/text/Transliterator$Position;->start:I

    const/16 v20, 0x0

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int/2addr v11, v5

    move/from16 v0, v17

    if-le v11, v0, :cond_9

    add-int v13, v13, v19

    add-int v7, v7, v19

    add-int v21, v13, v16

    const-string/jumbo v22, ""

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v13, v1, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    move-object/from16 v0, p2

    iput v12, v0, Landroid/icu/text/Transliterator$Position;->start:I

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    if-eqz v8, :cond_1

    goto :goto_2

    :cond_8
    move/from16 v8, p3

    goto :goto_3

    :cond_9
    add-int v20, v20, v5

    move-object/from16 v0, p2

    iput v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v21, v0

    sub-int v6, v21, v11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    add-int v21, v14, v6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v22, v0

    sub-int v22, v22, v12

    sub-int v15, v21, v22

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v21, v0

    const-string/jumbo v22, ""

    move-object/from16 v0, p1

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v12, v1, v2}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    add-int v21, v15, v20

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v15, v1, v12}, Landroid/icu/text/Replaceable;->copy(III)V

    move-object/from16 v0, p2

    iput v12, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move-object/from16 v0, p2

    iput v11, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    move/from16 v21, v0

    sub-int v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p2

    iget v11, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move v12, v11

    add-int v21, v6, v20

    add-int v14, v14, v21

    const/16 v20, 0x0

    add-int v17, v17, v6

    add-int v19, v19, v6

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p2

    iget v9, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Landroid/icu/text/Transliterator;->handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v21, v0

    sub-int v6, v21, v9

    if-nez v8, :cond_c

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->start:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    new-instance v21, Ljava/lang/RuntimeException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "ERROR: Incomplete non-incremental transliteration by "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    :cond_c
    add-int/2addr v7, v6

    goto/16 :goto_5
.end method

.method public static final getAvailableIDs()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableIDs()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableSources()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method static getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v2, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v2, p0, v0}, Landroid/icu/text/TransliteratorRegistry;->get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public static final getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 14

    const/16 v13, 0x2f

    const/4 v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    const-string/jumbo v9, "android/icu/impl/data/icudt56b/translit"

    invoke-static {v9, p1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    invoke-static {p0}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v9, ""

    return-object v9

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v12

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v9, v8, v11

    if-eqz v9, :cond_1

    aget-object v9, v8, v11

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v8, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v9, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v10, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v10, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    return-object v7

    :cond_2
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%Translit%%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    :catch_0
    move-exception v3

    :try_start_1
    new-instance v5, Ljava/text/MessageFormat;

    const-string/jumbo v9, "TransliteratorNamePattern"

    invoke-virtual {v2, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v1, v10

    const/4 v9, 0x0

    aget-object v9, v8, v9

    const/4 v10, 0x1

    aput-object v9, v1, v10

    const/4 v9, 0x1

    aget-object v9, v8, v9

    const/4 v10, 0x2

    aput-object v9, v1, v10
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x1

    :goto_0
    if-gt v6, v11, :cond_3

    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "%Translit%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v9, v1, v6

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v1, v6
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x2

    :try_start_3
    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    return-object v9

    :cond_4
    invoke-virtual {v5, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v9

    goto :goto_2

    :catch_1
    move-exception v4

    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    throw v9

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method public static getDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-array v1, v7, [Landroid/icu/text/UnicodeSet;

    invoke-static {p0, p1, v0, v2, v1}, Landroid/icu/text/TransliteratorIDParser;->parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid ID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    invoke-static {v2}, Landroid/icu/text/TransliteratorIDParser;->instantiateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v7, :cond_1

    const-string/jumbo v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    :cond_1
    new-instance v3, Landroid/icu/text/CompoundTransliterator;

    invoke-direct {v3, v4}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/icu/text/Transliterator;->setID(Ljava/lang/String;)V

    aget-object v5, v1, v6

    if-eqz v5, :cond_2

    aget-object v5, v1, v6

    invoke-virtual {v3, v5}, Landroid/icu/text/Transliterator;->setFilter(Landroid/icu/text/UnicodeFilter;)V

    :cond_2
    return-object v3

    :cond_3
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/Transliterator;

    goto :goto_0
.end method

.method public static registerAlias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static registerAny()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/icu/text/AnyTransliterator;->register()V

    return-void
.end method

.method public static registerClass(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/text/Transliterator;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Ljava/lang/Class;Z)V

    if-eqz p2, :cond_0

    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static registerFactory(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;)V
    .locals 2

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V

    return-void
.end method

.method public static registerInstance(Landroid/icu/text/Transliterator;)V
    .locals 3

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    return-void
.end method

.method static registerInstance(Landroid/icu/text/Transliterator;Z)V
    .locals 2

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Landroid/icu/text/TransliteratorRegistry;->put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V

    return-void
.end method

.method static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/icu/text/TransliteratorIDParser;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Landroid/icu/text/Transliterator;->displayNameCache:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/icu/text/Transliterator;->registry:Landroid/icu/text/TransliteratorRegistry;

    invoke-virtual {v0, p0}, Landroid/icu/text/TransliteratorRegistry;->remove(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    new-instance v5, Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->handleGetSourceSet()Landroid/icu/text/UnicodeSet;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v5, v0}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p3, v3}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final baseToRules(Z)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x3b

    if-eqz p1, :cond_2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v3, v0}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3, v0}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "::"

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method

.method public final finishTransliteration(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .locals 2

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method

.method public getElements()[Landroid/icu/text/Transliterator;
    .locals 4

    instance-of v3, p0, Landroid/icu/text/CompoundTransliterator;

    if-eqz v3, :cond_0

    move-object v0, p0

    nop

    nop

    invoke-virtual {v0}, Landroid/icu/text/CompoundTransliterator;->getCount()I

    move-result v3

    new-array v2, v3, [Landroid/icu/text/Transliterator;

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/icu/text/CompoundTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    new-array v2, v3, [Landroid/icu/text/Transliterator;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    :cond_1
    return-object v2
.end method

.method public final getFilter()Landroid/icu/text/UnicodeFilter;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    return-object v0
.end method

.method public getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v3, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    if-nez v3, :cond_0

    return-object p1

    :cond_0
    new-instance v1, Landroid/icu/text/UnicodeSet;

    invoke-direct {v1, p1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->retainAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    iget-object v3, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {v3, v2}, Landroid/icu/text/UnicodeSet;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    goto :goto_0
.end method

.method public final getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-object v0
.end method

.method public final getInverse()Landroid/icu/text/Transliterator;
    .locals 2

    iget-object v0, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method public final getMaximumContextLength()I
    .locals 1

    iget v0, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    return v0
.end method

.method public final getSourceSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method public getTargetSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    sget-object v1, Landroid/icu/text/UnicodeSet;->ALL_CODE_POINTS:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Landroid/icu/text/Transliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V

    return-object v0
.end method

.method protected handleGetSourceSet()Landroid/icu/text/UnicodeSet;
    .locals 1

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    return-object v0
.end method

.method protected abstract handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
.end method

.method public setFilter(Landroid/icu/text/UnicodeFilter;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v3, Landroid/icu/text/UnicodeSet;

    move-object v0, p1

    check-cast v0, Landroid/icu/text/UnicodeSet;

    move-object v2, v0

    invoke-direct {v3, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    iput-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/text/UnicodeSet;

    invoke-direct {v2}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeFilter;->addMatchSetTo(Landroid/icu/text/UnicodeSet;)V

    iget-object v2, p0, Landroid/icu/text/Transliterator;->filter:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method protected final setID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/text/Transliterator;->ID:Ljava/lang/String;

    return-void
.end method

.method protected setMaximumContextLength(I)V
    .locals 3

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid context length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/text/Transliterator;->maximumContextLength:I

    return-void
.end method

.method public toRules(Z)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->baseToRules(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;II)I
    .locals 3

    const/4 v2, 0x0

    if-ltz p2, :cond_0

    if-ge p3, p2, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v1

    if-lt v1, p3, :cond_0

    new-instance v0, Landroid/icu/text/Transliterator$Position;

    invoke-direct {v0, p2, p3, p2}, Landroid/icu/text/Transliterator$Position;-><init>(III)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    iget v1, v0, Landroid/icu/text/Transliterator$Position;->limit:I

    return v1
.end method

.method public final transliterate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Landroid/icu/text/ReplaceableString;

    invoke-direct {v0, p1}, Landroid/icu/text/ReplaceableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;)V

    invoke-virtual {v0}, Landroid/icu/text/ReplaceableString;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;)V
    .locals 2

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;II)I

    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;I)V
    .locals 1

    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/Transliterator;->transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V

    return-void
.end method

.method public final transliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/icu/text/Replaceable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/Transliterator$Position;->validate(I)V

    if-eqz p3, :cond_0

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-interface {p1, v0, v1, p3}, Landroid/icu/text/Replaceable;->replace(IILjava/lang/String;)V

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    :cond_0
    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-lez v0, :cond_1

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, v2, v2}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;ZZ)V

    return-void
.end method
