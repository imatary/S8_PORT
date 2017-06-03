.class Landroid/icu/text/RBBITableBuilder;
.super Ljava/lang/Object;
.source "RBBITableBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;
    }
.end annotation


# instance fields
.field private fDStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private fRB:Landroid/icu/text/RBBIRuleBuilder;

.field private fRootIx:I


# direct methods
.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    iput-object p1, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bofFixup()V
    .locals 9

    const/4 v8, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v7, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v7

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v0, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v4, v0, Landroid/icu/text/RBBINode;->fType:I

    if-ne v4, v8, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget v4, v0, Landroid/icu/text/RBBINode;->fVal:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    :goto_1
    invoke-static {v5}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v4, v4, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v4, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBINode;

    iget v4, v2, Landroid/icu/text/RBBINode;->fType:I

    if-ne v4, v8, :cond_0

    iget v4, v2, Landroid/icu/text/RBBINode;->fVal:I

    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v4, v5, :cond_0

    iget-object v4, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v5, v2, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_1
    move v4, v6

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    return-void
.end method

.method build()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x1

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/icu/text/RBBINode;->flattenVariables()Landroid/icu/text/RBBINode;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "ftree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Parse tree after flattening variable references."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_1
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v1, Landroid/icu/text/RBBINode;

    invoke-direct {v1, v8}, Landroid/icu/text/RBBINode;-><init>(I)V

    new-instance v0, Landroid/icu/text/RBBINode;

    const/4 v3, 0x3

    invoke-direct {v0, v3}, Landroid/icu/text/RBBINode;-><init>(I)V

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    iput-object v3, v1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    const/4 v3, 0x2

    iput v3, v0, Landroid/icu/text/RBBINode;->fVal:I

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v1, v3, v4

    :cond_2
    new-instance v2, Landroid/icu/text/RBBINode;

    invoke-direct {v2, v8}, Landroid/icu/text/RBBINode;-><init>(I)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    iput-object v3, v2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    iput-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    new-instance v3, Landroid/icu/text/RBBINode;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Landroid/icu/text/RBBINode;-><init>(I)V

    iput-object v3, v2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v3, v2, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iput-object v2, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aput-object v2, v3, v4

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/icu/text/RBBINode;->flattenSets()V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "stree"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "Parse tree after flattening Unicode Set references."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {v3, v7}, Landroid/icu/text/RBBINode;->printTree(Z)V

    :cond_3
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "pos"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    :cond_4
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v3, v3, v4

    invoke-virtual {p0, v3}, Landroid/icu/text/RBBITableBuilder;->calcChainedFollowPos(Landroid/icu/text/RBBINode;)V

    :cond_5
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->bofFixup()V

    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->buildStateTable()V

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagAcceptingStates()V

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagLookAheadStates()V

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->flagTaggedStates()V

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->mergeRuleStatusVals()V

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v4, "states"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->printStates()V

    :cond_7
    return-void
.end method

.method buildStateTable()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v17

    add-int/lit8 v9, v17, -0x1

    new-instance v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v6, v9}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v7, v9}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    iget-object v0, v7, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    iget-boolean v0, v13, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object v2, v13

    :cond_1
    if-nez v2, :cond_3

    return-void

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fMarked:Z

    const/4 v5, 0x1

    :goto_1
    if-gt v5, v9, :cond_0

    const/4 v3, 0x0

    iget-object v0, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/text/RBBINode;

    iget v0, v11, Landroid/icu/text/RBBINode;->fType:I

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    iget v0, v11, Landroid/icu/text/RBBINode;->fVal:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_4

    if-nez v3, :cond_5

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_5
    iget-object v0, v11, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_6
    const/16 v16, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v17

    if-lez v17, :cond_a

    const/16 v17, 0x1

    :goto_3
    invoke-static/range {v17 .. v17}, Landroid/icu/impl/Assert;->assrt(Z)V

    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    iget-object v0, v14, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    iget-object v3, v14, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    move/from16 v16, v8

    const/4 v4, 0x1

    :cond_7
    if-nez v4, :cond_8

    new-instance v10, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    invoke-direct {v10, v9}, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;-><init>(I)V

    iput-object v3, v10, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v16, v17, -0x1

    :cond_8
    iget-object v0, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    move-object/from16 v17, v0

    aput v16, v17, v5

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    const/16 v17, 0x0

    goto :goto_3

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method calcChainedFollowPos(Landroid/icu/text/RBBINode;)V
    .locals 16

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v14, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v14}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    move-object/from16 v13, p1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v14, v14, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v14}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v13, v14, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    :cond_0
    if-eqz v13, :cond_6

    const/4 v14, 0x1

    :goto_0
    invoke-static {v14}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget-object v8, v13, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/icu/text/RBBINode;

    const/4 v6, 0x0

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    iget-object v14, v11, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object v6, v11

    :cond_3
    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v14, v14, Landroid/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v14, v14, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    iget v15, v6, Landroid/icu/text/RBBINode;->fVal:I

    invoke-virtual {v14, v15}, Landroid/icu/text/RBBISetBuilder;->getFirstChar(I)I

    move-result v1

    const/4 v14, -0x1

    if-eq v1, v14, :cond_4

    const/16 v14, 0x1008

    invoke-static {v1, v14}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v2

    const/16 v14, 0x9

    if-eq v2, v14, :cond_1

    :cond_4
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/RBBINode;

    iget v14, v9, Landroid/icu/text/RBBINode;->fType:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_5

    iget v14, v6, Landroid/icu/text/RBBINode;->fVal:I

    iget v15, v9, Landroid/icu/text/RBBINode;->fVal:I

    if-ne v14, v15, :cond_5

    iget-object v14, v6, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v15, v9, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-interface {v14, v15}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    goto :goto_0

    :cond_7
    return-void
.end method

.method calcFirstPos(Landroid/icu/text/RBBINode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcFirstPos(Landroid/icu/text/RBBINode;)V

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_7
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method calcFollowPos(Landroid/icu/text/RBBINode;)V
    .locals 4

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    iget-object v2, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcFollowPos(Landroid/icu/text/RBBINode;)V

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v2, v2, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    iget-object v2, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v3, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v3, v3, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    iget-object v2, v0, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    iget-object v3, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-void
.end method

.method calcLastPos(Landroid/icu/text/RBBINode;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->calcLastPos(Landroid/icu/text/RBBINode;)V

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_7

    :cond_6
    :goto_1
    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v1, v1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_7
    iget v0, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    goto :goto_1
.end method

.method calcNullable(Landroid/icu/text/RBBINode;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    if-eqz v2, :cond_1

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    :cond_1
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    return-void

    :cond_2
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    return-void

    :cond_4
    iget-object v2, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    iget-object v2, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v2}, Landroid/icu/text/RBBITableBuilder;->calcNullable(Landroid/icu/text/RBBINode;)V

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_6

    iget-object v1, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean v1, v1, Landroid/icu/text/RBBINode;->fNullable:Z

    if-nez v1, :cond_5

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    :cond_5
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    :goto_0
    return-void

    :cond_6
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-boolean v0, v0, Landroid/icu/text/RBBINode;->fNullable:Z

    :goto_1
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    iget v2, p1, Landroid/icu/text/RBBINode;->fType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    :cond_9
    iput-boolean v0, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_0

    :cond_a
    iput-boolean v1, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    goto :goto_0
.end method

.method exportTable()[S
    .locals 12

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v11, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v10, v10, v11

    if-nez v10, :cond_0

    const/4 v10, 0x0

    new-array v10, v10, [S

    return-object v10

    :cond_0
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v10

    const/16 v11, 0x7fff

    if-ge v10, v11, :cond_4

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/16 v11, 0x7fff

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_0
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v10

    add-int/lit8 v5, v10, 0x4

    invoke-virtual {p0}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v10

    div-int/lit8 v9, v10, 0x2

    new-array v8, v9, [S

    ushr-int/lit8 v10, v3, 0x10

    int-to-short v10, v10

    const/4 v11, 0x0

    aput-short v10, v8, v11

    const v10, 0xffff

    and-int/2addr v10, v3

    int-to-short v10, v10

    const/4 v11, 0x1

    aput-short v10, v8, v11

    ushr-int/lit8 v10, v5, 0x10

    int-to-short v10, v10

    const/4 v11, 0x2

    aput-short v10, v8, v11

    const v10, 0xffff

    and-int/2addr v10, v5

    int-to-short v10, v10

    const/4 v11, 0x3

    aput-short v10, v8, v11

    const/4 v1, 0x0

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-boolean v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    if-eqz v10, :cond_1

    const/4 v1, 0x1

    :cond_1
    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->sawBOF()Z

    move-result v10

    if-eqz v10, :cond_2

    or-int/lit8 v1, v1, 0x2

    :cond_2
    ushr-int/lit8 v10, v1, 0x10

    int-to-short v10, v10

    const/4 v11, 0x4

    aput-short v10, v8, v11

    const v10, 0xffff

    and-int/2addr v10, v1

    int-to-short v10, v10

    const/4 v11, 0x5

    aput-short v10, v8, v11

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v10, v10, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v10}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_8

    iget-object v10, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    mul-int v10, v7, v5

    add-int/lit8 v4, v10, 0x8

    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/16 v11, -0x8000

    if-ge v11, v10, :cond_5

    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    const/16 v11, 0x7fff

    if-gt v10, v11, :cond_5

    const/4 v10, 0x1

    :goto_2
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    const/16 v11, -0x8000

    if-ge v11, v10, :cond_6

    iget v10, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    const/16 v11, 0x7fff

    if-gt v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_3
    invoke-static {v10}, Landroid/icu/impl/Assert;->assrt(Z)V

    add-int/lit8 v10, v4, 0x0

    iget v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    int-to-short v11, v11

    aput-short v11, v8, v10

    add-int/lit8 v10, v4, 0x1

    iget v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    int-to-short v11, v11

    aput-short v11, v8, v10

    add-int/lit8 v10, v4, 0x2

    iget v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    int-to-short v11, v11

    aput-short v11, v8, v10

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_7

    add-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v0

    iget-object v11, v6, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v11, v11, v0

    int-to-short v11, v11

    aput-short v11, v8, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    return-object v8
.end method

.method flagAcceptingStates()V
    .locals 8

    const/4 v7, -0x1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v5, v5, v6

    const/4 v6, 0x6

    invoke-virtual {v5, v1, v6}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RBBINode;

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-nez v5, :cond_0

    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-nez v5, :cond_0

    iput v7, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    :cond_0
    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    if-ne v5, v7, :cond_1

    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    if-eqz v5, :cond_1

    iget v5, v0, Landroid/icu/text/RBBINode;->fVal:I

    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    :cond_1
    iget-boolean v5, v0, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    if-eqz v5, :cond_2

    iget v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method flagLookAheadStates()V
    .locals 7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v5, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v5, v2, v6}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBINode;

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    iget-object v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v1, Landroid/icu/text/RBBINode;->fVal:I

    iput v5, v4, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method flagTaggedStates()V
    .locals 7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v6, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v5, v5, v6

    const/4 v6, 0x5

    invoke-virtual {v5, v4, v6}, Landroid/icu/text/RBBINode;->findNodes(Ljava/util/List;I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/RBBINode;

    const/4 v1, 0x0

    :goto_1
    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    iget-object v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fPositions:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    iget v6, v3, Landroid/icu/text/RBBINode;->fVal:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getTableSize()I
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBITableBuilder;->fRootIx:I

    aget-object v4, v4, v5

    if-nez v4, :cond_0

    return v6

    :cond_0
    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    iget-object v4, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v4, v4, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v4}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v0

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v2, v4, 0x8

    mul-int v4, v1, v2

    add-int/lit8 v3, v4, 0x10

    :goto_0
    rem-int/lit8 v4, v3, 0x8

    if-lez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method mergeRuleStatusVals()V
    .locals 10

    const/4 v9, 0x0

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v4, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    iget-object v6, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagVals:Ljava/util/SortedSet;

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method printPosSets(Landroid/icu/text/RBBINode;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/icu/text/RBBINode;->printNode(Landroid/icu/text/RBBINode;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "         Nullable:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Landroid/icu/text/RBBINode;->fNullable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "         firstpos:  "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFirstPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "         lastpos:   "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLastPosSet:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "         followpos: "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fFollowPos:Ljava/util/Set;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printSet(Ljava/util/Collection;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    iget-object v0, p1, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBITableBuilder;->printPosSets(Landroid/icu/text/RBBINode;)V

    return-void
.end method

.method printRuleStatusTable()V
    .locals 8

    const/4 v7, 0x7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v5, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v5, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "index |  tags \n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "-------------------\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    move v3, v1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v3

    add-int/lit8 v1, v5, 0x1

    invoke-static {v3, v7}, Landroid/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v0, v3, 0x1

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4, v7}, Landroid/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method printSet(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;)V"
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

    iget v2, v0, Landroid/icu/text/RBBINode;->fSerialNum:I

    const/16 v3, 0x8

    invoke-static {v2, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method printStates()V
    .locals 6

    const/4 v5, 0x3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "state |           i n p u t     s y m b o l s \n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "      | Acc  LA    Tag"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-static {v0, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "      |---------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v3

    if-ge v0, v3, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "---"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fDStates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;

    const/4 v3, 0x5

    invoke-static {v1, v3}, Landroid/icu/text/RBBINode;->printInt(II)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, " | "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fAccepting:I

    invoke-static {v3, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fLookAhead:I

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    iget v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fTagsIdx:I

    const/4 v4, 0x6

    invoke-static {v3, v4}, Landroid/icu/text/RBBINode;->printInt(II)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Landroid/icu/text/RBBITableBuilder;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v3}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, v2, Landroid/icu/text/RBBITableBuilder$RBBIStateDescriptor;->fDtran:[I

    aget v3, v3, v0

    invoke-static {v3, v5}, Landroid/icu/text/RBBINode;->printInt(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method
