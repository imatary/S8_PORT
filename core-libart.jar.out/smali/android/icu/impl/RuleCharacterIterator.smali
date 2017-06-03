.class public Landroid/icu/impl/RuleCharacterIterator;
.super Ljava/lang/Object;
.source "RuleCharacterIterator.java"


# static fields
.field public static final DONE:I = -0x1

.field public static final PARSE_ESCAPES:I = 0x2

.field public static final PARSE_VARIABLES:I = 0x1

.field public static final SKIP_WHITESPACE:I = 0x4


# instance fields
.field private buf:[C

.field private bufPos:I

.field private isEscaped:Z

.field private pos:Ljava/text/ParsePosition;

.field private sym:Landroid/icu/text/SymbolTable;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/SymbolTable;Ljava/text/ParsePosition;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    iput-object p3, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iput-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    return-void
.end method

.method private _advance(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget v0, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iput-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0
.end method

.method private _current()I
    .locals 5

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v2, v2

    iget v3, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public atEnd()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getPos(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    aput-object v3, v2, v5

    new-array v3, v4, [I

    iget-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    aput v4, v3, v5

    iget v4, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    aput v4, v3, v6

    aput-object v3, v2, v6

    return-object v2

    :cond_0
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    aput-object v2, v0, v5

    aget-object v1, v0, v6

    check-cast v1, [I

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    aput v2, v1, v5

    iget v2, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    aput v2, v1, v6

    return-object p1
.end method

.method public inVariable()Z
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEscaped()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    return v0
.end method

.method public jumpahead(I)V
    .locals 4

    const/4 v3, 0x0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v2, v2

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_1
    iget v1, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v2, v2

    if-ne v1, v2, :cond_2

    iput-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int v0, v1, p1

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public lookahead()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    iget v2, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v3, v3

    iget v4, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next(I)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v0, -0x1

    iput-boolean v7, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    const/16 v3, 0x24

    if-ne v0, v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v3, :cond_4

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    iget-object v4, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    iget-object v6, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/icu/text/SymbolTable;->parseReference(Ljava/lang/String;Ljava/text/ParsePosition;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iput v7, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->sym:Landroid/icu/text/SymbolTable;

    invoke-interface {v3, v1}, Landroid/icu/text/SymbolTable;->lookup(Ljava/lang/String;)[C

    move-result-object v3

    iput-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Undefined variable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    iget-object v3, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    array-length v3, v3

    if-nez v3, :cond_0

    iput-object v8, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    goto :goto_0

    :cond_4
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_1

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    new-array v2, v9, [I

    aput v7, v2, v7

    invoke-virtual {p0}, Landroid/icu/impl/RuleCharacterIterator;->lookahead()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v0

    aget v3, v2, v7

    invoke-virtual {p0, v3}, Landroid/icu/impl/RuleCharacterIterator;->jumpahead(I)V

    iput-boolean v9, p0, Landroid/icu/impl/RuleCharacterIterator;->isEscaped:Z

    if-gez v0, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid escape"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setPos(Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    aget-object v2, v0, v3

    check-cast v2, [C

    iput-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->buf:[C

    aget-object v1, v0, v4

    check-cast v1, [I

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    aget v2, v1, v4

    iput v2, p0, Landroid/icu/impl/RuleCharacterIterator;->bufPos:I

    return-void
.end method

.method public skipIgnored(I)V
    .locals 2

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0}, Landroid/icu/impl/RuleCharacterIterator;->_current()I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/icu/impl/RuleCharacterIterator;->_advance(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Landroid/icu/impl/RuleCharacterIterator;->pos:Ljava/text/ParsePosition;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/impl/RuleCharacterIterator;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
