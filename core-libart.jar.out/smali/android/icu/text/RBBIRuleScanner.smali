.class Landroid/icu/text/RBBIRuleScanner;
.super Ljava/lang/Object;
.source "RBBIRuleScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;,
        Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;
    }
.end annotation


# static fields
.field static final chLS:I = 0x2028

.field static final chNEL:I = 0x85

.field private static gRuleSet_digit_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_name_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_name_start_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_rule_char_pattern:Ljava/lang/String; = null

.field private static gRuleSet_white_space_pattern:Ljava/lang/String; = null

.field private static kAny:Ljava/lang/String; = null

.field private static final kStackSize:I = 0x64


# instance fields
.field fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

.field fCharNum:I

.field fLastChar:I

.field fLineNum:I

.field fLookAheadRule:Z

.field fNextIndex:I

.field fNodeStack:[Landroid/icu/text/RBBINode;

.field fNodeStackPtr:I

.field fOptionStart:I

.field fQuoteMode:Z

.field fRB:Landroid/icu/text/RBBIRuleBuilder;

.field fReverseRule:Z

.field fRuleNum:I

.field fRuleSets:[Landroid/icu/text/UnicodeSet;

.field fScanIndex:I

.field fSetTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;",
            ">;"
        }
    .end annotation
.end field

.field fStack:[S

.field fStackPtr:I

.field fSymbolTable:Landroid/icu/text/RBBISymbolTable;

.field fVarName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "[^[\\p{Z}\\u0020-\\u007f]-[\\p{L}]-[\\p{N}]]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    const-string/jumbo v0, "[_\\p{L}\\p{N}]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    const-string/jumbo v0, "[0-9]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    const-string/jumbo v0, "[_\\p{L}]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    const-string/jumbo v0, "[\\p{Pattern_White_Space}]"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    const-string/jumbo v0, "any"

    sput-object v0, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/icu/text/RBBIRuleBuilder;)V
    .locals 4

    const/16 v1, 0x64

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-direct {v0}, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    new-array v0, v1, [S

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    new-array v0, v1, [Landroid/icu/text/RBBINode;

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    const/16 v0, 0xa

    new-array v0, v0, [Landroid/icu/text/UnicodeSet;

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    iput-object p1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_rule_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_white_space_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_name_start_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    new-instance v1, Landroid/icu/text/UnicodeSet;

    sget-object v2, Landroid/icu/text/RBBIRuleScanner;->gRuleSet_digit_char_pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v0, Landroid/icu/text/RBBISymbolTable;

    iget-object v1, p1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/icu/text/RBBISymbolTable;-><init>(Landroid/icu/text/RBBIRuleScanner;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    return-void
.end method

.method static stripRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x23

    if-ne v0, v5, :cond_1

    :goto_1
    move v2, v1

    if-ge v2, v3, :cond_0

    const/16 v5, 0xd

    if-eq v0, v5, :cond_0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_0

    const/16 v5, 0x85

    if-eq v0, v5, :cond_0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isISOControl(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method doParseActions(I)Z
    .locals 24

    const/4 v7, 0x0

    const/4 v14, 0x1

    packed-switch p1, :pswitch_data_0

    const v21, 0x10201

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    const/4 v14, 0x0

    :cond_0
    :goto_0
    :pswitch_0
    return v14

    :pswitch_1
    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    goto :goto_0

    :pswitch_2
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v8, v21, v22

    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v10

    iput-object v8, v10, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v10, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_0

    :pswitch_3
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v8, v21, v22

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v4

    iput-object v8, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v4, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto :goto_0

    :pswitch_4
    const/16 v21, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    goto :goto_0

    :pswitch_5
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v7, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    const/16 v21, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    goto/16 :goto_0

    :pswitch_7
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x2

    aget-object v17, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget-object v20, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v3, v21, v22

    move-object/from16 v0, v17

    iget v0, v0, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v3, Landroid/icu/text/RBBINode;->fFirstPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v3, Landroid/icu/text/RBBINode;->fLastPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v3, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v22, v0

    iget v0, v3, Landroid/icu/text/RBBINode;->fLastPos:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v3, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    move-object/from16 v0, v20

    iput-object v0, v3, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RBBISymbolTable;->addEntry(Ljava/lang/String;Landroid/icu/text/RBBINode;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x3

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto/16 :goto_0

    :pswitch_8
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->fixOpStack(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v22, "rtree"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    if-ltz v21, :cond_1

    const-string/jumbo v21, "end of rule"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->printNodeStack(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_3

    const/16 v21, 0x1

    :goto_1
    invoke-static/range {v21 .. v21}, Landroid/icu/impl/Assert;->assrt(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v18, v21, v22

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v6

    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move-object/from16 v0, v18

    iput-object v0, v4, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v6, v4, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aput-object v4, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Landroid/icu/text/RBBINode;->fVal:I

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Landroid/icu/text/RBBINode;->fLookAheadEnd:Z

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    aget-object v21, v21, v5

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v18, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    aget-object v12, v21, v5

    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v10

    iput-object v12, v10, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v10, v12, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    move-object/from16 v0, v18

    iput-object v0, v10, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    move-object/from16 v0, v18

    iput-object v10, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    aput-object v10, v21, v5

    :goto_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto/16 :goto_0

    :cond_3
    const/16 v21, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v5, v0, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v23, v0

    aget-object v22, v22, v23

    aput-object v22, v21, v5

    goto :goto_3

    :pswitch_9
    const v21, 0x10204

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_a
    const v21, 0x10204

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v8, v21, v22

    const/16 v21, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v11

    iput-object v8, v11, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v11, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v8, v21, v22

    const/16 v21, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v13

    iput-object v8, v13, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object v13, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    add-int/lit8 v23, v22, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v8, v21, v22

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v8, v0, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    move-object/from16 v0, v16

    iput-object v0, v8, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    goto/16 :goto_0

    :pswitch_e
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v15

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v7, v1}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v22, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_f
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v7

    sget-object v21, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v7, v2}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v22, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_10
    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRuleNum:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v22, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fLookAheadRule:Z

    goto/16 :goto_0

    :pswitch_11
    const/16 v21, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v7

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    goto/16 :goto_0

    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v7, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-char v0, v0

    move/from16 v21, v0

    const/16 v22, 0xa

    invoke-static/range {v21 .. v22}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v19

    iget v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0xa

    add-int v21, v21, v19

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fVal:I

    goto/16 :goto_0

    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v7, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v22, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_14
    const v21, 0x1020e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    goto/16 :goto_0

    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fOptionStart:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v21, "chain"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fChainRules:Z

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v21, "LBCMNoChain"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fLBCMNoChain:Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v21, "forward"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v21, "reverse"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v21, "safe_forward"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v21, "safe_reverse"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fDefaultTree:I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v21, "lookAheadHardBreak"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleBuilder;->fLookAheadHardBreak:Z

    goto/16 :goto_0

    :cond_c
    const v21, 0x1020d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_0

    :pswitch_17
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/icu/text/RBBIRuleScanner;->fReverseRule:Z

    goto/16 :goto_0

    :pswitch_18
    const/16 v21, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    goto/16 :goto_0

    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v7, v21, v22

    if-eqz v7, :cond_d

    iget v0, v7, Landroid/icu/text/RBBINode;->fType:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    :cond_d
    const v21, 0x10201

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    move-object/from16 v21, v0

    iget v0, v7, Landroid/icu/text/RBBINode;->fFirstPos:I

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x1

    iget v0, v7, Landroid/icu/text/RBBINode;->fLastPos:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    move-object/from16 v21, v0

    iget-object v0, v7, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/icu/text/RBBISymbolTable;->lookupNode(Ljava/lang/String;)Landroid/icu/text/RBBINode;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v7, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    move/from16 v22, v0

    aget-object v7, v21, v22

    iget-object v0, v7, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    const v21, 0x1020a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_1b
    const v21, 0x10206

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_1c
    const/4 v14, 0x0

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/RBBIRuleScanner;->scanSet()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_f
        :pswitch_7
        :pswitch_8
        :pswitch_19
        :pswitch_1c
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_e
        :pswitch_9
        :pswitch_1b
        :pswitch_1d
        :pswitch_10
        :pswitch_6
        :pswitch_11
        :pswitch_18
        :pswitch_12
        :pswitch_14
        :pswitch_13
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method error(I)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at line "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    if-eqz v1, :cond_1

    iget-object v5, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    iput-object v5, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v5, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget v5, v5, Landroid/icu/text/RBBINode;->fType:I

    if-ne v5, v3, :cond_0

    :goto_0
    invoke-static {v3}, Landroid/icu/impl/Assert;->assrt(Z)V

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    sget-object v5, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance p3, Landroid/icu/text/UnicodeSet;

    const v5, 0x10ffff

    invoke-direct {p3, v4, v5}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    :cond_2
    :goto_1
    new-instance v2, Landroid/icu/text/RBBINode;

    invoke-direct {v2, v3}, Landroid/icu/text/RBBINode;-><init>(I)V

    iput-object p3, v2, Landroid/icu/text/RBBINode;->fInputSet:Landroid/icu/text/UnicodeSet;

    iput-object p2, v2, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iput-object v2, p2, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iput-object p1, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fUSetNodes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;

    invoke-direct {v1}, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;-><init>()V

    iput-object p1, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    iput-object v2, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->val:Landroid/icu/text/RBBINode;

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fSetTable:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/icu/text/RBBIRuleScanner$RBBISetTableEl;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-static {p1, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    new-instance p3, Landroid/icu/text/UnicodeSet;

    invoke-direct {p3, v0, v0}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    goto :goto_1
.end method

.method fixOpStack(I)V
    .locals 5

    const/4 v3, 0x2

    :goto_0
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "RBBIRuleScanner.fixOpStack, bad operator node"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const v1, 0x10201

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    return-void

    :cond_0
    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-lt v1, p1, :cond_1

    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-gt v1, v3, :cond_4

    :cond_1
    if-gt p1, v3, :cond_3

    iget v1, v0, Landroid/icu/text/RBBINode;->fPrecedence:I

    if-eq v1, p1, :cond_2

    const v1, 0x10208

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    :cond_2
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v1, v1, v2

    iput-object v1, v0, Landroid/icu/text/RBBINode;->fRightChild:Landroid/icu/text/RBBINode;

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v1, v1, v2

    iput-object v0, v1, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    goto :goto_0
.end method

.method nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V
    .locals 7

    const/16 v6, 0x27

    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v3, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v3

    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v3, v3, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v3, v4}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v3

    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    iput-boolean v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v3, :cond_5

    iput-boolean v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v3, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x28

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    :goto_1
    iput-boolean v2, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    return-void

    :cond_4
    const/16 v1, 0x29

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    goto :goto_1

    :cond_5
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0x23

    if-ne v3, v4, :cond_7

    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    move-result v3

    iput v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v3, v5, :cond_7

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_8

    :cond_7
    :goto_2
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v3, v5, :cond_9

    return-void

    :cond_8
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0xa

    if-eq v3, v4, :cond_7

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0x85

    if-eq v3, v4, :cond_7

    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0x2028

    if-ne v3, v4, :cond_6

    goto :goto_2

    :cond_9
    iget v3, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    iput-boolean v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    new-array v0, v1, [I

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    aput v1, v0, v2

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v1

    iput v1, p1, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    aget v1, v0, v2

    iget v3, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    if-ne v1, v3, :cond_a

    const v1, 0x10202

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    :cond_a
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    aget v3, v0, v2

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    aget v1, v0, v2

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    goto :goto_0
.end method

.method nextCharLL()I
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, 0x0

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iget-object v2, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v2, v2, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    invoke-static {v1, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v1, v1, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v2, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/icu/text/UTF16;->moveCodePointOffset(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    if-eq v0, v6, :cond_1

    const/16 v1, 0x85

    if-ne v0, v1, :cond_3

    :cond_1
    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    iput v4, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    iget-boolean v1, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    if-eqz v1, :cond_2

    const v1, 0x10209

    invoke-virtual {p0, v1}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    iput-boolean v4, p0, Landroid/icu/text/RBBIRuleScanner;->fQuoteMode:Z

    :cond_2
    :goto_0
    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    return v0

    :cond_3
    const/16 v1, 0x2028

    if-eq v0, v1, :cond_1

    if-ne v0, v5, :cond_4

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fLastChar:I

    if-ne v1, v6, :cond_1

    :cond_4
    if-eq v0, v5, :cond_2

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    goto :goto_0
.end method

.method parse()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    :cond_1
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v9

    if-nez v5, :cond_2

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/16 v6, 0xa

    invoke-virtual {p0, v6}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v8}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v0

    sget-object v5, Landroid/icu/text/RBBIRuleScanner;->kAny:Ljava/lang/String;

    invoke-virtual {p0, v5, v0, v10}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v9

    iput-object v0, v5, Landroid/icu/text/RBBINode;->fLeftChild:Landroid/icu/text/RBBINode;

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v9

    iput-object v5, v0, Landroid/icu/text/RBBINode;->fParent:Landroid/icu/text/RBBINode;

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v5, v5, -0x2

    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    :cond_2
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v6, "symbols"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    invoke-virtual {v5}, Landroid/icu/text/RBBISymbolTable;->rbbiSymtablePrint()V

    :cond_3
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v6, "ptree"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "Completed Forward Rules Parse Tree..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v8

    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\nCompleted Reverse Rules Parse Tree..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v9

    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\nCompleted Safe Point Forward Rules Parse Tree..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v12

    if-nez v5, :cond_13

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "  -- null -- "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "\nCompleted Safe Point Reverse Rules Parse Tree..."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    if-nez v5, :cond_14

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "  -- null -- "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    sget-object v5, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    aget-object v2, v5, v1

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v6, "scan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "char, line, col = (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v7, v7, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\', "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fLineNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fCharNum:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "    state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_6
    move v3, v1

    :goto_3
    sget-object v5, Landroid/icu/text/RBBIRuleParseTable;->gRuleParseStateTable:[Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;

    aget-object v2, v5, v3

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v6, "scan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_7

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_7
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0x7f

    if-ge v5, v6, :cond_d

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v5, :cond_d

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    iget-object v6, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v6, v6, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-ne v5, v6, :cond_d

    :cond_8
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fDebugEnv:Ljava/lang/String;

    const-string/jumbo v6, "scan"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_9

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->doParseActions(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    if-eqz v5, :cond_b

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    const/16 v6, 0x64

    if-lt v5, v6, :cond_a

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "RBBIRuleScanner.parse() - state stack overflow."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v5, 0x10201

    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    :cond_a
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    iget-short v7, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    aput-short v7, v5, v6

    :cond_b
    iget-boolean v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->nextChar(Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;)V

    :cond_c
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    const/16 v6, 0xff

    if-eq v5, v6, :cond_12

    iget-short v1, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    goto/16 :goto_0

    :cond_d
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xff

    if-eq v5, v6, :cond_8

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xfe

    if-ne v5, v6, :cond_e

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v5, :cond_8

    :cond_e
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xfd

    if-ne v5, v6, :cond_f

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v6, 0x50

    if-eq v5, v6, :cond_8

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    const/16 v6, 0x70

    if-eq v5, v6, :cond_8

    :cond_f
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xfc

    if-ne v5, v6, :cond_10

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v5, v11, :cond_8

    :cond_10
    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0x80

    if-lt v5, v6, :cond_11

    iget-short v5, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    const/16 v6, 0xf0

    if-ge v5, v6, :cond_11

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget-boolean v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fEscaped:Z

    if-nez v5, :cond_11

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    if-eq v5, v11, :cond_11

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRuleSets:[Landroid/icu/text/UnicodeSet;

    iget-short v6, v2, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    add-int/lit8 v6, v6, -0x80

    aget-object v4, v5, v6

    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fC:Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;

    iget v5, v5, Landroid/icu/text/RBBIRuleScanner$RBBIRuleChar;->fChar:I

    invoke-virtual {v4, v5}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_8

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    :cond_12
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStack:[S

    iget v6, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    aget-short v1, v5, v6

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    iget v5, p0, Landroid/icu/text/RBBIRuleScanner;->fStackPtr:I

    if-gez v5, :cond_0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v6, "RBBIRuleScanner.parse() - state stack underflow."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v5, 0x10201

    invoke-virtual {p0, v5}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto/16 :goto_0

    :cond_13
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    aget-object v5, v5, v12

    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    goto/16 :goto_1

    :cond_14
    iget-object v5, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v5, v5, Landroid/icu/text/RBBIRuleBuilder;->fTreeRoots:[Landroid/icu/text/RBBINode;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5, v9}, Landroid/icu/text/RBBINode;->printTree(Z)V

    goto/16 :goto_2
.end method

.method printNodeStack(Ljava/lang/String;)V
    .locals 4

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".  Dumping node stack...\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/text/RBBINode;->printTree(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method pushNewNode(I)Landroid/icu/text/RBBINode;
    .locals 3

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    iget v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "RBBIRuleScanner.pushNewNode - stack overflow."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v0, 0x10201

    invoke-virtual {p0, v0}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    :cond_0
    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    new-instance v2, Landroid/icu/text/RBBINode;

    invoke-direct {v2, p1}, Landroid/icu/text/RBBINode;-><init>(I)V

    aput-object v2, v0, v1

    iget-object v0, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStack:[Landroid/icu/text/RBBINode;

    iget v1, p0, Landroid/icu/text/RBBIRuleScanner;->fNodeStackPtr:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method scanSet()V
    .locals 10

    const/4 v5, 0x0

    new-instance v3, Ljava/text/ParsePosition;

    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    invoke-direct {v3, v7}, Ljava/text/ParsePosition;-><init>(I)V

    iget v4, p0, Landroid/icu/text/RBBIRuleScanner;->fScanIndex:I

    :try_start_0
    new-instance v6, Landroid/icu/text/UnicodeSet;

    iget-object v7, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/text/RBBIRuleScanner;->fSymbolTable:Landroid/icu/text/RBBISymbolTable;

    const/4 v9, 0x1

    invoke-direct {v6, v7, v3, v8, v9}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;Ljava/text/ParsePosition;Landroid/icu/text/SymbolTable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    :goto_0
    invoke-virtual {v5}, Landroid/icu/text/UnicodeSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x1020c

    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    :cond_0
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    :goto_1
    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    if-lt v7, v1, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->pushNewNode(I)Landroid/icu/text/RBBINode;

    move-result-object v2

    iput v4, v2, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v7, p0, Landroid/icu/text/RBBIRuleScanner;->fNextIndex:I

    iput v7, v2, Landroid/icu/text/RBBINode;->fLastPos:I

    iget-object v7, p0, Landroid/icu/text/RBBIRuleScanner;->fRB:Landroid/icu/text/RBBIRuleBuilder;

    iget-object v7, v7, Landroid/icu/text/RBBIRuleBuilder;->fRules:Ljava/lang/String;

    iget v8, v2, Landroid/icu/text/RBBINode;->fFirstPos:I

    iget v9, v2, Landroid/icu/text/RBBINode;->fLastPos:I

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    iget-object v7, v2, Landroid/icu/text/RBBINode;->fText:Ljava/lang/String;

    invoke-virtual {p0, v7, v2, v5}, Landroid/icu/text/RBBIRuleScanner;->findSetFor(Ljava/lang/String;Landroid/icu/text/RBBINode;Landroid/icu/text/UnicodeSet;)V

    return-void

    :catch_0
    move-exception v0

    const v7, 0x1020f

    invoke-virtual {p0, v7}, Landroid/icu/text/RBBIRuleScanner;->error(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/RBBIRuleScanner;->nextCharLL()I

    goto :goto_1
.end method
