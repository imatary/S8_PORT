.class final Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DynamicBranchNode"
.end annotation


# instance fields
.field private chars:Ljava/lang/StringBuilder;

.field private equal:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/util/StringTrieBuilder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    return-void
.end method

.method private find(C)I
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    :goto_0
    if-ge v3, v1, :cond_2

    add-int v4, v3, v1

    div-int/lit8 v0, v4, 0x2

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ge p1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v0, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 9

    sub-int v1, p3, p2

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxBranchLinearSubNodeLength()I

    move-result v5

    if-le v1, v5, :cond_0

    div-int/lit8 v5, v1, 0x2

    add-int v3, p2, v5

    new-instance v5, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;

    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-direct {p0, p1, p2, v3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v7

    invoke-direct {p0, p1, v3, p3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/icu/util/StringTrieBuilder$SplitBranchNode;-><init>(CLandroid/icu/util/StringTrieBuilder$Node;Landroid/icu/util/StringTrieBuilder$Node;)V

    invoke-static {p1, v5}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    return-object v5

    :cond_0
    new-instance v2, Landroid/icu/util/StringTrieBuilder$ListBranchNode;

    invoke-direct {v2, v1}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;-><init>(I)V

    :cond_1
    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/icu/util/StringTrieBuilder$ValueNode;

    if-ne v5, v6, :cond_2

    check-cast v4, Landroid/icu/util/StringTrieBuilder$ValueNode;

    iget v5, v4, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v2, v0, v5}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(II)V

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-lt p2, p3, :cond_1

    invoke-static {p1, v2}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    return-object v5

    :cond_2
    invoke-virtual {v4, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/icu/util/StringTrieBuilder$ListBranchNode;->add(ILandroid/icu/util/StringTrieBuilder$Node;)V

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne p3, v3, :cond_1

    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Duplicate string."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0, p4}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    return-object p0

    :cond_1
    add-int/lit8 v2, p3, 0x1

    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v1

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v0, v3, :cond_2

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v3, p1, p2, v2, p4}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0

    :cond_2
    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-static {p1, p2, v2, p4}, Landroid/icu/util/StringTrieBuilder;->-wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public add(CLandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->find(C)I

    move-result v0

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->equal:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 5

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v3}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->register(Landroid/icu/util/StringTrieBuilder;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v2

    new-instance v0, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->chars:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-direct {v0, v3, v2}, Landroid/icu/util/StringTrieBuilder$BranchHeadNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object v1, v0

    iget-boolean v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v0, v3}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    :cond_0
    :goto_0
    invoke-static {p1, v1}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v1, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-static {p1, v0}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    goto :goto_0
.end method
