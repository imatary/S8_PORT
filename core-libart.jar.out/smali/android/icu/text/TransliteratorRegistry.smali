.class Landroid/icu/text/TransliteratorRegistry;
.super Ljava/lang/Object;
.source "TransliteratorRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorRegistry$AliasEntry;,
        Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;,
        Landroid/icu/text/TransliteratorRegistry$IDEnumeration;,
        Landroid/icu/text/TransliteratorRegistry$LocaleEntry;,
        Landroid/icu/text/TransliteratorRegistry$ResourceEntry;,
        Landroid/icu/text/TransliteratorRegistry$Spec;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final DEBUG:Z = false

.field private static final LOCALE_SEP:C = '_'

.field private static final NO_VARIANT:Ljava/lang/String; = ""


# instance fields
.field private availableIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;"
        }
    .end annotation
.end field

.field private registry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private specDAG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/CaseInsensitiveString;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    return-void
.end method

.method private find(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4

    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Landroid/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {v1, p1}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/icu/text/TransliteratorRegistry$Spec;

    invoke-direct {v2, p2}, Landroid/icu/text/TransliteratorRegistry$Spec;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v2, p3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, v1, v2, p3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_1
    invoke-virtual {v2}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    :cond_2
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->reset()V

    :goto_0
    const-string/jumbo v3, ""

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    const-string/jumbo v3, ""

    invoke-direct {p0, v1, v2, v3}, Landroid/icu/text/TransliteratorRegistry;->findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Landroid/icu/text/TransliteratorRegistry$Spec;->hasFallback()Z

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/TransliteratorRegistry$Spec;->next()Ljava/lang/String;

    goto :goto_0
.end method

.method private findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getBundle()Ljava/util/ResourceBundle;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v10

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v7, 0x2

    if-ge v3, v7, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v3, :cond_3

    if-nez p4, :cond_2

    const-string/jumbo v7, "TransliterateTo"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ResourceBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x0

    :goto_3
    array-length v7, v5

    if-ge v2, v7, :cond_1

    aget-object v7, v5, v2

    invoke-virtual {v7, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    array-length v7, v5

    if-ge v2, v7, :cond_6

    if-nez v3, :cond_5

    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    new-instance v8, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v5, v9

    invoke-direct {v8, v9, v0}, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    aput-object v8, v7, v9
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :cond_2
    const-string/jumbo v7, "TransliterateFrom"

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "Transliterate"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_5
    move v0, p4

    goto :goto_4

    :catch_0
    move-exception v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-object v10
.end method

.method private findInDynamicStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->get()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v2, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    return-object v1
.end method

.method private findInStaticStore(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v5}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->getTop()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    :cond_1
    return-object v4

    :cond_2
    invoke-virtual {p2}, Landroid/icu/text/TransliteratorRegistry$Spec;->isLocale()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, p3, v0}, Landroid/icu/text/TransliteratorRegistry;->findInBundle(Landroid/icu/text/TransliteratorRegistry$Spec;Landroid/icu/text/TransliteratorRegistry$Spec;Ljava/lang/String;I)[Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .locals 16

    :goto_0
    const/4 v12, 0x0

    aget-object v5, p2, v12

    instance-of v12, v5, Landroid/icu/text/RuleBasedTransliterator$Data;

    if-eqz v12, :cond_0

    move-object v1, v5

    nop

    nop

    new-instance v12, Landroid/icu/text/RuleBasedTransliterator;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v1, v13}, Landroid/icu/text/RuleBasedTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedTransliterator$Data;Landroid/icu/text/UnicodeFilter;)V

    return-object v12

    :cond_0
    instance-of v12, v5, Ljava/lang/Class;

    if-eqz v12, :cond_1

    :try_start_0
    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    return-object v12

    :catch_0
    move-exception v3

    :goto_1
    const/4 v12, 0x0

    return-object v12

    :cond_1
    instance-of v12, v5, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    if-eqz v12, :cond_2

    nop

    nop

    iget-object v12, v5, Landroid/icu/text/TransliteratorRegistry$AliasEntry;->alias:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    return-object v12

    :cond_2
    instance-of v12, v5, Landroid/icu/text/Transliterator$Factory;

    if-eqz v12, :cond_3

    check-cast v5, Landroid/icu/text/Transliterator$Factory;

    move-object/from16 v0, p1

    invoke-interface {v5, v0}, Landroid/icu/text/Transliterator$Factory;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v12

    return-object v12

    :cond_3
    instance-of v12, v5, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    if-eqz v12, :cond_4

    nop

    nop

    invoke-virtual {v5}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v12

    return-object v12

    :cond_4
    instance-of v12, v5, Landroid/icu/text/AnyTransliterator;

    if-eqz v12, :cond_5

    move-object v9, v5

    nop

    nop

    invoke-virtual {v9}, Landroid/icu/text/AnyTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object v12

    return-object v12

    :cond_5
    instance-of v12, v5, Landroid/icu/text/RuleBasedTransliterator;

    if-eqz v12, :cond_6

    move-object v11, v5

    nop

    nop

    invoke-virtual {v11}, Landroid/icu/text/RuleBasedTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object v12

    return-object v12

    :cond_6
    instance-of v12, v5, Landroid/icu/text/CompoundTransliterator;

    if-eqz v12, :cond_7

    move-object v10, v5

    nop

    nop

    invoke-virtual {v10}, Landroid/icu/text/CompoundTransliterator;->safeClone()Landroid/icu/text/Transliterator;

    move-result-object v12

    return-object v12

    :cond_7
    instance-of v12, v5, Landroid/icu/text/Transliterator;

    if-eqz v12, :cond_8

    nop

    nop

    return-object v5

    :cond_8
    new-instance v7, Landroid/icu/text/TransliteratorParser;

    invoke-direct {v7}, Landroid/icu/text/TransliteratorParser;-><init>()V

    :try_start_1
    move-object v0, v5

    check-cast v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    move-object v8, v0

    iget-object v12, v8, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->resource:Ljava/lang/String;

    iget v13, v8, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;->direction:I

    invoke-virtual {v7, v12, v13}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_9

    new-instance v12, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    sget-object v13, Landroid/icu/text/NullTransliterator;->_ID:Ljava/lang/String;

    invoke-direct {v12, v13}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    aput-object v12, p2, v13

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v6, v5

    check-cast v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;

    iget-object v12, v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->rule:Ljava/lang/String;

    iget v13, v6, Landroid/icu/text/TransliteratorRegistry$LocaleEntry;->direction:I

    invoke-virtual {v7, v12, v13}, Landroid/icu/text/TransliteratorParser;->parse(Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, p2, v13

    goto/16 :goto_0

    :cond_a
    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_c

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    if-eqz v12, :cond_b

    new-instance v13, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v7, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v14, ";"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v13, v12}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v13, p2, v12

    goto/16 :goto_0

    :cond_b
    new-instance v13, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    iget-object v12, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-direct {v13, v12}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    aput-object v13, p2, v12

    goto/16 :goto_0

    :cond_c
    new-instance v12, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;

    iget-object v13, v7, Landroid/icu/text/TransliteratorParser;->idBlockVector:Ljava/util/List;

    iget-object v14, v7, Landroid/icu/text/TransliteratorParser;->dataVector:Ljava/util/List;

    iget-object v15, v7, Landroid/icu/text/TransliteratorParser;->compoundFilter:Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13, v14, v15}, Landroid/icu/text/TransliteratorRegistry$CompoundRBTEntry;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/icu/text/UnicodeSet;)V

    const/4 v13, 0x0

    aput-object v12, p2, v13

    goto/16 :goto_0

    :catch_2
    move-exception v4

    goto/16 :goto_1
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v7, v4

    aget-object v2, v7, v5

    aget-object v3, v7, v6

    invoke-static {v0, v2, v3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, v7, v4

    aget-object v3, v7, v5

    aget-object v4, v7, v6

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    move-object v2, p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v2, "Any"

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method private registerEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    instance-of v2, p5, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v0, p5

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p6, :cond_2

    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private registerSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-interface {v4, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v2, p3}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/TransliteratorRegistry;->find(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/TransliteratorRegistry;->instantiateEntry(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/StringBuffer;)Landroid/icu/text/Transliterator;

    move-result-object v1

    goto :goto_0
.end method

.method public getAvailableIDs()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableSources()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    iget-object v1, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 4
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

    const/4 v3, 0x0

    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v2, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {v2, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v2

    :cond_0
    new-instance v2, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v2
.end method

.method public getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
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

    const/4 v5, 0x0

    new-instance v0, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v0, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p2}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/icu/text/TransliteratorRegistry;->specDAG:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_0

    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v4

    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_1

    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v4

    :cond_1
    new-instance v4, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;

    invoke-static {v3}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/icu/text/TransliteratorRegistry$IDEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v4
.end method

.method public put(Ljava/lang/String;Landroid/icu/text/Transliterator$Factory;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/icu/text/Transliterator;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/text/Transliterator;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    new-instance v0, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;

    invoke-direct {v0, p2, p3, p4}, Landroid/icu/text/TransliteratorRegistry$ResourceEntry;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p5}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    new-instance v0, Landroid/icu/text/TransliteratorRegistry$AliasEntry;

    invoke-direct {v0, p2}, Landroid/icu/text/TransliteratorRegistry$AliasEntry;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/TransliteratorRegistry;->registerEntry(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/icu/text/TransliteratorIDParser;->IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v2, v1, v5

    aget-object v3, v1, v6

    aget-object v4, v1, v7

    invoke-static {v2, v3, v4}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->registry:Ljava/util/Map;

    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v3, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, v1, v5

    aget-object v3, v1, v6

    aget-object v4, v1, v7

    invoke-direct {p0, v2, v3, v4}, Landroid/icu/text/TransliteratorRegistry;->removeSTV(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/icu/text/TransliteratorRegistry;->availableIDs:Ljava/util/List;

    new-instance v3, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v3, v0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
