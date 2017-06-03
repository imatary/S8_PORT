.class public Lorg/kxml2/io/KXmlSerializer;
.super Ljava/lang/Object;
.source "KXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000


# instance fields
.field private auto:I

.field private depth:I

.field private elementStack:[Ljava/lang/String;

.field private encoding:Ljava/lang/String;

.field private indent:[Z

.field private mPos:I

.field private final mText:[C

.field private nspCounts:[I

.field private nspStack:[Ljava/lang/String;

.field private pending:Z

.field private unicode:Z

.field private writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    new-array v0, v1, [Z

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    return-void
.end method

.method private append(C)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v1, 0x2000

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    aput-char p1, v0, v1

    return-void
.end method

.method private append(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p3, :cond_2

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    :cond_0
    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    rsub-int v0, v1, 0x2000

    if-le v0, p3, :cond_1

    move v0, p3

    :cond_1
    add-int v1, p2, v0

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    invoke-virtual {p1, p2, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private final check(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x22

    const/4 v7, 0x0

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iput-boolean v7, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    array-length v3, v3

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-gt v3, v4, :cond_1

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [Z

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    invoke-static {v3, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    :cond_1
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, -0x1

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, -0x1

    aget v2, v3, v4

    :goto_0
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v3, v3, v4

    if-ge v2, v3, :cond_4

    const-string/jumbo v3, " xmlns"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x3a

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v3, "=\""

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-direct {p0, v3, v8}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    array-length v3, v3

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, 0x1

    if-gt v3, v4, :cond_5

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [I

    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    :cond_5
    iget-object v3, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v4, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v5, v5, v6

    aput v5, v3, v4

    if-eqz p1, :cond_6

    const-string/jumbo v3, " />"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_6
    const/16 v3, 0x3e

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_1
.end method

.method private final flushBuffer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->mText:[C

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/Writer;->write([CII)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->mPos:I

    :cond_0
    return-void
.end method

.method private final getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    :goto_0
    if-ltz v1, :cond_4

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v6, v1, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v0, v5, v1

    add-int/lit8 v2, v1, 0x2

    :goto_1
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    :cond_2
    if-eqz v0, :cond_0

    return-object v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    return-object v7

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v4, ""

    :cond_6
    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    invoke-virtual {p0, v4, p1}, Lorg/kxml2/io/KXmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    return-object v4

    :cond_7
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v1, v5, -0x2

    :goto_3
    if-ltz v1, :cond_8

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v4, 0x0

    :cond_8
    if-nez v4, :cond_6

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v1, -0x2

    goto :goto_3
.end method

.method private static reportInvalidCharacter(C)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal character (U+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final writeEscaped(Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-ne v1, p2, :cond_2

    const/16 v3, 0x22

    if-ne v1, v3, :cond_1

    const-string/jumbo v3, "&quot;"

    :goto_1
    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x3b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_1
    const-string/jumbo v3, "&amp;"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_2
    const-string/jumbo v3, "&gt;"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_3
    const-string/jumbo v3, "&lt;"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string/jumbo v3, "&apos;"

    goto :goto_1

    :cond_2
    const/16 v3, 0x20

    if-lt v1, v3, :cond_5

    const v3, 0xd7ff

    if-gt v1, v3, :cond_5

    :cond_3
    move v0, v4

    :goto_3
    if-eqz v0, :cond_8

    iget-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    if-nez v3, :cond_4

    const/16 v3, 0x7f

    if-ge v1, v3, :cond_7

    :cond_4
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_2

    :cond_5
    const v3, 0xe000

    if-lt v1, v3, :cond_6

    const v3, 0xfffd

    if-le v1, v3, :cond_3

    :cond_6
    move v0, v5

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "&#"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_9

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {p0, v1, v3}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    goto/16 :goto_2

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x26 -> :sswitch_1
        0x3c -> :sswitch_3
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private writeSurrogate(CC)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bad surrogate pair (U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " U+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "&#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x22

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "illegal position for attribute"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, ""

    :goto_0
    const/16 v2, 0x20

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    :cond_2
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v2, 0x3d

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    invoke-direct {p0, p3, v1}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    return-object p0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, v2, v3}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x27

    goto :goto_1
.end method

.method public cdsect(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    const-string/jumbo v5, "]]>"

    const-string/jumbo v6, "]]]]><![CDATA[>"

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "<![CDATA["

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-lt v1, v5, :cond_1

    const v5, 0xd7ff

    if-gt v1, v5, :cond_1

    :cond_0
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    const/16 v5, 0xd

    if-eq v1, v5, :cond_0

    const v5, 0xe000

    if-lt v1, v5, :cond_2

    const v5, 0xfffd

    if-gt v1, v5, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_4

    const-string/jumbo v5, "]]>"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {p0, v1, v5}, Lorg/kxml2/io/KXmlSerializer;->writeSurrogate(CC)V

    const-string/jumbo v5, "<![CDATA["

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lorg/kxml2/io/KXmlSerializer;->reportInvalidCharacter(C)V

    goto :goto_2

    :cond_5
    const-string/jumbo v3, "]]>"

    invoke-direct {p0, v3}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    const-string/jumbo v0, "<!--"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const-string/jumbo v0, "-->"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public docdecl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "<!DOCTYPE"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    return-void
.end method

.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/kxml2/io/KXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->flush()V

    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-nez v2, :cond_0

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    :cond_0
    if-nez p1, :cond_2

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "</{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "> does not match start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    :goto_0
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v4, v4, v5

    aput v4, v2, v3

    return-object p0

    :cond_4
    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v3, v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_5

    const-string/jumbo v2, "\r\n"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v0, v2, :cond_5

    const-string/jumbo v2, "  "

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "</"

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    iget v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v2, v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v2, 0x3a

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    :cond_6
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    goto :goto_0
.end method

.method public entityRef(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v0, 0x3b

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    invoke-direct {p0}, Lorg/kxml2/io/KXmlSerializer;->flushBuffer()V

    return-void
.end method

.method public getDepth()I
    .locals 1

    iget-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-virtual {p0}, Lorg/kxml2/io/KXmlSerializer;->getDepth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x3

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, p2}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unsupported property"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    const-string/jumbo v0, "<?"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const-string/jumbo v0, "?>"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean p2, v0, v1

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Unsupported Feature"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "os == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->setOutput(Ljava/io/Writer;)V

    iput-object p2, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOutput(Ljava/io/Writer;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->writer:Ljava/io/Writer;

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v3

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    aput v2, v0, v4

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string/jumbo v1, "xml"

    aput-object v1, v0, v2

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    const-string/jumbo v1, "http://www.w3.org/XML/1998/namespace"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->auto:I

    iput v3, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    iput-boolean v3, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, ""

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, p2, v4, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    :cond_2
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v5, v5, 0x1

    aget v6, v4, v5

    add-int/lit8 v7, v6, 0x1

    aput v7, v4, v5

    shl-int/lit8 v2, v6, 0x1

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v5, v2, 0x1

    if-ge v4, v5, :cond_3

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x10

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    invoke-static {v4, v8, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    :cond_3
    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    add-int/lit8 v3, v2, 0x1

    aput-object p1, v4, v2

    iget-object v4, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    aput-object p2, v4, v3

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported Property:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "<?xml version=\'1.0\' "

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "utf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/kxml2/io/KXmlSerializer;->unicode:Z

    :cond_0
    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "encoding=\'"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const-string/jumbo v0, "\' "

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string/jumbo v0, "standalone=\'"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "yes"

    :goto_0
    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const-string/jumbo v0, "\' "

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "?>"

    invoke-direct {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string/jumbo v0, "no"

    goto :goto_0
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    const-string/jumbo v5, "\r\n"

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    if-ge v3, v5, :cond_0

    const-string/jumbo v5, "  "

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v5, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    mul-int/lit8 v0, v5, 0x3

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v6, v0, 0x3

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v5, v5, 0xc

    new-array v2, v5, [Ljava/lang/String;

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    invoke-static {v5, v7, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    :cond_1
    if-nez p1, :cond_3

    const-string/jumbo v4, ""

    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aget v3, v5, v6

    :goto_2
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspCounts:[I

    iget v6, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->nspStack:[Ljava/lang/String;

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, v8, v8}, Lorg/kxml2/io/KXmlSerializer;->getPrefix(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Cannot set default namespace for elements in no namespace"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object p1, v5, v0

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    aput-object v4, v5, v1

    iget-object v5, p0, Lorg/kxml2/io/KXmlSerializer;->elementStack:[Ljava/lang/String;

    aput-object p2, v5, v0

    const/16 v5, 0x3c

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0, v4}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    const/16 v5, 0x3a

    invoke-direct {p0, v5}, Lorg/kxml2/io/KXmlSerializer;->append(C)V

    :cond_6
    invoke-direct {p0, p2}, Lorg/kxml2/io/KXmlSerializer;->append(Ljava/lang/String;)V

    iput-boolean v8, p0, Lorg/kxml2/io/KXmlSerializer;->pending:Z

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/kxml2/io/KXmlSerializer;->check(Z)V

    iget-object v0, p0, Lorg/kxml2/io/KXmlSerializer;->indent:[Z

    iget v1, p0, Lorg/kxml2/io/KXmlSerializer;->depth:I

    aput-boolean v2, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/kxml2/io/KXmlSerializer;->writeEscaped(Ljava/lang/String;I)V

    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lorg/kxml2/io/KXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-object p0
.end method
