.class final Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;
.super Ljava/lang/Object;
.source "UnicodeSetStringSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/UnicodeSetStringSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OffsetList"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private length:I

.field private list:[I

.field private start:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    return-void
.end method


# virtual methods
.method public addOffset(I)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int v0, v3, p1

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v3, v3

    sub-int/2addr v0, v3

    :cond_0
    sget-boolean v3, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->-assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v3, v3, v0

    if-nez v3, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v2, v1, v0

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    return-void
.end method

.method public addOffsetAndCount(II)V
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-lez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1
    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int v0, v1, p1

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput p2, v1, v0

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-ge p2, v1, :cond_3

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput p2, v1, v0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v0, v2

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v3, v2, v0

    move v1, v0

    goto :goto_0

    :cond_0
    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    return-void
.end method

.method public containsOffset(I)Z
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int v0, v2, p1

    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v2, v2

    sub-int/2addr v0, v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hasCountAtOffset(II)Z
    .locals 4

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int v0, v3, p1

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v3, v3

    sub-int/2addr v0, v3

    :cond_0
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v3, v0

    if-eqz v1, :cond_1

    if-gt v1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public popMinimum(Landroid/icu/util/OutputInt;)I
    .locals 6

    const/4 v5, 0x0

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v5, v3, v1

    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    sub-int v2, v1, v3

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    if-eqz p1, :cond_1

    iput v0, p1, Landroid/icu/util/OutputInt;->value:I

    :cond_1
    return v2

    :cond_2
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v3, v3

    iget v4, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    sub-int v2, v3, v4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v0, v3, v1

    if-nez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v5, v3, v1

    iget v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    if-eqz p1, :cond_4

    iput v0, p1, Landroid/icu/util/OutputInt;->value:I

    :cond_4
    add-int v3, v2, v1

    return v3
.end method

.method public setMaxLength(I)V
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v0, v0

    if-le p1, v0, :cond_0

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    :cond_0
    invoke-virtual {p0}, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->clear()V

    return-void
.end method

.method public shift(I)V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    add-int v0, v1, p1

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    array-length v1, v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aget v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->list:[I

    aput v2, v1, v0

    iget v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->length:I

    :cond_1
    iput v0, p0, Landroid/icu/impl/UnicodeSetStringSpan$OffsetList;->start:I

    return-void
.end method
