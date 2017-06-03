.class Landroid/icu/text/TransliteratorIDParser;
.super Ljava/lang/Object;
.source "TransliteratorIDParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/TransliteratorIDParser$SingleID;,
        Landroid/icu/text/TransliteratorIDParser$Specs;
    }
.end annotation


# static fields
.field private static final ANY:Ljava/lang/String; = "Any"

.field private static final CLOSE_REV:C = ')'

.field private static final FORWARD:I = 0x0

.field private static final ID_DELIM:C = ';'

.field private static final OPEN_REV:C = '('

.field private static final REVERSE:I = 0x1

.field private static final SPECIAL_INVERSES:Ljava/util/Map;
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

.field private static final TARGET_SEP:C = '-'

.field private static final VARIANT_SEP:C = '/'


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IDtoSTV(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string/jumbo v3, "Any"

    const/4 v4, 0x0

    const-string/jumbo v6, ""

    const/16 v7, 0x2d

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v7, 0x2f

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    :cond_0
    const/4 v0, 0x0

    if-gez v1, :cond_2

    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_1
    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v9

    aput-object v4, v8, v10

    const/4 v7, 0x2

    aput-object v6, v8, v7

    if-eqz v0, :cond_6

    const-string/jumbo v7, ""

    :goto_1
    const/4 v9, 0x3

    aput-object v7, v8, v9

    return-object v8

    :cond_2
    if-ge v1, v5, :cond_4

    if-lez v1, :cond_3

    invoke-virtual {p0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    if-lez v5, :cond_5

    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    :cond_5
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move v1, v2

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static STVtoID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Any"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static instantiateList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/TransliteratorIDParser$SingleID;

    iget-object v4, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->basicID:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;->getInstance()Landroid/icu/text/Transliterator;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "Any-Null"

    invoke-static {v4, v5}, Landroid/icu/text/Transliterator;->getBasicInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Internal error; cannot instantiate Any-Null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v3
.end method

.method public static parseCompoundID(Ljava/lang/String;ILjava/lang/StringBuffer;Ljava/util/List;[Landroid/icu/text/UnicodeSet;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/TransliteratorIDParser$SingleID;",
            ">;[",
            "Landroid/icu/text/UnicodeSet;",
            ")Z"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v2, v9, [I

    aput v8, v2, v8

    new-array v5, v9, [I

    invoke-interface {p3}, Ljava/util/List;->clear()V

    aput-object v6, p4, v8

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    aput v8, v5, v8

    invoke-static {p0, v2, p1, v5, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v2, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->setLength(I)V

    aput v8, v2, v8

    :cond_0
    if-nez p1, :cond_1

    aput-object v0, p4, v8

    :cond_1
    const/4 v3, 0x1

    :cond_2
    invoke-static {p0, v2, p1}, Landroid/icu/text/TransliteratorIDParser;->parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_5

    return v8

    :cond_3
    if-nez p1, :cond_4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-static {p0, v2, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    invoke-interface {p3, v8, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_7

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/TransliteratorIDParser$SingleID;

    iget-object v6, v4, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_6

    invoke-virtual {p2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    aput v9, v5, v8

    invoke-static {p0, v2, p1, v5, p2}, Landroid/icu/text/TransliteratorIDParser;->parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {p0, v2, v7}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    if-ne p1, v9, :cond_8

    aput-object v0, p4, v8

    :cond_8
    aget v6, v2, v8

    invoke-static {p0, v6}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v6

    aput v6, v2, v8

    aget v6, v2, v8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-eq v6, v7, :cond_9

    return v8

    :cond_9
    return v9
.end method

.method public static parseFilterID(Ljava/lang/String;[I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    aget v2, p1, v4

    const/4 v3, 0x1

    invoke-static {p0, p1, v3}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v1

    if-nez v1, :cond_0

    aput v2, p1, v4

    return-object v5

    :cond_0
    invoke-static {v1, v4}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v0

    iget-object v3, v1, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v3, v0, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    return-object v0
.end method

.method private static parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;
    .locals 14

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    aget v12, p1, v0

    :goto_0
    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v0

    const/4 v13, 0x0

    aput v0, p1, v13

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v0, v13, :cond_2

    :cond_0
    if-eqz v8, :cond_1

    if-nez v2, :cond_8

    move-object v2, v8

    :cond_1
    :goto_1
    if-nez v1, :cond_9

    if-nez v2, :cond_9

    const/4 v0, 0x0

    aput v12, p1, v0

    const/4 v0, 0x0

    return-object v0

    :cond_2
    if-eqz p2, :cond_3

    if-nez v5, :cond_3

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-static {p0, v0}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v9, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-direct {v9, v0}, Ljava/text/ParsePosition;-><init>(I)V

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v13, 0x0

    invoke-direct {v0, p0, v9, v13}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    invoke-virtual {p0, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    const/4 v13, 0x0

    aput v0, p1, v13

    goto :goto_0

    :cond_3
    if-nez v7, :cond_6

    const/4 v0, 0x0

    aget v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v0, 0x2d

    if-ne v6, v0, :cond_5

    if-nez v2, :cond_5

    :cond_4
    move v7, v6

    const/4 v0, 0x0

    aget v13, p1, v0

    add-int/lit8 v13, v13, 0x1

    aput v13, p1, v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x2f

    if-ne v6, v0, :cond_6

    if-eqz v3, :cond_4

    :cond_6
    if-nez v7, :cond_7

    if-gtz v11, :cond_0

    :cond_7
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    sparse-switch v7, :sswitch_data_0

    :goto_2
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x0

    goto :goto_0

    :sswitch_0
    move-object v8, v10

    goto :goto_2

    :sswitch_1
    move-object v2, v10

    goto :goto_2

    :sswitch_2
    move-object v3, v10

    goto :goto_2

    :cond_8
    move-object v1, v8

    goto :goto_1

    :cond_9
    const/4 v4, 0x1

    if-nez v1, :cond_a

    const-string/jumbo v1, "Any"

    const/4 v4, 0x0

    :cond_a
    if-nez v2, :cond_b

    const-string/jumbo v2, "Any"

    :cond_b
    new-instance v0, Landroid/icu/text/TransliteratorIDParser$Specs;

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/TransliteratorIDParser$Specs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2d -> :sswitch_1
        0x2f -> :sswitch_2
    .end sparse-switch
.end method

.method public static parseGlobalFilter(Ljava/lang/String;[II[ILjava/lang/StringBuffer;)Landroid/icu/text/UnicodeSet;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    aget v4, p1, v5

    const/4 v5, 0x0

    aget v5, p3, v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    const/16 v5, 0x28

    invoke-static {p0, p1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x0

    aput v5, p3, v6

    :cond_0
    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-static {p0, v5}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-static {p0, v5}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v3, Ljava/text/ParsePosition;

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-direct {v3, v5}, Ljava/text/ParsePosition;-><init>(I)V

    :try_start_0
    new-instance v1, Landroid/icu/text/UnicodeSet;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v3, v5}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    aget v5, p1, v5

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    const/4 v6, 0x0

    aput v5, p1, v6

    const/4 v5, 0x0

    aget v5, p3, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/16 v5, 0x29

    invoke-static {p0, p1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    if-eqz p4, :cond_3

    if-nez p2, :cond_7

    const/4 v5, 0x0

    aget v5, p3, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v5, 0x0

    aget v5, p3, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/16 v5, 0x28

    invoke-static {p0, p1, v5}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aput v4, p1, v5

    const/4 v5, 0x0

    return-object v5

    :catch_0
    move-exception v0

    const/4 v5, 0x0

    aput v4, p1, v5

    const/4 v5, 0x0

    return-object v5

    :cond_6
    const/4 v5, 0x0

    aput v4, p1, v5

    const/4 v5, 0x0

    return-object v5

    :cond_7
    const/4 v5, 0x0

    aget v5, p3, v5

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x28

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p4, v6, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static parseSingleID(Ljava/lang/String;[II)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 12

    const/16 v11, 0x28

    const/4 v10, 0x1

    const/16 v9, 0x29

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v5, p1, v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    :goto_0
    const/4 v6, 0x2

    if-gt v0, v6, :cond_1

    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    invoke-static {p0, p1, v10}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v3

    if-nez v3, :cond_0

    aput v5, p1, v8

    return-object v7

    :cond_0
    invoke-static {p0, p1, v11}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v1, 0x1

    invoke-static {p0, p1, v9}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {p0, p1, v10}, Landroid/icu/text/TransliteratorIDParser;->parseFilterID(Ljava/lang/String;[IZ)Landroid/icu/text/TransliteratorIDParser$Specs;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p0, p1, v9}, Landroid/icu/impl/Utility;->parseChar(Ljava/lang/String;[IC)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    if-eqz v1, :cond_6

    if-nez p2, :cond_5

    invoke-static {v3, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v7

    iget-object v7, v7, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v6, v3, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    aput v5, p1, v8

    return-object v7

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v4, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v7

    iget-object v7, v7, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->canonID:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v6, v4, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    goto :goto_1

    :cond_6
    if-nez p2, :cond_8

    invoke-static {v3, v8}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v2

    :cond_7
    :goto_2
    iget-object v6, v3, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    iput-object v6, v2, Landroid/icu/text/TransliteratorIDParser$SingleID;->filter:Ljava/lang/String;

    goto :goto_1

    :cond_8
    invoke-static {v3}, Landroid/icu/text/TransliteratorIDParser;->specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v3, v10}, Landroid/icu/text/TransliteratorIDParser;->specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;

    move-result-object v2

    goto :goto_2
.end method

.method public static registerSpecialInverse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p0}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v1, Landroid/icu/util/CaseInsensitiveString;

    invoke-direct {v1, p1}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static specsToID(Landroid/icu/text/TransliteratorIDParser$Specs;I)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x2d

    const-string/jumbo v3, ""

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    if-eqz p0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_4

    iget-boolean v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    if-eqz v4, :cond_0

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    invoke-virtual {v2, v7, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    new-instance v4, Landroid/icu/text/TransliteratorIDParser$SingleID;

    invoke-direct {v4, v3, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static specsToSpecialInverse(Landroid/icu/text/TransliteratorIDParser$Specs;)Landroid/icu/text/TransliteratorIDParser$SingleID;
    .locals 8

    const/16 v7, 0x2f

    const/4 v6, 0x0

    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->source:Ljava/lang/String;

    const-string/jumbo v4, "Any"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v6

    :cond_0
    sget-object v3, Landroid/icu/text/TransliteratorIDParser;->SPECIAL_INVERSES:Ljava/util/Map;

    new-instance v4, Landroid/icu/util/CaseInsensitiveString;

    iget-object v5, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->target:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/icu/util/CaseInsensitiveString;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->filter:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->sawSource:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Any"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Any-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/TransliteratorIDParser$Specs;->variant:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Landroid/icu/text/TransliteratorIDParser$SingleID;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/icu/text/TransliteratorIDParser$SingleID;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_4
    return-object v6
.end method
