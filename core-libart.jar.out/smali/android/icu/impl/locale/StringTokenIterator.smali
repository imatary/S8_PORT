.class public Landroid/icu/impl/locale/StringTokenIterator;
.super Ljava/lang/Object;
.source "StringTokenIterator.java"


# instance fields
.field private _dlms:Ljava/lang/String;

.field private _done:Z

.field private _end:I

.field private _start:I

.field private _text:Ljava/lang/String;

.field private _token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    return-void
.end method

.method private nextDelimiter(I)I
    .locals 4

    move v2, p1

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/locale/StringTokenIterator;->_dlms:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public current()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public currentEnd()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    return v0
.end method

.method public currentStart()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    return v0
.end method

.method public first()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    iget-object v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    return v0
.end method

.method public next()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroid/icu/impl/locale/StringTokenIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    iget v2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    return-object v0

    :cond_0
    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    goto :goto_0
.end method

.method public setStart(I)Landroid/icu/impl/locale/StringTokenIterator;
    .locals 3

    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    iget v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    invoke-direct {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->nextDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    iget-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    iget v1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_start:I

    iget v2, p0, Landroid/icu/impl/locale/StringTokenIterator;->_end:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_token:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/locale/StringTokenIterator;->_done:Z

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Landroid/icu/impl/locale/StringTokenIterator;
    .locals 1

    iput-object p1, p0, Landroid/icu/impl/locale/StringTokenIterator;->_text:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/locale/StringTokenIterator;->setStart(I)Landroid/icu/impl/locale/StringTokenIterator;

    return-object p0
.end method
