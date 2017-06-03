.class Landroid/icu/text/RBBIRuleBuilder;
.super Ljava/lang/Object;
.source "RBBIRuleBuilder.java"


# static fields
.field static final U_BRK_ASSIGN_ERROR:I = 0x10206

.field static final U_BRK_ERROR_LIMIT:I = 0x10210

.field static final U_BRK_ERROR_START:I = 0x10200

.field static final U_BRK_HEX_DIGITS_EXPECTED:I = 0x10202

.field static final U_BRK_INIT_ERROR:I = 0x1020b

.field static final U_BRK_INTERNAL_ERROR:I = 0x10201

.field static final U_BRK_MALFORMED_RULE_TAG:I = 0x1020e

.field static final U_BRK_MALFORMED_SET:I = 0x1020f

.field static final U_BRK_MISMATCHED_PAREN:I = 0x10208

.field static final U_BRK_NEW_LINE_IN_QUOTED_STRING:I = 0x10209

.field static final U_BRK_RULE_EMPTY_SET:I = 0x1020c

.field static final U_BRK_RULE_SYNTAX:I = 0x10204

.field static final U_BRK_SEMICOLON_EXPECTED:I = 0x10203

.field static final U_BRK_UNCLOSED_SET:I = 0x10205

.field static final U_BRK_UNDEFINED_VARIABLE:I = 0x1020a

.field static final U_BRK_UNRECOGNIZED_OPTION:I = 0x1020d

.field static final U_BRK_VARIABLE_REDFINITION:I = 0x10207

.field static final fForwardTree:I = 0x0

.field static final fReverseTree:I = 0x1

.field static final fSafeFwdTree:I = 0x2

.field static final fSafeRevTree:I = 0x3


# instance fields
.field fChainRules:Z

.field fDebugEnv:Ljava/lang/String;

.field fDefaultTree:I

.field fForwardTables:Landroid/icu/text/RBBITableBuilder;

.field fLBCMNoChain:Z

.field fLookAheadHardBreak:Z

.field fReverseTables:Landroid/icu/text/RBBITableBuilder;

.field fRuleStatusVals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fRules:Ljava/lang/String;

.field fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

.field fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

.field fScanner:Landroid/icu/text/RBBIRuleScanner;

.field fSetBuilder:Landroid/icu/text/RBBISetBuilder;

.field fStatusSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field fTreeRoots:[Landroid/icu/text/RBBINode;

.field fUSetNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/RBBINode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/text/RBBINode;

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fStatusSets:Ljava/util/Map;

    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    iput-object p1, p0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    new-instance v0, Landroid/icu/text/RBBIRuleScanner;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleScanner;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    new-instance v0, Landroid/icu/text/RBBISetBuilder;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBISetBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final align8(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x7

    and-int/lit8 v0, v0, -0x8

    return v0
.end method

.method static compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v0, Landroid/icu/text/RBBIRuleBuilder;

    invoke-direct {v0, p0}, Landroid/icu/text/RBBIRuleBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fScanner:Landroid/icu/text/RBBIRuleScanner;

    invoke-virtual {v1}, Landroid/icu/text/RBBIRuleScanner;->parse()V

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBISetBuilder;->build()V

    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    new-instance v1, Landroid/icu/text/RBBITableBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RBBITableBuilder;-><init>(Landroid/icu/text/RBBIRuleBuilder;I)V

    iput-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->build()V

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v2, "states"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    invoke-virtual {v1}, Landroid/icu/text/RBBITableBuilder;->printRuleStatusTable()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/icu/text/RBBIRuleBuilder;->flattenData(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method flattenData(Ljava/io/OutputStream;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/DataOutputStream;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleScanner;->stripRules(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->getTableSize()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v12

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    invoke-static/range {v19 .. v19}, Landroid/icu/text/RBBIRuleBuilder;->align8(I)I

    move-result v9

    add-int/lit8 v19, v4, 0x60

    add-int v19, v19, v8

    add-int v19, v19, v10

    add-int v19, v19, v11

    add-int v19, v19, v12

    add-int v19, v19, v16

    add-int v15, v19, v9

    const/4 v7, 0x0

    const v19, 0x42726b20

    const/high16 v20, 0x3010000

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Landroid/icu/impl/ICUBinary;->writeHeader(IIILjava/io/DataOutputStream;)I

    const/16 v19, 0x18

    move/from16 v0, v19

    new-array v5, v0, [I

    const v19, 0xb1a0

    const/16 v20, 0x0

    aput v19, v5, v20

    const/high16 v19, 0x3010000

    const/16 v20, 0x1

    aput v19, v5, v20

    const/16 v19, 0x2

    aput v15, v5, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBISetBuilder;->getNumCharCategories()I

    move-result v19

    const/16 v20, 0x3

    aput v19, v5, v20

    const/16 v19, 0x60

    const/16 v20, 0x4

    aput v19, v5, v20

    const/16 v19, 0x5

    aput v4, v5, v19

    const/16 v19, 0x4

    aget v19, v5, v19

    add-int v19, v19, v4

    const/16 v20, 0x6

    aput v19, v5, v20

    const/16 v19, 0x7

    aput v8, v5, v19

    const/16 v19, 0x6

    aget v19, v5, v19

    add-int v19, v19, v8

    const/16 v20, 0x8

    aput v19, v5, v20

    const/16 v19, 0x9

    aput v10, v5, v19

    const/16 v19, 0x8

    aget v19, v5, v19

    add-int v19, v19, v10

    const/16 v20, 0xa

    aput v19, v5, v20

    const/16 v19, 0xb

    aput v11, v5, v19

    const/16 v19, 0xa

    aget v19, v5, v19

    add-int v19, v19, v11

    const/16 v20, 0xc

    aput v19, v5, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBISetBuilder;->getTrieSize()I

    move-result v19

    const/16 v20, 0xd

    aput v19, v5, v20

    const/16 v19, 0xc

    aget v19, v5, v19

    const/16 v20, 0xd

    aget v20, v5, v20

    add-int v19, v19, v20

    const/16 v20, 0x10

    aput v19, v5, v20

    const/16 v19, 0x11

    aput v12, v5, v19

    const/16 v19, 0x10

    aget v19, v5, v19

    add-int v19, v19, v12

    const/16 v20, 0xe

    aput v19, v5, v20

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    const/16 v20, 0xf

    aput v19, v5, v20

    const/4 v6, 0x0

    :goto_0
    array-length v0, v5

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_0

    aget v19, v5, v6

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fForwardTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v14

    const/16 v19, 0x4

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_1

    const/16 v19, 0x1

    :goto_1
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    const/4 v6, 0x0

    :goto_2
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    aget-short v19, v14, v6

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    const/16 v19, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fReverseTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v14

    const/16 v19, 0x6

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    const/16 v19, 0x1

    :goto_3
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    const/4 v6, 0x0

    :goto_4
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    aget-short v19, v14, v6

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    const/16 v19, 0x0

    goto :goto_3

    :cond_4
    const/16 v19, 0x8

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_5

    const/16 v19, 0x1

    :goto_5
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeFwdTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v14

    const/4 v6, 0x0

    :goto_6
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_6

    aget-short v19, v14, v6

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    :cond_6
    const/16 v19, 0xa

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_7

    const/16 v19, 0x1

    :goto_7
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSafeRevTables:Landroid/icu/text/RBBITableBuilder;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/icu/text/RBBITableBuilder;->exportTable()[S

    move-result-object v14

    const/4 v6, 0x0

    :goto_8
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_8

    aget-short v19, v14, v6

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_7
    const/16 v19, 0x0

    goto :goto_7

    :cond_8
    const/16 v19, 0xc

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_9

    const/16 v19, 0x1

    :goto_9
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fSetBuilder:Landroid/icu/text/RBBISetBuilder;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBISetBuilder;->serializeTrie(Ljava/io/OutputStream;)V

    const/16 v19, 0xd

    aget v19, v5, v19

    add-int v7, v7, v19

    :goto_a
    rem-int/lit8 v19, v7, 0x8

    if-eqz v19, :cond_a

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_9
    const/16 v19, 0x0

    goto :goto_9

    :cond_a
    const/16 v19, 0x10

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_b

    const/16 v19, 0x1

    :goto_b
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRuleStatusVals:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    add-int/lit8 v7, v7, 0x4

    goto :goto_c

    :cond_b
    const/16 v19, 0x0

    goto :goto_b

    :cond_c
    :goto_d
    rem-int/lit8 v19, v7, 0x8

    if-eqz v19, :cond_d

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_d
    const/16 v19, 0xe

    aget v19, v5, v19

    move/from16 v0, v19

    if-ne v7, v0, :cond_e

    const/16 v19, 0x1

    :goto_e
    invoke-static/range {v19 .. v19}, Landroid/icu/impl/Assert;->assrt(Z)V

    invoke-virtual {v3, v13}, Ljava/io/DataOutputStream;->writeChars(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    add-int v7, v7, v19

    :goto_f
    rem-int/lit8 v19, v7, 0x8

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_e
    const/16 v19, 0x0

    goto :goto_e

    :cond_f
    return-void
.end method
