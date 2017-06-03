.class final Landroid/icu/util/StringTrieBuilder$ListBranchNode;
.super Landroid/icu/util/StringTrieBuilder$BranchNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListBranchNode"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private equal:[Landroid/icu/util/StringTrieBuilder$Node;

.field private length:I

.field private units:[C

.field private values:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    const v0, 0x9ddddd4

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    new-array v0, p1, [Landroid/icu/util/StringTrieBuilder$Node;

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    new-array v0, p1, [C

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 3

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    aput p2, v0, v1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    return-void
.end method

.method public add(ILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 3

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    int-to-char v2, p1

    aput-char v2, v0, v1

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    aput-object p2, v0, v1

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    const/4 v2, 0x0

    aput v2, v0, v1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    mul-int/lit8 v0, v0, 0x25

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v4

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v2, v2, v0

    iget-object v3, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v3, v3, v0

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v2, v2, v0

    iget-object v3, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_3

    :cond_2
    return v4

    :cond_3
    iget-object v2, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v2, v2, v0

    iget-object v3, v1, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 4

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-nez v3, :cond_2

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    const/4 v2, 0x0

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    :cond_0
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    sub-int v3, p1, v2

    invoke-virtual {v0, v3}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    :cond_1
    const/4 v2, 0x1

    if-gtz v1, :cond_0

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    :cond_2
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    add-int/lit8 v3, v5, -0x1

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v1, v5, v3

    if-nez v1, :cond_2

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v5, v5, v3

    iget v8, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    invoke-virtual {v5, v8, v2, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    :cond_1
    if-gtz v3, :cond_0

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->length:I

    add-int/lit8 v3, v5, -0x1

    if-nez v1, :cond_3

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v5, v5, v3

    invoke-virtual {p1, v5, v6}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    :goto_1
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v5}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v5

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v5, v5, v3

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->values:[I

    aget v4, v5, v3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p1, v4, v0}, Landroid/icu/util/StringTrieBuilder;->writeValueAndFinal(IZ)I

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->units:[C

    aget-char v5, v5, v3

    invoke-virtual {p1, v5}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v5

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    goto :goto_1

    :cond_4
    sget-boolean v5, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v5

    if-lez v5, :cond_5

    move v5, v6

    :goto_4
    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    move v5, v7

    goto :goto_4

    :cond_6
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    iget-object v8, p0, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->equal:[Landroid/icu/util/StringTrieBuilder$Node;

    aget-object v8, v8, v3

    invoke-virtual {v8}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v8

    sub-int v4, v5, v8

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    return-void
.end method
