.class Landroid/icu/text/RBBISetBuilder;
.super Ljava/lang/Object;
.source "RBBISetBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;,
        Landroid/icu/text/RBBISetBuilder$RangeDescriptor;
    }
.end annotation


# instance fields
.field dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

.field fGroupCount:I

.field fRB:Landroid/icu/text/RBBIRuleBuilder;

.field fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

.field fSawBOF:Z

.field fTrie:Landroid/icu/impl/IntTrieBuilder;

.field fTrieSize:I


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;-><init>(Landroid/icu/text/RBBISetBuilder;)V

    iput-object v0, p0, Landroid/icu/text/RBBISetBuilder;->dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    iput-object p1, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    return-void
.end method


# virtual methods
.method addValToSet(Landroid/icu/text/RBBINode;I)V
    .locals 3

    new-instance v0, Landroid/icu/text/RBBINode;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    iput p2, v0, Landroid/icu/text/RBBINode;->fVal:I

    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-nez v2, :cond_0

    iput-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p1, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/icu/text/RBBINode;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/icu/text/RBBINode;-><init>(I)V

    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v2, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v1, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iget-object v2, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v1, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iput-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p1, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_0
.end method

.method addValToSets(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0, p2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method build()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v3, "usets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    :cond_0
    new-instance v2, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    invoke-direct {v2}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    const/4 v3, 0x0

    iput v3, v2, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    const v3, 0x10ffff

    iput v3, v2, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/icu/text/RBBINode;

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v10}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v12

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-ge v14, v12, :cond_1

    invoke-virtual {v10, v14}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v11

    invoke-virtual {v10, v14}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v13

    :goto_1
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ge v2, v11, :cond_2

    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_1

    :cond_2
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    if-ge v2, v11, :cond_3

    invoke-virtual {v15, v11}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    goto :goto_0

    :cond_3
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-le v2, v13, :cond_4

    add-int/lit8 v2, v13, 0x1

    invoke-virtual {v15, v2}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->split(I)V

    :cond_4
    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    if-ne v13, v2, :cond_6

    add-int/lit8 v14, v14, 0x1

    :cond_6
    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v3, "range"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printRanges()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_2
    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    move-object/from16 v16, v0

    :goto_3
    move-object/from16 v0, v16

    if-eq v0, v15, :cond_9

    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, v16

    iget v2, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iput v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    :cond_9
    iget v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {v15}, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->setDictionaryFlag()V

    iget-object v2, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/icu/text/RBBISetBuilder;->addValToSets(Ljava/util/List;I)V

    :cond_a
    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_2

    :cond_b
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    move-object/from16 v16, v0

    goto :goto_3

    :cond_c
    const-string/jumbo v9, "eof"

    const-string/jumbo v8, "bof"

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_d
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/icu/text/RBBINode;

    move-object/from16 v0, v17

    iget-object v10, v0, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    invoke-virtual {v10, v9}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    :cond_e
    invoke-virtual {v10, v8}, Landroid/icu/text/UnicodeSet;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RBBISetBuilder;->addValToSet(Landroid/icu/text/RBBINode;I)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v3, "rgroup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printRangeGroups()V

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v3, "esets"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBISetBuilder;->printSets()V

    :cond_11
    new-instance v2, Landroid/icu/impl/IntTrieBuilder;

    const/4 v3, 0x0

    const v4, 0x186a0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/IntTrieBuilder;-><init>([IIIIZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_5
    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    iget v3, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    iget v4, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/icu/impl/IntTrieBuilder;->setRange(IIIZ)Z

    iget-object v15, v15, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_5

    :cond_12
    return-void
.end method

.method getFirstChar(I)I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v2, p1, :cond_1

    iget v0, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    :cond_0
    return v0

    :cond_1
    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0
.end method

.method getNumCharCategories()I
    .locals 1

    iget v0, p0, Landroid/icu/text/RBBISetBuilder;->fGroupCount:I

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getTrieSize()I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    iget-object v3, p0, Landroid/icu/text/RBBISetBuilder;->dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/icu/impl/IntTrieBuilder;->serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/icu/impl/Assert;->assrt(Z)V

    goto :goto_0
.end method

.method printRangeGroups()V
    .locals 14

    const/4 v13, 0x0

    const/4 v3, 0x0

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "\nRanges grouped by Unicode Set Membership...\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v4, :cond_7

    iget v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    const v11, 0xbfff

    and-int v0, v10, v11

    if-le v0, v3, :cond_6

    move v3, v0

    const/16 v10, 0xa

    if-ge v0, v10, :cond_0

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_0
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    and-int/lit16 v10, v10, 0x4000

    if-eqz v10, :cond_1

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, " <DICT> "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    iget-object v10, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/RBBINode;

    const-string/jumbo v5, "anon"

    iget-object v6, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v6, :cond_2

    iget-object v9, v6, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v9, :cond_2

    iget v10, v9, Landroid/icu/text/RBBINode;->fType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    iget-object v5, v9, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    :cond_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move-object v7, v4

    move v2, v1

    :goto_2
    if-eqz v7, :cond_5

    iget v10, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    iget v11, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    if-ne v10, v11, :cond_8

    add-int/lit8 v1, v2, 0x1

    rem-int/lit8 v10, v2, 0x5

    if-nez v10, :cond_4

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "\n    "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    iget v10, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    const/4 v11, -0x1

    invoke-static {v10, v11}, Landroid/icu/text/RBBINode;->printHex(II)V

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "-"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget v10, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-static {v10, v13}, Landroid/icu/text/RBBINode;->printHex(II)V

    :goto_3
    iget-object v7, v7, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    move v2, v1

    goto :goto_2

    :cond_5
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_6
    iget-object v4, v4, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto/16 :goto_0

    :cond_7
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_8
    move v1, v2

    goto :goto_3
.end method

.method printRanges()V
    .locals 9

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "\n\n Nonoverlapping Ranges ...\n"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->fRangeList:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    :goto_0
    if-eqz v1, :cond_2

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fStartChar:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fEndChar:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v6, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_1

    iget-object v6, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fIncludesSets:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBINode;

    const-string/jumbo v2, "anon"

    iget-object v3, v4, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v5, :cond_0

    iget v6, v5, Landroid/icu/text/RBBINode;->fType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    iget-object v2, v5, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, v1, Landroid/icu/text/RBBISetBuilder$RangeDescriptor;->fNext:Landroid/icu/text/RBBISetBuilder$RangeDescriptor;

    goto :goto_0

    :cond_2
    return-void
.end method

.method printSets()V
    .locals 9

    const/4 v8, 0x2

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\n\nUnicode Sets List\n------------------\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/RBBISetBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    invoke-static {v8, v0}, Landroid/icu/text/RBBINode;->printInt(II)V

    const-string/jumbo v1, "anonymous"

    iget-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/icu/text/RBBINode;->fType:I

    if-ne v5, v8, :cond_0

    iget-object v1, v4, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "   "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v6, v3, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method sawBOF()Z
    .locals 1

    iget-boolean v0, p0, Landroid/icu/text/RBBISetBuilder;->fSawBOF:Z

    return v0
.end method

.method serializeTrie(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/icu/text/RBBISetBuilder;->fTrie:Landroid/icu/impl/IntTrieBuilder;

    iget-object v1, p0, Landroid/icu/text/RBBISetBuilder;->dm:Landroid/icu/text/RBBISetBuilder$RBBIDataManipulate;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2, v1}, Landroid/icu/impl/IntTrieBuilder;->serialize(Ljava/io/OutputStream;ZLandroid/icu/impl/TrieBuilder$DataManipulate;)I

    return-void
.end method
