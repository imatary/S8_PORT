.class public final Landroid/icu/text/UTF16$StringComparator;
.super Ljava/lang/Object;
.source "UTF16.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/UTF16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final CODE_POINT_COMPARE_SURROGATE_OFFSET_:I = 0x2800

.field public static final FOLD_CASE_DEFAULT:I = 0x0

.field public static final FOLD_CASE_EXCLUDE_SPECIAL_I:I = 0x1


# instance fields
.field private m_codePointCompare_:I

.field private m_foldCase_:I

.field private m_ignoreCase_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Landroid/icu/text/UTF16$StringComparator;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/text/UTF16$StringComparator;->setCodePointCompare(Z)V

    iput-boolean p2, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-ltz p3, :cond_0

    const/4 v0, 0x1

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid fold case option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p3, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    iget v1, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Landroid/icu/text/Normalizer;->cmpEquivFold(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method private compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const v11, 0xdbff

    const v10, 0xd800

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v4

    const/4 v7, 0x0

    if-ge v4, v5, :cond_2

    const/4 v7, -0x1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_3

    :cond_1
    if-ne v3, v6, :cond_4

    return v7

    :cond_2
    if-le v4, v5, :cond_0

    const/4 v7, 0x1

    move v6, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget v8, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    const v9, 0x8000

    if-ne v8, v9, :cond_9

    const/4 v2, 0x1

    :goto_2
    if-lt v0, v10, :cond_8

    if-lt v1, v10, :cond_8

    if-eqz v2, :cond_8

    if-gt v0, v11, :cond_5

    add-int/lit8 v8, v3, 0x1

    if-eq v8, v4, :cond_5

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-static {v0}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_a

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_6
    :goto_3
    if-gt v1, v11, :cond_7

    add-int/lit8 v8, v3, 0x1

    if-eq v8, v5, :cond_7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    invoke-static {v1}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v3, :cond_b

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {p2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_b

    :cond_8
    :goto_4
    sub-int v8, v0, v1

    return v8

    :cond_9
    const/4 v2, 0x0

    goto :goto_2

    :cond_a
    add-int/lit16 v8, v0, -0x2800

    int-to-char v0, v8

    goto :goto_3

    :cond_b
    add-int/lit16 v8, v1, -0x2800

    int-to-char v1, v8

    goto :goto_4
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compareCaseInsensitive(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/icu/text/UTF16$StringComparator;->compareCaseSensitive(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCodePointCompare()Z
    .locals 2

    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIgnoreCase()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    return v0
.end method

.method public getIgnoreCaseOption()I
    .locals 1

    iget v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return v0
.end method

.method public setCodePointCompare(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x8000

    iput v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/UTF16$StringComparator;->m_codePointCompare_:I

    goto :goto_0
.end method

.method public setIgnoreCase(ZI)V
    .locals 2

    iput-boolean p1, p0, Landroid/icu/text/UTF16$StringComparator;->m_ignoreCase_:Z

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid fold case option"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p2, p0, Landroid/icu/text/UTF16$StringComparator;->m_foldCase_:I

    return-void
.end method
