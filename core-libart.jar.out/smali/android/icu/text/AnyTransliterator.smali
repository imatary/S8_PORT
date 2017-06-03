.class Landroid/icu/text/AnyTransliterator;
.super Landroid/icu/text/Transliterator;
.source "AnyTransliterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/AnyTransliterator$ScriptRunIterator;
    }
.end annotation


# static fields
.field static final ANY:Ljava/lang/String; = "Any"

.field static final LATIN_PIVOT:Ljava/lang/String; = "-Latin;Latin-"

.field static final NULL_ID:Ljava/lang/String; = "Null"

.field static final TARGET_SEP:C = '-'

.field static final VARIANT_SEP:C = '/'


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private target:Ljava/lang/String;

.field private targetScript:I

.field private widthFix:Landroid/icu/text/Transliterator;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/UnicodeFilter;",
            "Ljava/lang/String;",
            "I",
            "Landroid/icu/text/Transliterator;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/Transliterator;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const-string/jumbo v0, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    iput-object p6, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/Transliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;)V

    const-string/jumbo v0, "[[:dt=Nar:][:dt=Wide:]] nfkd"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    iput p4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p2, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private getTransliterator(I)Landroid/icu/text/Transliterator;
    .locals 9

    const/4 v8, 0x0

    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    if-eq p1, v7, :cond_0

    const/4 v7, -0x1

    if-ne p1, v7, :cond_2

    :cond_0
    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result v7

    if-eqz v7, :cond_1

    return-object v8

    :cond_1
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    return-object v7

    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/Transliterator;

    if-nez v5, :cond_5

    invoke-static {p1}, Landroid/icu/lang/UScript;->getName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v1, v7}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-nez v5, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-Latin;Latin-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    :try_start_1
    invoke-static {v1, v7}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;I)Landroid/icu/text/Transliterator;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :cond_3
    :goto_1
    if-eqz v5, :cond_6

    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Landroid/icu/text/CompoundTransliterator;

    invoke-direct {v5, v6}, Landroid/icu/text/CompoundTransliterator;-><init>(Ljava/util/List;)V

    :cond_4
    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/Transliterator;

    if-eqz v3, :cond_5

    move-object v5, v3

    :cond_5
    return-object v5

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_6
    iget v7, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->isWide(I)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    return-object v7
.end method

.method private isWide(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x11

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    const/16 v1, 0x16

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static register()V
    .locals 13

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Landroid/icu/text/Transliterator;->getAvailableSources()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v11, "Any"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v4}, Landroid/icu/text/Transliterator;->getAvailableTargets(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Landroid/icu/text/AnyTransliterator;->scriptNameToCode(Ljava/lang/String;)I

    move-result v7

    const/4 v11, -0x1

    if-eq v7, v11, :cond_1

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v4, v6}, Landroid/icu/text/Transliterator;->getAvailableVariants(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v9

    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v3, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v11, "Any"

    invoke-static {v11, v6, v10}, Landroid/icu/text/TransliteratorIDParser;->STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Landroid/icu/text/AnyTransliterator;

    invoke-direct {v8, v0, v6, v10, v7}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v8}, Landroid/icu/text/Transliterator;->registerInstance(Landroid/icu/text/Transliterator;)V

    const-string/jumbo v11, "Null"

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Landroid/icu/text/Transliterator;->registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static scriptNameToCode(Ljava/lang/String;)I
    .locals 4

    const/4 v2, -0x1

    :try_start_0
    invoke-static {p0}, Landroid/icu/lang/UScript;->getCode(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    aget v2, v0, v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return v2

    :catch_0
    move-exception v1

    return v2
.end method


# virtual methods
.method public addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/icu/text/Transliterator;->getFilterAsUnicodeSet(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10ffff

    invoke-virtual {p3, v2, v1}, Landroid/icu/text/UnicodeSet;->addAll(II)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void
.end method

.method protected handleTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V
    .locals 9

    iget v1, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    new-instance v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v8, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-direct {v4, p1, v7, v8}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;-><init>(Landroid/icu/text/Replaceable;II)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->next()Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-le v7, v1, :cond_0

    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->scriptCode:I

    invoke-direct {p0, v7}, Landroid/icu/text/AnyTransliterator;->getTransliterator(I)Landroid/icu/text/Transliterator;

    move-result-object v6

    if-nez v6, :cond_1

    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->start:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-lt v7, v0, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->start:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v5, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v6, p1, p2, v3}, Landroid/icu/text/Transliterator;->filteredTransliterate(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;Z)V

    iget v7, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    sub-int v2, v7, v5

    add-int/2addr v0, v2

    invoke-virtual {v4, v2}, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->adjustLimit(I)V

    iget v7, v4, Landroid/icu/text/AnyTransliterator$ScriptRunIterator;->limit:I

    if-lt v7, v0, :cond_0

    :cond_2
    iput v0, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    return-void

    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public safeClone()Landroid/icu/text/Transliterator;
    .locals 8

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getFilter()Landroid/icu/text/UnicodeFilter;

    move-result-object v2

    if-eqz v2, :cond_0

    instance-of v0, v2, Landroid/icu/text/UnicodeSet;

    if-eqz v0, :cond_0

    new-instance v7, Landroid/icu/text/UnicodeSet;

    nop

    nop

    invoke-direct {v7, v2}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    move-object v2, v7

    :cond_0
    new-instance v0, Landroid/icu/text/AnyTransliterator;

    invoke-virtual {p0}, Landroid/icu/text/Transliterator;->getID()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/icu/text/AnyTransliterator;->target:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/AnyTransliterator;->targetScript:I

    iget-object v5, p0, Landroid/icu/text/AnyTransliterator;->widthFix:Landroid/icu/text/Transliterator;

    iget-object v6, p0, Landroid/icu/text/AnyTransliterator;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/AnyTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeFilter;Ljava/lang/String;ILandroid/icu/text/Transliterator;Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method
