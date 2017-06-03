.class public final Landroid/icu/text/UTF16;
.super Ljava/lang/Object;
.source "UTF16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/UTF16$StringComparator;
    }
.end annotation


# static fields
.field public static final CODEPOINT_MAX_VALUE:I = 0x10ffff

.field public static final CODEPOINT_MIN_VALUE:I = 0x0

.field private static final LEAD_SURROGATE_BITMASK:I = -0x400

.field private static final LEAD_SURROGATE_BITS:I = 0xd800

.field public static final LEAD_SURROGATE_BOUNDARY:I = 0x2

.field public static final LEAD_SURROGATE_MAX_VALUE:I = 0xdbff

.field public static final LEAD_SURROGATE_MIN_VALUE:I = 0xd800

.field private static final LEAD_SURROGATE_OFFSET_:I = 0xd7c0

.field private static final LEAD_SURROGATE_SHIFT_:I = 0xa

.field public static final SINGLE_CHAR_BOUNDARY:I = 0x1

.field public static final SUPPLEMENTARY_MIN_VALUE:I = 0x10000

.field private static final SURROGATE_BITMASK:I = -0x800

.field private static final SURROGATE_BITS:I = 0xd800

.field public static final SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final SURROGATE_MIN_VALUE:I = 0xd800

.field private static final TRAIL_SURROGATE_BITMASK:I = -0x400

.field private static final TRAIL_SURROGATE_BITS:I = 0xdc00

.field public static final TRAIL_SURROGATE_BOUNDARY:I = 0x5

.field private static final TRAIL_SURROGATE_MASK_:I = 0x3ff

.field public static final TRAIL_SURROGATE_MAX_VALUE:I = 0xdfff

.field public static final TRAIL_SURROGATE_MIN_VALUE:I = 0xdc00


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _charAt(Ljava/lang/CharSequence;IC)I
    .locals 5

    const v4, 0xdfff

    const v3, 0xdbff

    if-le p2, v4, :cond_0

    return p2

    :cond_0
    if-gt p2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v2, p1, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_2

    if-gt v1, v4, :cond_2

    invoke-static {p2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-lt v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_2
    return p2
.end method

.method private static _charAt(Ljava/lang/String;IC)I
    .locals 5

    const v4, 0xdfff

    const v3, 0xdbff

    if-le p2, v4, :cond_0

    return p2

    :cond_0
    if-gt p2, v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_2

    if-gt v1, v4, :cond_2

    invoke-static {p2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-lt v0, v2, :cond_2

    if-gt v0, v3, :cond_2

    invoke-static {v0, p2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    return v2

    :cond_2
    return p2
.end method

.method public static append([CII)I
    .locals 3

    if-ltz p2, :cond_0

    const v1, 0x10ffff

    if-le p2, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Illegal codepoint"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/high16 v1, 0x10000

    if-lt p2, v1, :cond_2

    add-int/lit8 v0, p1, 0x1

    invoke-static {p2}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    aput-char v1, p0, p1

    add-int/lit8 p1, v0, 0x1

    invoke-static {p2}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    aput-char v1, p0, v0

    :goto_0
    return p1

    :cond_2
    add-int/lit8 v0, p1, 0x1

    int-to-char v1, p2

    aput-char v1, p0, p1

    move p1, v0

    goto :goto_0
.end method

.method public static append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 3

    if-ltz p1, :cond_0

    const v0, 0x10ffff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal codepoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_2

    invoke-static {p1}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    return-object p0

    :cond_2
    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static appendCodePoint(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->append(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static bounds(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static bounds(Ljava/lang/StringBuffer;I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    return v1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static bounds([CIII)I
    .locals 2

    add-int/2addr p3, p1

    if-lt p3, p1, :cond_0

    if-lt p3, p2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    :cond_1
    aget-char v0, p0, p3

    invoke-static {v0}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p3, p3, 0x1

    if-ge p3, p2, :cond_3

    aget-char v1, p0, p3

    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    return v1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p1, :cond_3

    aget-char v1, p0, p3

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    return v1

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static charAt(Landroid/icu/text/Replaceable;I)I
    .locals 4

    if-ltz p1, :cond_0

    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_1
    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    const v3, 0xdbff

    if-gt v1, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0}, Landroid/icu/text/Replaceable;->length()I

    move-result v3

    if-eq v3, p1, :cond_4

    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    invoke-interface {p0, p1}, Landroid/icu/text/Replaceable;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_4
    return v1
.end method

.method public static charAt(Ljava/lang/CharSequence;I)I
    .locals 2

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/icu/text/UTF16;->_charAt(Ljava/lang/CharSequence;IC)I

    move-result v1

    return v1
.end method

.method public static charAt(Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v1, 0xd800

    if-ge v0, v1, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/icu/text/UTF16;->_charAt(Ljava/lang/String;IC)I

    move-result v1

    return v1
.end method

.method public static charAt(Ljava/lang/StringBuffer;I)I
    .locals 4

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    const v3, 0xdbff

    if-gt v1, v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-eq v3, p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_4
    return v1
.end method

.method public static charAt([CIII)I
    .locals 4

    add-int/2addr p3, p1

    if-lt p3, p1, :cond_0

    if-lt p3, p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_1
    aget-char v1, p0, p3

    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    const v3, 0xdbff

    if-gt v1, v3, :cond_4

    add-int/lit8 p3, p3, 0x1

    if-lt p3, p2, :cond_3

    return v1

    :cond_3
    aget-char v2, p0, p3

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_4
    if-ne p3, p1, :cond_5

    return v1

    :cond_5
    add-int/lit8 p3, p3, -0x1

    aget-char v0, p0, p3

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    return v3

    :cond_6
    return v1
.end method

.method public static compareCodePoint(ILjava/lang/CharSequence;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v4

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    return v4

    :cond_1
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    sub-int v0, p0, v1

    if-eqz v0, :cond_2

    return v0

    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    if-ne v2, v4, :cond_3

    :goto_0
    return v3

    :cond_3
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static countCodePoint(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->findCodePointOffset(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static countCodePoint(Ljava/lang/StringBuffer;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    invoke-static {p0, v0}, Landroid/icu/text/UTF16;->findCodePointOffset(Ljava/lang/StringBuffer;I)I

    move-result v0

    return v0
.end method

.method public static countCodePoint([CII)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    sub-int v0, p2, p1

    invoke-static {p0, p1, p2, v0}, Landroid/icu/text/UTF16;->findCodePointOffset([CIII)I

    move-result v0

    return v0
.end method

.method public static delete([CII)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    invoke-static {p0, v3, p1, p2}, Landroid/icu/text/UTF16;->bounds([CIII)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    add-int v1, p2, v0

    add-int v2, p2, v0

    sub-int v2, p1, v2

    invoke-static {p0, v1, p0, p2, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    sub-int v1, p1, v0

    aput-char v3, p0, v1

    sub-int v1, p1, v0

    return v1

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static delete(Ljava/lang/StringBuffer;I)Ljava/lang/StringBuffer;
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    add-int v1, p1, v0

    invoke-virtual {p0, p1, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    return-object p0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static findCodePointOffset(Ljava/lang/String;I)I
    .locals 5

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne p1, v4, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    return v3
.end method

.method public static findCodePointOffset(Ljava/lang/StringBuffer;I)I
    .locals 5

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-le p1, v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ne p1, v4, :cond_4

    return v3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    :cond_5
    return v3
.end method

.method public static findCodePointOffset([CIII)I
    .locals 5

    add-int/2addr p3, p1

    if-le p3, p2, :cond_0

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p3, :cond_2

    aget-char v0, p0, v2

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne p3, p2, :cond_3

    return v3

    :cond_3
    if-eqz v1, :cond_4

    aget-char v4, p0, p3

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    :cond_4
    return v3
.end method

.method public static findOffsetFromCodePoint(Ljava/lang/String;I)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move v1, p1

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_4
    return v2
.end method

.method public static findOffsetFromCodePoint(Ljava/lang/StringBuffer;I)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    const/4 v2, 0x0

    move v1, p1

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    :goto_0
    if-ge v2, v3, :cond_3

    if-lez v1, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_4
    return v2
.end method

.method public static findOffsetFromCodePoint([CIII)I
    .locals 4

    move v2, p1

    move v1, p3

    sub-int v3, p2, p1

    if-le p3, v3, :cond_0

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_0
    :goto_0
    if-ge v2, p2, :cond_2

    if-lez v1, :cond_2

    aget-char v0, p0, v2

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    if-ge v3, p2, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    :cond_3
    sub-int v3, v2, p1

    return v3
.end method

.method public static getCharCount(I)I
    .locals 1

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public static getLeadSurrogate(I)C
    .locals 2

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    shr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getSingleCodePoint(Ljava/lang/CharSequence;)I
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    return v1

    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    return v3

    :cond_3
    invoke-static {p0, v4}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_4

    return v0

    :cond_4
    return v3
.end method

.method public static getTrailSurrogate(I)C
    .locals 2

    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_0

    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0

    :cond_0
    int-to-char v0, p0

    return v0
.end method

.method public static hasMoreCodePointsThan(Ljava/lang/String;I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_0

    return v6

    :cond_0
    if-nez p0, :cond_1

    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-le v4, p1, :cond_2

    return v6

    :cond_2
    sub-int v1, v0, p1

    if-gtz v1, :cond_3

    return v5

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v0, :cond_4

    return v5

    :cond_4
    if-nez p1, :cond_5

    return v6

    :cond_5
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eq v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_6

    return v5

    :cond_6
    add-int/lit8 p1, p1, -0x1

    move v3, v2

    goto :goto_0
.end method

.method public static hasMoreCodePointsThan(Ljava/lang/StringBuffer;I)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-gez p1, :cond_0

    return v6

    :cond_0
    if-nez p0, :cond_1

    return v5

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v4, v0, 0x1

    shr-int/lit8 v4, v4, 0x1

    if-le v4, p1, :cond_2

    return v6

    :cond_2
    sub-int v1, v0, p1

    if-gtz v1, :cond_3

    return v5

    :cond_3
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez v0, :cond_4

    return v5

    :cond_4
    if-nez p1, :cond_5

    return v6

    :cond_5
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    if-eq v2, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_6

    return v5

    :cond_6
    add-int/lit8 p1, p1, -0x1

    move v3, v2

    goto :goto_0
.end method

.method public static hasMoreCodePointsThan([CIII)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sub-int v0, p2, p1

    if-ltz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v4, "Start and limit indexes should be non-negative and start <= limit"

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-ltz p2, :cond_0

    if-gez p3, :cond_2

    return v5

    :cond_2
    if-nez p0, :cond_3

    return v4

    :cond_3
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v3, v3, 0x1

    if-le v3, p3, :cond_4

    return v5

    :cond_4
    sub-int v1, v0, p3

    if-gtz v1, :cond_6

    return v4

    :cond_5
    add-int/lit8 p3, p3, -0x1

    :cond_6
    move v2, p1

    if-nez v0, :cond_7

    return v4

    :cond_7
    if-nez p3, :cond_8

    return v5

    :cond_8
    add-int/lit8 p1, v2, 0x1

    aget-char v3, p0, v2

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eq p1, p2, :cond_5

    aget-char v3, p0, p1

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_5

    return v4
.end method

.method public static indexOf(Ljava/lang/String;I)I
    .locals 4

    const/high16 v3, 0x10000

    if-ltz p1, :cond_0

    const v2, 0x10ffff

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v2, 0xd800

    if-lt p1, v2, :cond_2

    const v2, 0xdfff

    if-le p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    :cond_2
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    return v2

    :cond_3
    if-ge p1, v3, :cond_6

    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    int-to-char v2, p1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static indexOf(Ljava/lang/String;II)I
    .locals 4

    const/high16 v3, 0x10000

    if-ltz p1, :cond_0

    const v2, 0x10ffff

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v2, 0xd800

    if-lt p1, v2, :cond_2

    const v2, 0xdfff

    if-le p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    :cond_2
    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    return v2

    :cond_3
    if-ge p1, v3, :cond_6

    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_5

    int-to-char v2, p1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int v1, v0, v2

    if-ltz v0, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_3
    return v0
.end method

.method public static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int v1, v0, v2

    if-ltz v0, :cond_3

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    if-lez v0, :cond_3

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, p1, v3}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    return v3

    :cond_3
    return v0
.end method

.method public static insert([CIII)I
    .locals 5

    const/4 v4, 0x0

    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    if-eq p2, p1, :cond_0

    invoke-static {p0, v4, p1, p2}, Landroid/icu/text/UTF16;->bounds([CIII)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    add-int/lit8 p2, p2, 0x1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int v2, p1, v0

    array-length v3, p0

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int v3, p2, v0

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v2

    :cond_1
    add-int v2, p2, v0

    sub-int v3, p1, p2

    invoke-static {p0, p2, p0, v2, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, p0, p2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, p0, v2

    :cond_2
    add-int v2, p1, v0

    return v2
.end method

.method public static insert(Ljava/lang/StringBuffer;II)Ljava/lang/StringBuffer;
    .locals 3

    invoke-static {p2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public static isLeadSurrogate(C)Z
    .locals 2

    and-int/lit16 v0, p0, -0x400

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSurrogate(C)Z
    .locals 2

    and-int/lit16 v0, p0, -0x800

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTrailSurrogate(C)Z
    .locals 2

    and-int/lit16 v0, p0, -0x400

    const v1, 0xdc00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/String;I)I
    .locals 4

    const/high16 v3, 0x10000

    if-ltz p1, :cond_0

    const v2, 0x10ffff

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v2, 0xd800

    if-lt p1, v2, :cond_2

    const v2, 0xdfff

    if-le p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    :cond_2
    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    return v2

    :cond_3
    if-ge p1, v3, :cond_6

    int-to-char v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_5

    int-to-char v2, p1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public static lastIndexOf(Ljava/lang/String;II)I
    .locals 4

    const/high16 v3, 0x10000

    if-ltz p1, :cond_0

    const v2, 0x10ffff

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Argument char32 is not a valid codepoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const v2, 0xd800

    if-lt p1, v2, :cond_2

    const v2, 0xdfff

    if-le p1, v2, :cond_3

    if-ge p1, v3, :cond_3

    :cond_2
    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    return v2

    :cond_3
    if-ge p1, v3, :cond_6

    int-to-char v2, p1

    invoke-virtual {p0, v2, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_5

    int-to-char v2, p1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_4
    if-lez v1, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;II)I

    move-result v2

    return v2

    :cond_5
    return v1

    :cond_6
    invoke-static {p1}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_3
    return v0
.end method

.method public static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    add-int v2, v0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    if-lez v0, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    return v2

    :cond_3
    return v0
.end method

.method public static moveCodePointOffset(Ljava/lang/String;II)I
    .locals 5

    move v2, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    if-lez p2, :cond_4

    add-int v4, p2, p1

    if-le v4, v3, :cond_2

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_2
    move v1, p2

    :goto_0
    if-ge v2, v3, :cond_6

    if-lez v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int v4, p1, p2

    if-gez v4, :cond_5

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_5
    neg-int v1, p2

    :goto_1
    if-lez v1, :cond_6

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_7

    :cond_6
    if-eqz v1, :cond_9

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_8

    if-lez v2, :cond_8

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_9
    return v2
.end method

.method public static moveCodePointOffset(Ljava/lang/StringBuffer;II)I
    .locals 5

    move v2, p1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ltz p1, :cond_0

    if-le p1, v3, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    if-lez p2, :cond_4

    add-int v4, p2, p1

    if-le v4, v3, :cond_2

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_2
    move v1, p2

    :goto_0
    if-ge v2, v3, :cond_6

    if-lez v1, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int v4, p1, p2

    if-gez v4, :cond_5

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_5
    neg-int v1, p2

    :goto_1
    if-lez v1, :cond_6

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_7

    :cond_6
    if-eqz v1, :cond_9

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_7
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_8

    if-lez v2, :cond_8

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_9
    return v2
.end method

.method public static moveCodePointOffset([CIIII)I
    .locals 5

    array-length v3, p0

    add-int v2, p3, p1

    if-ltz p1, :cond_0

    if-ge p2, p1, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_1
    if-le p2, v3, :cond_2

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_2
    if-ltz p3, :cond_3

    if-le v2, p2, :cond_4

    :cond_3
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_4
    if-lez p4, :cond_7

    add-int v4, p4, v2

    if-le v4, v3, :cond_5

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_5
    move v1, p4

    :goto_0
    if-ge v2, p2, :cond_9

    if-lez v1, :cond_9

    aget-char v0, p0, v2

    invoke-static {v0}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, v2, 0x1

    if-ge v4, p2, :cond_6

    add-int/lit8 v4, v2, 0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    add-int v4, v2, p4

    if-ge v4, p1, :cond_8

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, v2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_8
    neg-int v1, p4

    :goto_1
    if-lez v1, :cond_9

    add-int/lit8 v2, v2, -0x1

    if-ge v2, p1, :cond_a

    :cond_9
    if-eqz v1, :cond_c

    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v4, p4}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v4

    :cond_a
    aget-char v0, p0, v2

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_b

    if-le v2, p1, :cond_b

    add-int/lit8 v4, v2, -0x1

    aget-char v4, p0, v4

    invoke-static {v4}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_b

    add-int/lit8 v2, v2, -0x1

    :cond_b
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_c
    sub-int/2addr v2, p1

    return v2
.end method

.method public static newString([III)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    if-gez p2, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_0
    new-array v0, p2, [C

    const/4 v7, 0x0

    move v5, p1

    add-int v2, p1, p2

    :goto_0
    if-ge v5, v2, :cond_4

    aget v1, p0, v5

    if-ltz v1, :cond_1

    const v8, 0x10ffff

    if-le v1, v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :catch_0
    move-exception v3

    array-length v8, p0

    int-to-double v8, v8

    add-int/lit8 v10, v7, 0x2

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-int v10, v5, p1

    add-int/lit8 v10, v10, 0x1

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    new-array v6, v4, [C

    invoke-static {v0, v12, v6, v12, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    move-object v0, v6

    :cond_2
    const/high16 v8, 0x10000

    if-ge v1, v8, :cond_3

    int-to-char v8, v1

    :try_start_0
    aput-char v8, v0, v7

    add-int/lit8 v7, v7, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    shr-int/lit8 v8, v1, 0xa

    const v9, 0xd7c0

    add-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v0, v7

    add-int/lit8 v8, v7, 0x1

    and-int/lit16 v9, v1, 0x3ff

    const v10, 0xdc00

    add-int/2addr v9, v10

    int-to-char v9, v9

    aput-char v9, v0, v8
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0, v12, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v8
.end method

.method public static replace(Ljava/lang/String;II)Ljava/lang/String;
    .locals 10

    const v8, 0x10ffff

    const/4 v9, -0x1

    if-lez p1, :cond_0

    if-le p1, v8, :cond_1

    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Argument oldChar32 is not a valid codepoint"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    if-lez p2, :cond_2

    if-le p2, v8, :cond_3

    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Argument newChar32 is not a valid codepoint"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v9, :cond_4

    return-object p0

    :cond_4
    invoke-static {p2}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v7, v1

    const/high16 v8, 0x10000

    if-lt p1, v8, :cond_5

    const/4 v5, 0x2

    :cond_5
    :goto_0
    if-eq v1, v9, :cond_6

    add-int v0, v7, v5

    invoke-virtual {v6, v7, v0, v4}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int v2, v1, v5

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;II)I

    move-result v1

    add-int v8, v3, v1

    sub-int/2addr v8, v2

    add-int/2addr v7, v8

    goto :goto_0

    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, -0x1

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v8, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v6, v1

    :goto_0
    if-eq v1, v8, :cond_1

    add-int v0, v6, v4

    invoke-virtual {v5, v6, v0, p2}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    add-int v2, v1, v4

    invoke-static {p0, p1, v2}, Landroid/icu/text/UTF16;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    add-int v7, v3, v1

    sub-int/2addr v7, v2

    add-int/2addr v6, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static reverse(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v4

    move v3, v2

    :goto_0
    add-int/lit8 v2, v3, -0x1

    if-lez v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_0

    if-lez v2, :cond_0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    return-object v5
.end method

.method public static setCharAt([CIII)I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-lt p2, p1, :cond_0

    new-instance v5, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v5, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v5

    :cond_0
    const/4 v0, 0x1

    aget-char v2, p0, p2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    array-length v5, p0

    add-int/lit8 v6, p2, 0x1

    if-le v5, v6, :cond_3

    add-int/lit8 v5, p2, 0x1

    aget-char v5, p0, v5

    invoke-static {v5}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x2

    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move v1, p1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, p0, p2

    if-ne v0, v4, :cond_4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, v5

    :cond_2
    :goto_1
    return v1

    :cond_3
    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez p2, :cond_1

    add-int/lit8 v5, p2, -0x1

    aget-char v5, p0, v5

    invoke-static {v5}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    add-int v5, p2, v0

    add-int v6, p2, v4

    add-int v7, p2, v0

    sub-int v7, p1, v7

    invoke-static {p0, v5, p0, v6, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    if-ge v0, v4, :cond_5

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v3, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, p0, v5

    add-int/lit8 v1, p1, 0x1

    array-length v5, p0

    if-ge v1, v5, :cond_2

    aput-char v8, p0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v1, p1, -0x1

    aput-char v8, p0, v1

    goto :goto_1
.end method

.method public static setCharAt(Ljava/lang/StringBuffer;II)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->isSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-le v2, v3, :cond_1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    add-int v2, p1, v0

    invoke-static {p2}, Landroid/icu/text/UTF16;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static toString(I)Ljava/lang/String;
    .locals 2

    const/high16 v1, 0x10000

    if-ge p0, v1, :cond_0

    int-to-char v1, p0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/icu/text/UTF16;->getLeadSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/icu/text/UTF16;->getTrailSurrogate(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    const v0, 0x10ffff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Landroid/icu/text/UTF16;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroid/icu/text/UTF16;->bounds(Ljava/lang/StringBuffer;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    add-int/lit8 v0, p1, -0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf([CIII)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    invoke-static {p0, p1, p2, p3}, Landroid/icu/text/UTF16;->bounds([CIII)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :pswitch_2
    new-instance v0, Ljava/lang/String;

    add-int v1, p1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
