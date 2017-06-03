.class public Landroid/icu/impl/data/TokenIterator;
.super Ljava/lang/Object;
.source "TokenIterator.java"


# instance fields
.field private buf:Ljava/lang/StringBuffer;

.field private done:Z

.field private lastpos:I

.field private line:Ljava/lang/String;

.field private pos:I

.field private reader:Landroid/icu/impl/data/ResourceReader;


# direct methods
.method public constructor <init>(Landroid/icu/impl/data/ResourceReader;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    iput v1, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    iput v1, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    return-void
.end method

.method private nextToken(I)I
    .locals 10

    const/16 v9, 0x3a

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-static {v6, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne p1, v6, :cond_0

    return v8

    :cond_0
    move v5, p1

    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_8

    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x5c

    if-ne v0, v6, :cond_3

    if-nez v3, :cond_1

    const/4 v6, 0x1

    new-array v3, v6, [I

    :cond_1
    add-int/lit8 v6, v2, 0x1

    aput v6, v3, v7

    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    invoke-static {v6, v3}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v1

    if-gez v1, :cond_2

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid escape at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v8}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    move v4, v0

    goto :goto_0

    :pswitch_2
    return v8

    :cond_2
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-static {v6, v1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    aget v2, v3, v7

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_5

    if-ne v0, v4, :cond_5

    :cond_4
    add-int/lit8 p1, v2, 0x1

    return p1

    :cond_5
    if-nez v4, :cond_6

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_6
    if-nez v4, :cond_7

    const/16 v6, 0x23

    if-ne v0, v6, :cond_7

    return v2

    :cond_7
    iget-object v6, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unterminated quote at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v8}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_9
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describePosition()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v1}, Landroid/icu/impl/data/ResourceReader;->describePosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    if-eqz v0, :cond_2

    return-object v1

    :cond_0
    iput v2, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->lastpos:I

    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    invoke-direct {p0, v0}, Landroid/icu/impl/data/TokenIterator;->nextToken(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    iget v0, p0, Landroid/icu/impl/data/TokenIterator;->pos:I

    if-gez v0, :cond_3

    iput-object v1, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->reader:Landroid/icu/impl/data/ResourceReader;

    invoke-virtual {v0}, Landroid/icu/impl/data/ResourceReader;->readLineSkippingComments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->line:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/data/TokenIterator;->done:Z

    return-object v1

    :cond_3
    iget-object v0, p0, Landroid/icu/impl/data/TokenIterator;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
