.class public abstract Landroid/icu/text/Collator;
.super Ljava/lang/Object;
.source "Collator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Collator$ASCII;,
        Landroid/icu/text/Collator$CollatorFactory;,
        Landroid/icu/text/Collator$ReorderCodes;,
        Landroid/icu/text/Collator$ServiceShim;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/Collator;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final BASE:Ljava/lang/String; = "android/icu/impl/data/icudt56b/coll"

.field public static final CANONICAL_DECOMPOSITION:I = 0x11

.field private static final DEBUG:Z

.field public static final FULL_DECOMPOSITION:I = 0xf

.field public static final IDENTICAL:I = 0xf

.field private static final KEYWORDS:[Ljava/lang/String;

.field public static final NO_DECOMPOSITION:I = 0x10

.field public static final PRIMARY:I = 0x0

.field public static final QUATERNARY:I = 0x3

.field private static final RESOURCE:Ljava/lang/String; = "collations"

.field public static final SECONDARY:I = 0x1

.field public static final TERTIARY:I = 0x2

.field private static shim:Landroid/icu/text/Collator$ServiceShim;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "collation"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const-string/jumbo v0, "collator"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/text/Collator;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    invoke-virtual {p0}, Landroid/icu/text/Collator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Attempt to modify frozen Collator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    invoke-virtual {v0}, Landroid/icu/text/Collator$ServiceShim;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    sget-object v2, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayName(Ljava/util/Locale;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator$ServiceShim;->getDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEquivalentReorderCodes(I)[I
    .locals 2

    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getData()Landroid/icu/impl/coll/CollationData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/impl/coll/CollationData;->getEquivalentScripts(I)[I

    move-result-object v1

    return-object v1
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 7

    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string/jumbo v2, "collations"

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundle;->getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Landroid/icu/text/Collator;
    .locals 1

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p0

    :cond_0
    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/icu/text/Collator$ServiceShim;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    instance-of v2, v0, Landroid/icu/text/RuleBasedCollator;

    if-eqz v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    :cond_1
    invoke-static {p0, v0, v1}, Landroid/icu/text/Collator;->setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V

    :cond_2
    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method private static final varargs getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-static {p1, v1}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "illegal locale keyword=value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final getKeywordValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid keyword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "android/icu/impl/data/icudt56b/coll"

    const-string/jumbo v1, "collations"

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 13

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    const-string/jumbo v12, "android/icu/impl/data/icudt56b/coll"

    invoke-static {v12, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    const/4 v6, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const-string/jumbo v12, "collations"

    invoke-virtual {v1, v12}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string/jumbo v12, "default"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v6, :cond_0

    const-string/jumbo v12, "default"

    invoke-virtual {v4, v12}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string/jumbo v12, "private-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v11, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v10, v12

    const/4 v7, 0x1

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    add-int/lit8 v8, v7, 0x1

    aput-object v3, v10, v7

    move v7, v8

    goto :goto_2

    :cond_5
    return-object v10
.end method

.method public static final getKeywords()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/text/Collator;->KEYWORDS:[Ljava/lang/String;

    return-object v0
.end method

.method private static final getReorderCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "space"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "punct"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "symbol"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "currency"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "digit"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p0, p1, v0}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/lit16 v0, v0, 0x1000

    return v0
.end method

.method private static getShim()Landroid/icu/text/Collator$ServiceShim;
    .locals 4

    sget-object v3, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v3, :cond_0

    :try_start_0
    const-string/jumbo v3, "android.icu.text.CollatorServiceShim"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/Collator$ServiceShim;

    sput-object v3, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v3, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    return-object v3

    :catch_0
    move-exception v1

    sget-boolean v3, Landroid/icu/text/Collator;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance v3, Landroid/icu/util/ICUException;

    invoke-direct {v3, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    throw v2
.end method

.method private static final getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "yes"

    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "no"

    invoke-static {p1, v0}, Landroid/icu/text/Collator$ASCII;->equalIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illegal locale keyword=value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->registerFactory(Landroid/icu/text/Collator$CollatorFactory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/icu/text/Collator;->getShim()Landroid/icu/text/Collator$ServiceShim;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/Collator$ServiceShim;->registerInstance(Landroid/icu/text/Collator;Landroid/icu/util/ULocale;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static setAttributesFromKeywords(Landroid/icu/util/ULocale;Landroid/icu/text/Collator;Landroid/icu/text/RuleBasedCollator;)V
    .locals 16

    const-string/jumbo v12, "colHiraganaQuaternary"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword kh/colHiraganaQuaternary"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_0
    const-string/jumbo v12, "variableTop"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword vt/variableTop"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_1
    const-string/jumbo v12, "colStrength"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string/jumbo v12, "colStrength"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "primary"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "secondary"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "tertiary"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    const-string/jumbo v14, "quaternary"

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-string/jumbo v14, "identical"

    const/4 v15, 0x4

    aput-object v14, v13, v15

    invoke-static {v12, v11, v13}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x3

    if-gt v10, v12, :cond_9

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/icu/text/Collator;->setStrength(I)V

    :cond_2
    const-string/jumbo v12, "colBackwards"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    if-eqz p2, :cond_a

    const-string/jumbo v12, "colBackwards"

    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setFrenchCollation(Z)V

    :cond_3
    const-string/jumbo v12, "colCaseLevel"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    if-eqz p2, :cond_b

    const-string/jumbo v12, "colCaseLevel"

    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setCaseLevel(Z)V

    :cond_4
    const-string/jumbo v12, "colCaseFirst"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    if-eqz p2, :cond_e

    const-string/jumbo v12, "colCaseFirst"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "no"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "lower"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string/jumbo v14, "upper"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v12, v11, v13}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_c

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    :cond_5
    :goto_1
    const-string/jumbo v12, "colAlternate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_6

    if-eqz p2, :cond_10

    const-string/jumbo v12, "colAlternate"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const-string/jumbo v14, "non-ignorable"

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const-string/jumbo v14, "shifted"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v12, v11, v13}, Landroid/icu/text/Collator;->getIntValue(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_f

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setAlternateHandlingShifted(Z)V

    :cond_6
    const-string/jumbo v12, "colNormalization"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_7

    const-string/jumbo v12, "colNormalization"

    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    const/16 v12, 0x11

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/icu/text/Collator;->setDecomposition(I)V

    :cond_7
    const-string/jumbo v12, "colNumeric"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    if-eqz p2, :cond_12

    const-string/jumbo v12, "colNumeric"

    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getYesOrNo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setNumericCollation(Z)V

    :cond_8
    const-string/jumbo v12, "colReorder"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_18

    const/16 v12, 0xac

    new-array v4, v12, [I

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_4
    array-length v12, v4

    if-ne v5, v12, :cond_13

    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "too many script codes for colReorder locale keyword: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_9
    const/16 v10, 0xf

    goto/16 :goto_0

    :cond_a
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_b
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword kb/colBackwards only settable for RuleBasedCollator"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c
    const/4 v12, 0x1

    if-ne v2, v12, :cond_d

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setLowerCaseFirst(Z)V

    goto/16 :goto_1

    :cond_d
    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/icu/text/RuleBasedCollator;->setUpperCaseFirst(Z)V

    goto/16 :goto_1

    :cond_e
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword kf/colCaseFirst only settable for RuleBasedCollator"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_10
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword ka/colAlternate only settable for RuleBasedCollator"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_11
    const/16 v12, 0x10

    goto/16 :goto_3

    :cond_12
    new-instance v12, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v13, "locale keyword kn/colNumeric only settable for RuleBasedCollator"

    invoke-direct {v12, v13}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_13
    move v7, v9

    :goto_5
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v7, v12, :cond_14

    invoke-virtual {v11, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_14
    invoke-virtual {v11, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_15

    const/16 v12, 0x100a

    invoke-static {v12, v8}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v3

    :goto_6
    add-int/lit8 v6, v5, 0x1

    aput v3, v4, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v7, v12, :cond_16

    if-nez v6, :cond_17

    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v13, "no script codes for colReorder locale keyword"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_15
    const-string/jumbo v12, "colReorder"

    invoke-static {v12, v8}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_6

    :cond_16
    add-int/lit8 v9, v7, 0x1

    move v5, v6

    goto/16 :goto_4

    :cond_17
    new-array v1, v6, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4, v12, v1, v13, v6}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/Collator;->setReorderCodes([I)V

    :cond_18
    const-string/jumbo v12, "kv"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_19

    const-string/jumbo v12, "kv"

    invoke-static {v12, v11}, Landroid/icu/text/Collator;->getReorderCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/icu/text/Collator;->setMaxVariable(I)Landroid/icu/text/Collator;

    :cond_19
    return-void
.end method

.method public static final unregister(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Landroid/icu/text/Collator;->shim:Landroid/icu/text/Collator$ServiceShim;

    invoke-virtual {v0, p0}, Landroid/icu/text/Collator$ServiceShim;->unregister(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/Collator;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Collator;->cloneAsThawed()Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/icu/text/Collator;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public freeze()Landroid/icu/text/Collator;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/text/Collator;->freeze()Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
.end method

.method public getDecomposition()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object v0
.end method

.method public getMaxVariable()I
    .locals 1

    const/16 v0, 0x1001

    return v0
.end method

.method public abstract getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
.end method

.method public getReorderCodes()[I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStrength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getTailoredSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x0

    const v2, 0x10ffff

    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    return-object v0
.end method

.method public abstract getUCAVersion()Landroid/icu/util/VersionInfo;
.end method

.method public abstract getVariableTop()I
.end method

.method public abstract getVersion()Landroid/icu/util/VersionInfo;
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setDecomposition(I)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 0

    return-void
.end method

.method public setMaxVariable(I)Landroid/icu/text/Collator;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs setReorderCodes([I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Needs to be implemented by the subclass."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrength(I)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/Collator;->checkNotFrozen()V

    return-void
.end method

.method public setStrength2(I)Landroid/icu/text/Collator;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/icu/text/Collator;->setStrength(I)V

    return-object p0
.end method

.method public abstract setVariableTop(Ljava/lang/String;)I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setVariableTop(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
