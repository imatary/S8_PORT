.class final Landroid/icu/util/StringTrieBuilder$SplitBranchNode;
.super Landroid/icu/util/StringTrieBuilder$BranchNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SplitBranchNode"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

.field private lessThan:Landroid/icu/util/StringTrieBuilder$Node;

.field private unit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;-><init>()V

    const v0, 0xc555549

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p2}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p3}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->hash:I

    iput-char p1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    iput-object p2, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iput-object p3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$BranchNode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    iget-char v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    iget-char v4, v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v4, v0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    if-ne v3, v4, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Landroid/icu/util/StringTrieBuilder$BranchNode;->hashCode()I

    move-result v0

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 2

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    :cond_0
    return p1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$BranchNode;->firstEdgeNumber:I

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v3}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v3

    invoke-virtual {v1, v2, v3, p1}, Landroid/icu/util/StringTrieBuilder$Node;->writeUnlessInsideRightEdge(IILandroid/icu/util/StringTrieBuilder;)V

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->greaterOrEqual:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    sget-boolean v1, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->-assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v1}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->lessThan:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0}, Landroid/icu/util/StringTrieBuilder$Node;->getOffset()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->writeDeltaTo(I)I

    iget-char v0, p0, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;->unit:C

    invoke-virtual {p1, v0}, Landroid/icu/util/StringTrieBuilder;->write(I)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    return-void
.end method
