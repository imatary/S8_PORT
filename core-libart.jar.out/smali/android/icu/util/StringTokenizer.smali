.class public final Landroid/icu/util/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

.field private static final EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

.field private static final TOKEN_SIZE_:I = 0x64


# instance fields
.field private delims:[Z

.field private m_coalesceDelimiters_:Z

.field private m_delimiters_:Landroid/icu/text/UnicodeSet;

.field private m_length_:I

.field private m_nextOffset_:I

.field private m_returnDelimiters_:Z

.field private m_source_:Ljava/lang/String;

.field private m_tokenLimit_:[I

.field private m_tokenOffset_:I

.field private m_tokenSize_:I

.field private m_tokenStart_:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/icu/text/UnicodeSet;

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>([I)V

    sput-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    sget-object v0, Landroid/icu/text/UnicodeSet;->EMPTY:Landroid/icu/text/UnicodeSet;

    sput-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    return-void

    :array_0
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/icu/util/StringTokenizer;->DEFAULT_DELIMITERS_:Landroid/icu/text/UnicodeSet;

    invoke-direct {p0, p1, v0, v1, v1}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/icu/text/UnicodeSet;ZZ)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez p2, :cond_1

    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    :goto_0
    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez v0, :cond_2

    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput-object p2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_2
    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-nez p3, :cond_0

    invoke-direct {p0, v2}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p2}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    :cond_0
    iput-boolean p4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    iput-boolean p3, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-nez v0, :cond_2

    iput v2, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-nez p3, :cond_1

    invoke-direct {p0, v1}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_0
.end method

.method private getNextDelimiter(I)I
    .locals 3

    if-ltz p1, :cond_4

    move v1, p1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v2, :cond_3

    :goto_0
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v1, v2, :cond_4

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v1, v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_4
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    rsub-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private getNextNonDelimiter(I)I
    .locals 4

    const/4 v3, 0x0

    if-ltz p1, :cond_5

    move v1, p1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v2, :cond_3

    :goto_0
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v2, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v1, v2, :cond_5

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ge v1, v2, :cond_0

    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v2, v2, v0

    :goto_2
    if-nez v2, :cond_2

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    :cond_5
    iget v2, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    rsub-int/lit8 v2, v2, -0x1

    return v2
.end method


# virtual methods
.method checkDelimiters()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3}, Landroid/icu/text/UnicodeSet;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    new-array v3, v4, [Z

    iput-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v2

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Z

    iput-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v3, v1}, Landroid/icu/text/UnicodeSet;->charAt(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v3, v0, :cond_1

    iget-object v3, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iput-object v5, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    goto :goto_0
.end method

.method public countTokens()I
    .locals 11

    const/16 v10, 0x64

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_3

    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    if-ltz v9, :cond_0

    iget v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    sub-int/2addr v8, v9

    return v8

    :cond_0
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    if-nez v9, :cond_1

    new-array v9, v10, [I

    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    new-array v9, v10, [I

    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    :cond_1
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    array-length v9, v9

    if-ne v9, v5, :cond_2

    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget-object v7, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    array-length v3, v6

    add-int/lit8 v2, v3, 0x64

    new-array v9, v2, [I

    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    new-array v9, v2, [I

    iput-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    invoke-static {v6, v8, v9, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    invoke-static {v7, v8, v9, v8, v3}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_2
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    aput v10, v9, v5

    iget-boolean v9, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v9, v10}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v9, :cond_4

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v9, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_8

    iget-boolean v9, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v10}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v10

    aput v10, v9, v5

    :goto_1
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v9, v9, v5

    iput v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :goto_2
    add-int/lit8 v5, v5, 0x1

    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-gez v9, :cond_1

    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iput v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    aget v8, v9, v8

    iput v8, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_3
    return v5

    :cond_4
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v9, v9

    if-ge v0, v9, :cond_5

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v1, v9, v0

    goto :goto_0

    :cond_5
    move v1, v8

    goto :goto_0

    :cond_6
    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    add-int/lit8 v4, v9, 0x1

    iget v9, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ne v4, v9, :cond_7

    const/4 v4, -0x1

    :cond_7
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aput v4, v9, v5

    goto :goto_1

    :cond_8
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v10}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v10

    aput v10, v9, v5

    goto :goto_1

    :cond_9
    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v10, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v10}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v10

    aput v10, v9, v5

    iget-object v9, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    aget v9, v9, v5

    invoke-direct {p0, v9}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v9

    iput v9, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_2
.end method

.method public hasMoreElements()Z
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    return v0
.end method

.method public hasMoreTokens()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    if-gez v4, :cond_9

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    if-gez v4, :cond_0

    new-instance v4, Ljava/util/NoSuchElementException;

    const-string/jumbo v5, "No more tokens in String"

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    iget-boolean v4, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-eqz v4, :cond_7

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v4, v5}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v4, v0}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v1

    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    iget-boolean v4, p0, Landroid/icu/util/StringTokenizer;->m_coalesceDelimiters_:Z

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v3

    :cond_2
    :goto_1
    if-gez v3, :cond_6

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    return-object v2

    :cond_3
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->delims:[Z

    aget-boolean v1, v4, v0

    goto :goto_0

    :cond_4
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v5

    add-int v3, v4, v5

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_length_:I

    if-ne v3, v4, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_5
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v3

    goto :goto_1

    :cond_6
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v4}, Landroid/icu/util/StringTokenizer;->getNextDelimiter(I)I

    move-result v3

    if-gez v3, :cond_8

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput v3, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :goto_3
    return-object v2

    :cond_8
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v4

    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    goto :goto_3

    :cond_9
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    if-lt v4, v5, :cond_a

    new-instance v4, Ljava/util/NoSuchElementException;

    const-string/jumbo v5, "No more tokens in String"

    invoke-direct {v4, v5}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v4, v4, v5

    if-ltz v4, :cond_c

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v5, v5, v6

    iget-object v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenLimit_:[I

    iget v7, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    const/4 v4, -0x1

    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    iget v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    if-ge v4, v5, :cond_b

    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v4, v4, v5

    iput v4, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_b
    return-object v2

    :cond_c
    iget-object v4, p0, Landroid/icu/util/StringTokenizer;->m_source_:Ljava/lang/String;

    iget-object v5, p0, Landroid/icu/util/StringTokenizer;->m_tokenStart_:[I

    iget v6, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    iput-object p1, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->checkDelimiters()V

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenOffset_:I

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_tokenSize_:I

    iget-boolean v0, p0, Landroid/icu/util/StringTokenizer;->m_returnDelimiters_:Z

    if-nez v0, :cond_0

    iget v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    invoke-direct {p0, v0}, Landroid/icu/util/StringTokenizer;->getNextNonDelimiter(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTokenizer;->m_nextOffset_:I

    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/icu/util/StringTokenizer;->EMPTY_DELIMITER_:Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->addAll(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    :cond_0
    iget-object v0, p0, Landroid/icu/util/StringTokenizer;->m_delimiters_:Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0}, Landroid/icu/util/StringTokenizer;->nextToken(Landroid/icu/text/UnicodeSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
