.class public Landroid/icu/impl/UnicodeRegex;
.super Ljava/lang/Object;
.source "UnicodeRegex.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/icu/util/Freezable;
.implements Landroid/icu/text/StringTransform;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UnicodeRegex$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/impl/UnicodeRegex;",
        ">;",
        "Landroid/icu/text/StringTransform;"
    }
.end annotation


# static fields
.field private static STANDARD:Landroid/icu/impl/UnicodeRegex;


# instance fields
.field private LongestFirst:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private bnfCommentString:Ljava/lang/String;

.field private bnfLineSeparator:Ljava/lang/String;

.field private bnfVariableInfix:Ljava/lang/String;

.field private log:Ljava/lang/Appendable;

.field private symbolTable:Landroid/icu/text/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/UnicodeRegex;

    invoke-direct {v0}, Landroid/icu/impl/UnicodeRegex;-><init>()V

    sput-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "#"

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    const-string/jumbo v0, "="

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    const-string/jumbo v0, "\n"

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->log:Ljava/lang/Appendable;

    new-instance v0, Landroid/icu/impl/UnicodeRegex$1;

    invoke-direct {v0, p0}, Landroid/icu/impl/UnicodeRegex$1;-><init>(Landroid/icu/impl/UnicodeRegex;)V

    iput-object v0, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    return-void
.end method

.method public static appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    if-nez p2, :cond_0

    const-string/jumbo p2, "UTF-8"

    :cond_0
    invoke-direct {v2, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static appendLines(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, v0, p2}, Landroid/icu/impl/UnicodeRegex;->appendLines(Ljava/util/List;Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    throw v1
.end method

.method public static compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0
.end method

.method public static fix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/impl/UnicodeRegex;->STANDARD:Landroid/icu/impl/UnicodeRegex;

    invoke-virtual {v0, p0}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVariables(Ljava/util/List;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x0

    new-instance v10, Ljava/util/TreeMap;

    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->LongestFirst:Ljava/util/Comparator;

    invoke-direct {v10, v11}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    const/4 v9, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v4, v13}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const v12, 0xfeff

    if-ne v11, v12, :cond_1

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {v4, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    move-object v6, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, ";"

    invoke-virtual {v8, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v11, 0x3b

    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v6, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_6

    if-eqz v9, :cond_4

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing \';\' before "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    invoke-virtual {v6, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Duplicate variable definition in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_5
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v1, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_6
    if-nez v9, :cond_7

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing \'=\' at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    iget-object v11, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_8
    if-eqz v9, :cond_9

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Missing \';\' at end"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_9
    return-object v10
.end method

.method private processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I
    .locals 5

    :try_start_0
    invoke-virtual {p5, p2}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {p4}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, p5, v3, v4}, Landroid/icu/text/UnicodeSet;->applyPattern(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)Landroid/icu/text/UnicodeSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->complement()Landroid/icu/text/UnicodeSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/text/ParsePosition;->getIndex()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit8 p2, v2, -0x1

    return p2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/IllegalArgumentException;

    throw v2
.end method


# virtual methods
.method public cloneAsThawed()Landroid/icu/impl/UnicodeRegex;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/UnicodeRegex;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->cloneAsThawed()Landroid/icu/impl/UnicodeRegex;

    move-result-object v0

    return-object v0
.end method

.method public compileBnf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\\r\\n?|\\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/UnicodeRegex;->compileBnf(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compileBnf(Ljava/util/List;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Landroid/icu/impl/UnicodeRegex;->getVariables(Ljava/util/List;)Ljava/util/Map;

    move-result-object v13

    new-instance v10, Ljava/util/LinkedHashSet;

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-direct {v10, v14}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v9, 0x0

    :goto_0
    const/4 v14, 0x2

    if-ge v9, v14, :cond_3

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v3, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-interface {v10, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v13, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/UnicodeRegex;->log:Ljava/lang/Appendable;

    if-eqz v14, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/impl/UnicodeRegex;->log:Ljava/lang/Appendable;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v14, Ljava/lang/IllegalArgumentException;

    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v14

    check-cast v14, Ljava/lang/IllegalArgumentException;

    throw v14

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Not a single root: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    return-object v14
.end method

.method public freeze()Landroid/icu/impl/UnicodeRegex;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/UnicodeRegex;->freeze()Landroid/icu/impl/UnicodeRegex;

    move-result-object v0

    return-object v0
.end method

.method public getBnfCommentString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    return-object v0
.end method

.method public getBnfLineSeparator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public getBnfVariableInfix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolTable()Landroid/icu/text/SymbolTable;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    return-object v0
.end method

.method public isFrozen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setBnfCommentString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfCommentString:Ljava/lang/String;

    return-void
.end method

.method public setBnfLineSeparator(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfLineSeparator:Ljava/lang/String;

    return-void
.end method

.method public setBnfVariableInfix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->bnfVariableInfix:Ljava/lang/String;

    return-void
.end method

.method public setSymbolTable(Landroid/icu/text/SymbolTable;)Landroid/icu/impl/UnicodeRegex;
    .locals 0

    iput-object p1, p0, Landroid/icu/impl/UnicodeRegex;->symbolTable:Landroid/icu/text/SymbolTable;

    return-object p0
.end method

.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UnicodeRegex;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Landroid/icu/text/UnicodeSet;

    invoke-direct {v4}, Landroid/icu/text/UnicodeSet;-><init>()V

    new-instance v5, Ljava/text/ParsePosition;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Ljava/text/ParsePosition;-><init>(I)V

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    if-ne v6, v8, :cond_2

    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    move-result v2

    goto :goto_2

    :cond_1
    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/16 v0, 0x5b

    if-ne v6, v0, :cond_0

    invoke-static {p1, v2}, Landroid/icu/text/UnicodeSet;->resemblesPattern(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/UnicodeRegex;->processSet(Ljava/lang/String;ILjava/lang/StringBuilder;Landroid/icu/text/UnicodeSet;Ljava/text/ParsePosition;)I

    move-result v2

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x51

    if-ne v6, v0, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    :pswitch_2
    if-ne v6, v8, :cond_0

    const/4 v7, 0x3

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x45

    if-ne v6, v0, :cond_4

    const/4 v7, 0x0

    :cond_4
    const/4 v7, 0x2

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
