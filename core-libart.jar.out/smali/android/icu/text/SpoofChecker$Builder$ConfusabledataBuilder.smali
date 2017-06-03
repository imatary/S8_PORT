.class Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConfusabledataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringComparator;,
        Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private fKeySet:Landroid/icu/text/UnicodeSet;

.field private fKeyVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fLineNum:I

.field private fMATable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fMLTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fParseHexNum:Ljava/util/regex/Pattern;

.field private fParseLine:Ljava/util/regex/Pattern;

.field private fSATable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fSLTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;"
        }
    .end annotation
.end field

.field private fStringLengthsTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fStringTable:Ljava/lang/StringBuffer;

.field private fValueVec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;-><init>()V

    iput-object v0, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    return-void
.end method

.method public static buildConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;

    invoke-direct {v0}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V

    return-void
.end method


# virtual methods
.method addKeyEntry(ILjava/util/Hashtable;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    if-nez v9, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v1, v10, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const v10, 0xffffff

    and-int/2addr v10, v2

    if-eq v10, p1, :cond_5

    :cond_1
    or-int v6, p1, p3

    if-eqz v3, :cond_2

    const/high16 v10, 0x10000000

    or-int/2addr v6, v10

    :cond_2
    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    const/4 v10, 0x3

    if-le v0, v10, :cond_3

    const/4 v0, 0x3

    :cond_3
    shl-int/lit8 v10, v0, 0x1d

    or-int/2addr v6, v10

    iget v5, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v3, :cond_4

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v8, v10, -0x2

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/high16 v10, 0x10000000

    or-int/2addr v7, v10

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, v1}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->getMapping(I)Ljava/lang/String;

    move-result-object v4

    iget-object v10, v9, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    or-int/2addr v2, p3

    iget-object v10, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    const/4 v3, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method build(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V

    const-string/jumbo v32, "(?m)^[ \\t]*([0-9A-Fa-f]+)[ \\t]+;[ \\t]*([0-9A-Fa-f]+(?:[ \\t]+[0-9A-Fa-f]+)*)[ \\t]*;\\s*(?:(SL)|(SA)|(ML)|(MA))[ \\t]*(?:#.*?)?$|^([ \\t]*(?:#.*?)?)$|^(.*?)$"

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    const-string/jumbo v32, "\\s*([0-9A-F]+)"

    invoke-static/range {v32 .. v32}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v32

    const v33, 0xfeff

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    const/16 v32, 0x0

    const/16 v33, 0x20

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseLine:Ljava/util/regex/Pattern;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    :cond_1
    :goto_0
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    if-eqz v32, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    move/from16 v32, v0

    add-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    const/16 v32, 0x7

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v32

    if-gez v32, :cond_1

    const/16 v32, 0x8

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v32

    if-ltz v32, :cond_2

    new-instance v32, Ljava/text/ParseException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Confusables, line "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ": Unrecognized Line: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x8

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v34

    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v32

    :cond_2
    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x10

    invoke-static/range {v32 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    const v32, 0x10ffff

    move/from16 v0, v32

    if-le v8, v0, :cond_3

    new-instance v32, Ljava/text/ParseException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Confusables, line "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ": Bad code point: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v34

    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v32

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fParseHexNum:Ljava/util/regex/Pattern;

    move-object/from16 v32, v0

    const/16 v33, 0x2

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v32

    if-eqz v32, :cond_5

    const/16 v32, 0x1

    move/from16 v0, v32

    invoke-virtual {v13, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    const/16 v33, 0x10

    invoke-static/range {v32 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    const v32, 0x10ffff

    move/from16 v0, v32

    if-le v8, v0, :cond_4

    new-instance v32, Ljava/text/ParseException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Confusables, line "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ": Bad code point: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x10

    move/from16 v0, v34

    invoke-static {v3, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x2

    move/from16 v0, v34

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v34

    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v32

    :cond_4
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_7

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_6

    const/16 v32, 0x1

    :goto_2
    if-nez v32, :cond_7

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_6
    const/16 v32, 0x0

    goto :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    move-object/from16 v32, v0

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->addString(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v25

    const/16 v32, 0x3

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v32

    if-ltz v32, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    :goto_3
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_d

    if-eqz v29, :cond_c

    const/16 v32, 0x1

    :goto_4
    if-nez v32, :cond_d

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_8
    const/16 v32, 0x4

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v32

    if-ltz v32, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    goto :goto_3

    :cond_9
    const/16 v32, 0x5

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v32

    if-ltz v32, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    goto :goto_3

    :cond_a
    const/16 v32, 0x6

    move/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v32

    if-ltz v32, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    move-object/from16 v29, v0

    goto :goto_3

    :cond_b
    const/16 v29, 0x0

    goto :goto_3

    :cond_c
    const/16 v32, 0x0

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_e

    new-instance v32, Ljava/text/ParseException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Confusables, line "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fLineNum:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, ": Table must be \'MA\'."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-direct/range {v32 .. v34}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v32

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->sort()V

    new-instance v32, Ljava/lang/StringBuffer;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    const/16 v23, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->size()I

    move-result v19

    const/4 v5, 0x0

    :goto_5
    move/from16 v0, v19

    if-ge v5, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->stringPool:Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUStringPool;->getByIndex(I)Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->length()I

    move-result v26

    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_11

    move/from16 v0, v27

    move/from16 v1, v23

    if-lt v0, v1, :cond_10

    const/16 v32, 0x1

    :goto_6
    if-nez v32, :cond_11

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_10
    const/16 v32, 0x0

    goto :goto_6

    :cond_11
    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->charAt(I)C

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, v24

    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    :goto_7
    move/from16 v23, v27

    move/from16 v22, v26

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_12
    move/from16 v0, v27

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    const/16 v32, 0x4

    move/from16 v0, v23

    move/from16 v1, v32

    if-lt v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move/from16 v0, v26

    move-object/from16 v1, v24

    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStrTableIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder$SPUString;->fStr:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_14
    const/16 v32, 0x4

    move/from16 v0, v23

    move/from16 v1, v32

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeySet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_16

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/16 v32, 0x0

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSLTable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    const/high16 v33, 0x1000000

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fSATable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    const/high16 v33, 0x2000000

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMLTable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    const/high16 v33, 0x4000000

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fMATable:Ljava/util/Hashtable;

    move-object/from16 v32, v0

    const/high16 v33, 0x8000000

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v8, v1, v2}, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->addKeyEntry(ILjava/util/Hashtable;I)V

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    const/16 v20, 0x0

    const/4 v5, 0x0

    :goto_9
    move/from16 v0, v16

    if-ge v5, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_18

    const v32, 0xffffff

    and-int v32, v32, v7

    const v33, 0xffffff

    and-int v33, v33, v20

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_17

    const/16 v32, 0x1

    :goto_a
    if-nez v32, :cond_18

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_17
    const/16 v32, 0x0

    goto :goto_a

    :cond_18
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_1a

    const/high16 v32, -0x1000000

    and-int v32, v32, v7

    if-eqz v32, :cond_19

    const/16 v32, 0x1

    :goto_b
    if-nez v32, :cond_1a

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_19
    const/16 v32, 0x0

    goto :goto_b

    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    move-object/from16 v32, v0

    aput v7, v32, v5

    move/from16 v20, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v17

    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_1d

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    const/16 v32, 0x1

    :goto_c
    if-nez v32, :cond_1d

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_1c
    const/16 v32, 0x0

    goto :goto_c

    :cond_1d
    move/from16 v0, v17

    new-array v0, v0, [S

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_d
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_20

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v30

    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_1f

    const v32, 0xffff

    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    const/16 v32, 0x1

    :goto_e
    if-nez v32, :cond_1f

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_1e
    const/16 v32, 0x0

    goto :goto_e

    :cond_1f
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    move-object/from16 v32, v0

    add-int/lit8 v6, v5, 0x1

    move/from16 v0, v30

    int-to-short v0, v0

    move/from16 v33, v0

    aput-short v33, v32, v5

    move v5, v6

    goto :goto_d

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/16 v21, 0x0

    div-int/lit8 v28, v12, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    const/4 v5, 0x0

    :goto_f
    move/from16 v0, v28

    if-ge v5, v0, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    mul-int/lit8 v33, v5, 0x2

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    mul-int/lit8 v33, v5, 0x2

    add-int/lit8 v33, v33, 0x1

    invoke-virtual/range {v32 .. v33}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_22

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v18

    move/from16 v1, v32

    if-ge v0, v1, :cond_21

    const/16 v32, 0x1

    :goto_10
    if-nez v32, :cond_22

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_21
    const/16 v32, 0x0

    goto :goto_10

    :cond_22
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_24

    const/16 v32, 0x28

    move/from16 v0, v32

    if-ge v11, v0, :cond_23

    const/16 v32, 0x1

    :goto_11
    if-nez v32, :cond_24

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_23
    const/16 v32, 0x0

    goto :goto_11

    :cond_24
    sget-boolean v32, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v32, :cond_26

    move/from16 v0, v21

    if-le v11, v0, :cond_25

    const/16 v32, 0x1

    :goto_12
    if-nez v32, :cond_26

    new-instance v32, Ljava/lang/AssertionError;

    invoke-direct/range {v32 .. v32}, Ljava/lang/AssertionError;-><init>()V

    throw v32

    :cond_25
    const/16 v32, 0x0

    goto :goto_12

    :cond_26
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v32, v0

    new-instance v33, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    invoke-direct/range {v33 .. v33}, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;-><init>()V

    aput-object v33, v32, v5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v32, v0

    aget-object v32, v32, v5

    move/from16 v0, v18

    move-object/from16 v1, v32

    iput v0, v1, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    move-object/from16 v32, v0

    aget-object v32, v32, v5

    move-object/from16 v0, v32

    iput v11, v0, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    move/from16 v21, v11

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_f

    :cond_27
    return-void
.end method

.method getMapping(I)Ljava/lang/String;
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fKeyVec:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fValueVec:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2}, Landroid/icu/text/SpoofChecker;->getKeyLength(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    sget-boolean v6, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :pswitch_0
    new-array v0, v7, [C

    int-to-char v6, v5

    aput-char v6, v0, v8

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([C)V

    return-object v6

    :pswitch_1
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    add-int v7, v5, v4

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :pswitch_2
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v5, v3, :cond_1

    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringLengthsTable:Ljava/util/ArrayList;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_0
    sget-boolean v6, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->-assertionsDisabled:Z

    if-nez v6, :cond_3

    const/4 v6, 0x3

    if-lt v4, v6, :cond_2

    move v6, v7

    :goto_1
    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    iget-object v6, p0, Landroid/icu/text/SpoofChecker$Builder$ConfusabledataBuilder;->fStringTable:Ljava/lang/StringBuffer;

    add-int v7, v5, v4

    invoke-virtual {v6, v5, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_4
    const-string/jumbo v6, ""

    return-object v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
