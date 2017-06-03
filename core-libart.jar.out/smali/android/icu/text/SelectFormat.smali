.class public Landroid/icu/text/SelectFormat;
.super Ljava/text/Format;
.source "SelectFormat.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final serialVersionUID:J = 0x2989d201f7bc66f8L


# instance fields
.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/SelectFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/SelectFormat;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method static findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v4

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_1

    move p1, v3

    :cond_0
    return v1

    :cond_1
    sget-boolean v5, Landroid/icu/text/SelectFormat;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2, p2}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v3

    :cond_4
    if-nez v1, :cond_5

    const-string/jumbo v5, "other"

    invoke-virtual {p0, v2, v5}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v3

    :cond_5
    invoke-virtual {p0, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/icu/text/SelectFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    :cond_0
    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v1, :cond_0

    new-instance v1, Landroid/icu/text/MessagePattern;

    invoke-direct {v1}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->parseSelectStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Landroid/icu/text/SelectFormat;->reset()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/icu/text/SelectFormat;

    iget-object v3, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v2, v0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v1, v2}, Landroid/icu/text/MessagePattern;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final format(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Invalid formatting argument."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v8, :cond_1

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Invalid format error."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-static {v8, v9, p1}, Landroid/icu/text/SelectFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILjava/lang/String;)I

    move-result v3

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8, v3}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v2

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern;->getPatternString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v9, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v9

    iget-object v10, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v10, v2}, Landroid/icu/text/MessagePattern;->getPatternIndex(I)I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_3
    const/4 v6, 0x0

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8, v3}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v5

    move v0, v3

    :cond_4
    :goto_0
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v7

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v1

    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v7, v8, :cond_6

    if-nez v6, :cond_5

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v8, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_5
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v8, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    :cond_6
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v7, v8, :cond_8

    if-nez v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :cond_7
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v8, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v5

    goto :goto_0

    :cond_8
    sget-object v8, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v7, v8, :cond_4

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :cond_9
    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v6, v8, v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move v5, v1

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v0

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v8, v0}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v8

    invoke-virtual {v8}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v1

    iget-object v8, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-static {v8, v5, v1, v6}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    move v5, v1

    goto :goto_0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 3

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/icu/text/SelectFormat;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' is not a String"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pattern=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/SelectFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
