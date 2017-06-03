.class public Landroid/icu/impl/UtilityExtensions;
.super Ljava/lang/Object;
.source "UtilityExtensions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/impl/UtilityExtensions;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static formatInput(Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .locals 1

    check-cast p0, Landroid/icu/text/ReplaceableString;

    invoke-static {p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatInput(Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p0, p1}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/Utility;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/Replaceable;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .locals 1

    check-cast p1, Landroid/icu/text/ReplaceableString;

    invoke-static {p0, p1, p2}, Landroid/icu/impl/UtilityExtensions;->formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static formatInput(Ljava/lang/StringBuffer;Landroid/icu/text/ReplaceableString;Landroid/icu/text/Transliterator$Position;)Ljava/lang/StringBuffer;
    .locals 6

    const/16 v5, 0x7c

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    if-ltz v3, :cond_0

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    if-gt v3, v4, :cond_0

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    if-gt v3, v4, :cond_0

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    if-gt v3, v4, :cond_0

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1}, Landroid/icu/text/ReplaceableString;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->start:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v3, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {p1, v3, v4}, Landroid/icu/text/ReplaceableString;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7b

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-object p0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "INVALID Position {cs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->start:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", l="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->limit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cl="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Landroid/icu/text/Transliterator$Position;->contextLimit:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "} on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
