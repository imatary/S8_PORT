.class final Landroid/icu/util/StringTrieBuilder$LinearMatchNode;
.super Landroid/icu/util/StringTrieBuilder$ValueNode;
.source "StringTrieBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/StringTrieBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinearMatchNode"
.end annotation


# instance fields
.field private hash:I

.field private length:I

.field private next:Landroid/icu/util/StringTrieBuilder$Node;

.field private stringOffset:I

.field private strings:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$ValueNode;-><init>()V

    iput-object p1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iput p3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    iput-object p4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-void
.end method

.method private setHashCode()V
    .locals 4

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    const v3, 0x766665f

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x25

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v3}, Landroid/icu/util/StringTrieBuilder$Node;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    iget-boolean v2, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v2, v2, 0x25

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    :cond_0
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int v1, v2, v3

    :goto_0
    if-ge v0, v1, :cond_1

    iget v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    mul-int/lit8 v2, v2, 0x25

    iget-object v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 17

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v14, :cond_0

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Duplicate string."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    return-object p0

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int v6, v14, v15

    move-object/from16 v0, p0

    iget v5, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    :goto_0
    if-ge v5, v6, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    sub-int v9, v5, v14

    new-instance v11, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    sub-int/2addr v15, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v11, v14, v5, v15, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    move-object/from16 v0, p0

    iput v9, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-object p0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v14, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v12, v7, :cond_7

    new-instance v4, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;

    invoke-direct {v4}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;-><init>()V

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    if-ne v5, v14, :cond_5

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {v4, v14}, Landroid/icu/util/StringTrieBuilder$ValueNode;->setValue(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-lez v14, :cond_4

    move-object/from16 v13, p0

    :goto_1
    move-object v10, v4

    :goto_2
    add-int/lit8 v14, p3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-static {v0, v1, v14, v2}, Landroid/icu/util/StringTrieBuilder;->-wrap1(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$ValueNode;

    move-result-object v8

    invoke-virtual {v4, v12, v13}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    invoke-virtual {v4, v7, v8}, Landroid/icu/util/StringTrieBuilder$DynamicBranchNode;->add(CLandroid/icu/util/StringTrieBuilder$Node;)V

    return-object v10

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    goto :goto_1

    :cond_5
    add-int/lit8 v14, v6, -0x1

    if-ne v5, v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object/from16 v10, p0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    sub-int v9, v5, v14

    add-int/lit8 v5, v5, 0x1

    new-instance v13, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v15, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/lit8 v16, v9, 0x1

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v14, v5, v15, v0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    move-object/from16 v0, p0

    iput v9, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object/from16 v10, p0

    goto :goto_2

    :cond_7
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/icu/util/StringTrieBuilder$Node;->add(Landroid/icu/util/StringTrieBuilder;Ljava/lang/CharSequence;II)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_0

    return v7

    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/StringTrieBuilder$ValueNode;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v6

    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    iget v5, v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    iget-object v5, v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    if-eq v4, v5, :cond_3

    :cond_2
    return v6

    :cond_3
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, v3, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int v2, v4, v5

    :goto_0
    if-ge v0, v2, :cond_5

    iget-object v4, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_4

    return v6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v7
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->hash:I

    return v0
.end method

.method public markRightEdgesFirst(I)I
    .locals 1

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->markRightEdgesFirst(I)I

    move-result p1

    iput p1, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    :cond_0
    return p1
.end method

.method public register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v5, p1}, Landroid/icu/util/StringTrieBuilder$Node;->register(Landroid/icu/util/StringTrieBuilder;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMaxLinearMatchLength()I

    move-result v1

    :goto_0
    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    if-le v5, v1, :cond_0

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v5, v6

    sub-int v2, v5, v1

    iget v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    sub-int/2addr v5, v1

    iput v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    new-instance v4, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->strings:Ljava/lang/CharSequence;

    iget-object v6, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-direct {v4, v5, v2, v1, v6}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;-><init>(Ljava/lang/CharSequence;IILandroid/icu/util/StringTrieBuilder$Node;)V

    invoke-direct {v4}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    invoke-static {p1, v4}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    goto :goto_0

    :cond_0
    iget-boolean v5, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->matchNodesCanHaveValues()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    move-object v3, p0

    :goto_1
    invoke-static {p1, v3}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    return-object v5

    :cond_2
    iget v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    iput v7, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    iput-boolean v7, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->setHashCode()V

    new-instance v3, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;

    invoke-static {p1, p0}, Landroid/icu/util/StringTrieBuilder;->-wrap0(Landroid/icu/util/StringTrieBuilder;Landroid/icu/util/StringTrieBuilder$Node;)Landroid/icu/util/StringTrieBuilder$Node;

    move-result-object v5

    invoke-direct {v3, v0, v5}, Landroid/icu/util/StringTrieBuilder$IntermediateValueNode;-><init>(ILandroid/icu/util/StringTrieBuilder$Node;)V

    goto :goto_1
.end method

.method public write(Landroid/icu/util/StringTrieBuilder;)V
    .locals 4

    iget-object v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->next:Landroid/icu/util/StringTrieBuilder$Node;

    invoke-virtual {v0, p1}, Landroid/icu/util/StringTrieBuilder$Node;->write(Landroid/icu/util/StringTrieBuilder;)V

    iget v0, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->stringOffset:I

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    invoke-virtual {p1, v0, v1}, Landroid/icu/util/StringTrieBuilder;->write(II)I

    iget-boolean v0, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->hasValue:Z

    iget v1, p0, Landroid/icu/util/StringTrieBuilder$ValueNode;->value:I

    invoke-virtual {p1}, Landroid/icu/util/StringTrieBuilder;->getMinLinearMatch()I

    move-result v2

    iget v3, p0, Landroid/icu/util/StringTrieBuilder$LinearMatchNode;->length:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/icu/util/StringTrieBuilder;->writeValueAndType(ZII)I

    move-result v0

    iput v0, p0, Landroid/icu/util/StringTrieBuilder$Node;->offset:I

    return-void
.end method
