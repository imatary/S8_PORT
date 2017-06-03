.class public Landroid/icu/text/NumberingSystem;
.super Ljava/lang/Object;
.source "NumberingSystem.java"


# static fields
.field private static cachedLocaleData:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            ">;"
        }
    .end annotation
.end field

.field private static cachedStringData:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/NumberingSystem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private algorithmic:Z

.field private desc:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private radix:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    const-string/jumbo v0, "0123456789"

    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    const-string/jumbo v0, "latn"

    iput-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-void
.end method

.method public static getAvailableNames()[Ljava/lang/String;
    .locals 8

    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    const-string/jumbo v7, "numberingSystems"

    invoke-static {v6, v7}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    const-string/jumbo v6, "numberingSystems"

    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method public static getInstance()Landroid/icu/text/NumberingSystem;
    .locals 1

    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;
    .locals 15

    const/4 v14, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x3

    new-array v0, v10, [Ljava/lang/String;

    const-string/jumbo v10, "native"

    aput-object v10, v0, v11

    const-string/jumbo v10, "traditional"

    aput-object v10, v0, v14

    const-string/jumbo v10, "finance"

    const/4 v12, 0x2

    aput-object v10, v0, v12

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v10, "numbers"

    invoke-virtual {p0, v10}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v12, v0

    move v10, v11

    :goto_0
    if-ge v10, v12, :cond_0

    aget-object v3, v0, v10

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v6}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v4

    if-eqz v4, :cond_3

    return-object v4

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "default"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string/jumbo v6, "default"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :cond_4
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    sget-object v10, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@numbers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/NumberingSystem;

    if-eqz v4, :cond_5

    return-object v4

    :cond_5
    move-object v7, v6

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_9

    :try_start_0
    const-string/jumbo v10, "android/icu/impl/data/icudt56b"

    invoke-static {v10, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/ICUResourceBundle;

    const-string/jumbo v10, "NumberElements"

    invoke-virtual {v8, v10}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_2

    :catch_0
    move-exception v2

    const-string/jumbo v10, "native"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string/jumbo v10, "finance"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    const-string/jumbo v6, "default"

    goto :goto_2

    :cond_7
    const-string/jumbo v10, "traditional"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string/jumbo v6, "native"

    goto :goto_2

    :cond_8
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_2

    :cond_9
    if-eqz v9, :cond_a

    invoke-static {v9}, Landroid/icu/text/NumberingSystem;->getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v4

    :cond_a
    if-nez v4, :cond_b

    new-instance v4, Landroid/icu/text/NumberingSystem;

    invoke-direct {v4}, Landroid/icu/text/NumberingSystem;-><init>()V

    :cond_b
    sget-object v10, Landroid/icu/text/NumberingSystem;->cachedLocaleData:Landroid/icu/impl/ICUCache;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "@numbers="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private static getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 3

    const/4 v1, 0x2

    if-ge p1, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid radix for numbering system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, p1, :cond_2

    invoke-static {p3}, Landroid/icu/text/NumberingSystem;->isValidDigitString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Landroid/icu/text/NumberingSystem;

    invoke-direct {v0}, Landroid/icu/text/NumberingSystem;-><init>()V

    iput p1, v0, Landroid/icu/text/NumberingSystem;->radix:I

    iput-boolean p2, v0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    iput-object p3, v0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    iput-object p0, v0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid digit string for numbering system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberingSystem;
    .locals 1

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceByName(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;
    .locals 14

    const/4 v13, 0x0

    sget-object v11, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/ICUCache;

    invoke-interface {v11, p0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/NumberingSystem;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v11, "android/icu/impl/data/icudt56b"

    const-string/jumbo v12, "numberingSystems"

    invoke-static {v11, v12}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    const-string/jumbo v11, "numberingSystems"

    invoke-virtual {v9, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    const-string/jumbo v11, "desc"

    invoke-virtual {v8, v11}, Landroid/icu/util/UResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "radix"

    invoke-virtual {v8, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    const-string/jumbo v11, "algorithmic"

    invoke-virtual {v8, v11}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getInt()I

    move-result v10

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getInt()I
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-static {p0, v10, v3, v1}, Landroid/icu/text/NumberingSystem;->getInstance(Ljava/lang/String;IZLjava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object v4

    sget-object v11, Landroid/icu/text/NumberingSystem;->cachedStringData:Landroid/icu/impl/ICUCache;

    invoke-interface {v11, p0, v4}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    return-object v13
.end method

.method public static isValidDigitString(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    :goto_0
    invoke-virtual {v2}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isSupplementary(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    if-eq v1, v3, :cond_2

    return v4

    :cond_2
    const/4 v3, 0x1

    return v3
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/NumberingSystem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/NumberingSystem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRadix()I
    .locals 1

    iget v0, p0, Landroid/icu/text/NumberingSystem;->radix:I

    return v0
.end method

.method public isAlgorithmic()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/NumberingSystem;->algorithmic:Z

    return v0
.end method
