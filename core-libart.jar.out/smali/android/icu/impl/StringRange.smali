.class public Landroid/icu/impl/StringRange;
.super Ljava/lang/Object;
.source "StringRange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/StringRange$1;,
        Landroid/icu/impl/StringRange$Adder;,
        Landroid/icu/impl/StringRange$Range;,
        Landroid/icu/impl/StringRange$Ranges;
    }
.end annotation


# static fields
.field public static final COMPARE_INT_ARRAYS:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/StringRange$1;

    invoke-direct {v0}, Landroid/icu/impl/StringRange$1;-><init>()V

    sput-object v0, Landroid/icu/impl/StringRange;->COMPARE_INT_ARRAYS:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[I[I",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    add-int v1, p0, p1

    aget v10, p2, v1

    aget v7, p3, p0

    if-le v10, v7, :cond_0

    new-instance v1, Landroid/icu/util/ICUException;

    const-string/jumbo v2, "Range must have x\u1d62 \u2264 y\u1d62 for each index i"

    invoke-direct {v1, v2}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    if-ne p0, v1, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    move v8, v10

    :goto_1
    if-gt v8, v7, :cond_3

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    if-eqz v9, :cond_2

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p0, 0x1

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static compact(ILjava/util/Set;)Ljava/util/LinkedList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;)",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/icu/impl/StringRange$Ranges;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v4}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/StringRange$Ranges;

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0, v2}, Landroid/icu/impl/StringRange$Ranges;->merge(ILandroid/icu/impl/StringRange$Ranges;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public static compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/icu/impl/StringRange;->compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V

    return-void
.end method

.method public static compact(Ljava/util/Set;Landroid/icu/impl/StringRange$Adder;ZZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/impl/StringRange$Adder;",
            "ZZ)V"
        }
    .end annotation

    if-nez p3, :cond_8

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v16, :cond_2

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v14, v0, v1, v2, v11}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual {v14, v11}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    add-int v18, v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object v5, v14

    move v9, v4

    goto :goto_0

    :cond_0
    if-nez v5, :cond_3

    const/4 v5, 0x0

    :cond_1
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v5}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v16, v14

    const/4 v5, 0x0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v9

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v17

    invoke-static {v9}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    sub-int v11, v17, v18

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_4
    if-nez v5, :cond_7

    const/4 v5, 0x0

    :cond_5
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v5}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    if-eqz p2, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v5, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_8
    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    const-class v18, Ljava/util/TreeSet;

    invoke-static/range {v17 .. v18}, Landroid/icu/impl/Relation;->of(Ljava/util/Map;Ljava/lang/Class;)Landroid/icu/impl/Relation;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v8, Landroid/icu/impl/StringRange$Ranges;

    invoke-direct {v8, v14}, Landroid/icu/impl/StringRange$Ranges;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/icu/impl/StringRange$Ranges;->size()Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0, v8}, Landroid/icu/impl/Relation;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    invoke-virtual {v10}, Landroid/icu/impl/Relation;->keyValuesSet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Set;

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/icu/impl/StringRange;->compact(ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/StringRange$Ranges;

    invoke-virtual {v12}, Landroid/icu/impl/StringRange$Ranges;->start()Ljava/lang/String;

    move-result-object v17

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/icu/impl/StringRange$Ranges;->end(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/icu/impl/StringRange$Adder;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static expand(Ljava/lang/String;Ljava/lang/String;ZLjava/util/Collection;)Ljava/util/Collection;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Landroid/icu/util/ICUException;

    const-string/jumbo v5, "Range must have 2 valid strings"

    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v2

    invoke-static {p1}, Landroid/icu/lang/CharSequences;->codePoints(Ljava/lang/CharSequence;)[I

    move-result-object v3

    array-length v5, v2

    array-length v7, v3

    sub-int v1, v5, v7

    if-eqz p2, :cond_2

    if-eqz v1, :cond_2

    new-instance v0, Landroid/icu/util/ICUException;

    const-string/jumbo v5, "Range must have equal-length strings"

    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez v1, :cond_3

    new-instance v0, Landroid/icu/util/ICUException;

    const-string/jumbo v5, "Range must have start-length \u2265 end-length"

    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v5, v3

    if-nez v5, :cond_4

    new-instance v0, Landroid/icu/util/ICUException;

    const-string/jumbo v5, "Range must have end-length > 0"

    invoke-direct {v0, v5}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_5

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    move-object v5, p3

    invoke-static/range {v0 .. v5}, Landroid/icu/impl/StringRange;->add(II[I[ILjava/lang/StringBuilder;Ljava/util/Collection;)V

    return-object p3
.end method
