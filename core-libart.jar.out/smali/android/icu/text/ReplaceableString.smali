.class public Landroid/icu/text/ReplaceableString;
.super Ljava/lang/Object;
.source "ReplaceableString.java"

# interfaces
.implements Landroid/icu/text/Replaceable;


# instance fields
.field private buf:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public char32At(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    return v0
.end method

.method public copy(III)V
    .locals 6

    const/4 v4, 0x0

    if-ne p1, p2, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    sub-int v0, p2, p1

    new-array v3, v0, [C

    invoke-virtual {p0, p1, p2, v3, v4}, Landroid/icu/text/ReplaceableString;->getChars(II[CI)V

    sub-int v5, p2, p1

    move-object v0, p0

    move v1, p3

    move v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/ReplaceableString;->replace(II[CII)V

    return-void
.end method

.method public getChars(II[CI)V
    .locals 1

    if-eq p1, p2, :cond_0

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    :cond_0
    return-void
.end method

.method public hasMetaData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    return v0
.end method

.method public replace(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public replace(II[CII)V
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p3, p4, p5}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    return-void
.end method

.method public substring(II)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/icu/text/ReplaceableString;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
