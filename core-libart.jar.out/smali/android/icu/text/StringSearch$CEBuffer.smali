.class Landroid/icu/text/StringSearch$CEBuffer;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CEBuffer"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final CEBUFFER_EXTRA:I = 0x20

.field static final MAX_TARGET_IGNORABLES_PER_PAT_JAMO_L:I = 0x8

.field static final MAX_TARGET_IGNORABLES_PER_PAT_OTHER:I = 0x3


# instance fields
.field bufSize_:I

.field buf_:[Landroid/icu/text/StringSearch$CEI;

.field firstIx_:I

.field limitIx_:I

.field strSearch_:Landroid/icu/text/StringSearch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/StringSearch$CEBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/StringSearch$CEBuffer;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/text/StringSearch;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {p1}, Landroid/icu/text/StringSearch;->-get0(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    move-result-object v3

    iget v3, v3, Landroid/icu/text/StringSearch$Pattern;->PCELength_:I

    add-int/lit8 v3, v3, 0x20

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    iget-object v3, p1, Landroid/icu/text/SearchIterator;->search_:Landroid/icu/text/SearchIterator$Search;

    iget-object v3, v3, Landroid/icu/text/SearchIterator$Search;->elementComparisonType_:Landroid/icu/text/SearchIterator$ElementComparisonType;

    sget-object v4, Landroid/icu/text/SearchIterator$ElementComparisonType;->STANDARD_ELEMENT_COMPARISON:Landroid/icu/text/SearchIterator$ElementComparisonType;

    if-eq v3, v4, :cond_1

    invoke-static {p1}, Landroid/icu/text/StringSearch;->-get0(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$Pattern;

    move-result-object v3

    iget-object v2, v3, Landroid/icu/text/StringSearch$Pattern;->text_:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/text/StringSearch$CEBuffer;->MIGHT_BE_JAMO_L(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    add-int/lit8 v3, v3, 0x3

    iput v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    goto :goto_1

    :cond_1
    iput v5, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    iput v5, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    invoke-static {p1}, Landroid/icu/text/StringSearch;->-wrap0(Landroid/icu/text/StringSearch;)Z

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    new-array v3, v3, [Landroid/icu/text/StringSearch$CEI;

    iput-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    return-void
.end method

.method static MIGHT_BE_JAMO_L(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1100

    if-lt p0, v2, :cond_1

    const/16 v2, 0x115e

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x3131

    if-lt p0, v2, :cond_2

    const/16 v2, 0x314e

    if-le p0, v2, :cond_0

    :cond_2
    const/16 v2, 0x3165

    if-lt p0, v2, :cond_3

    const/16 v2, 0x3186

    if-le p0, v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method get(I)Landroid/icu/text/StringSearch$CEI;
    .locals 6

    const/4 v4, 0x0

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v0, p1, v2

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    return-object v2

    :cond_0
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-eq p1, v2, :cond_2

    sget-boolean v2, Landroid/icu/text/StringSearch$CEBuffer;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    return-object v4

    :cond_2
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    :cond_3
    new-instance v1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {v1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    new-instance v3, Landroid/icu/text/StringSearch$CEI;

    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch$CEI;)V

    aput-object v3, v2, v0

    :cond_4
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {v3}, Landroid/icu/text/StringSearch;->-get1(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/text/StringSearch$CollationPCE;->nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/icu/text/StringSearch$CEI;->ce_:J

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    return-object v2
.end method

.method getPrevious(I)Landroid/icu/text/StringSearch$CEI;
    .locals 6

    const/4 v4, 0x0

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    rem-int v0, p1, v2

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    return-object v2

    :cond_0
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    if-eq p1, v2, :cond_2

    sget-boolean v2, Landroid/icu/text/StringSearch$CEBuffer;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_1
    return-object v4

    :cond_2
    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->limitIx_:I

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->bufSize_:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->firstIx_:I

    :cond_3
    new-instance v1, Landroid/icu/text/StringSearch$CollationPCE$Range;

    invoke-direct {v1}, Landroid/icu/text/StringSearch$CollationPCE$Range;-><init>()V

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    new-instance v3, Landroid/icu/text/StringSearch$CEI;

    invoke-direct {v3, v4}, Landroid/icu/text/StringSearch$CEI;-><init>(Landroid/icu/text/StringSearch$CEI;)V

    aput-object v3, v2, v0

    :cond_4
    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget-object v3, p0, Landroid/icu/text/StringSearch$CEBuffer;->strSearch_:Landroid/icu/text/StringSearch;

    invoke-static {v3}, Landroid/icu/text/StringSearch;->-get1(Landroid/icu/text/StringSearch;)Landroid/icu/text/StringSearch$CollationPCE;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/icu/text/StringSearch$CollationPCE;->previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J

    move-result-wide v4

    iput-wide v4, v2, Landroid/icu/text/StringSearch$CEI;->ce_:J

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->lowIndex_:I

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    iput v3, v2, Landroid/icu/text/StringSearch$CEI;->highIndex_:I

    iget-object v2, p0, Landroid/icu/text/StringSearch$CEBuffer;->buf_:[Landroid/icu/text/StringSearch$CEI;

    aget-object v2, v2, v0

    return-object v2
.end method
