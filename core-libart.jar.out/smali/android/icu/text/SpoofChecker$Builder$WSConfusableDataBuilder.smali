.class Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WSConfusableDataBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static parseExp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->-assertionsDisabled:Z

    const-string/jumbo v0, "(?m)^([ \\t]*(?:#.*?)?)$|^(?:\\s*([0-9A-F]{4,})(?:..([0-9A-F]{4,}))?\\s*;\\s*([A-Za-z]+)\\s*;\\s*([A-Za-z]+)\\s*;\\s*(?:(A)|(L))[ \\t]*(?:#.*?)?)$|^(.*?)$"

    sput-object v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->parseExp:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildWSConfusableData(Ljava/io/Reader;Landroid/icu/text/SpoofChecker$SpoofData;)V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v22, 0x0

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v17, 0x0

    const/16 v29, 0x0

    const/16 v27, 0x2

    new-instance v5, Landroid/icu/impl/Trie2Writable;

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-direct {v5, v0, v1}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    new-instance v18, Landroid/icu/impl/Trie2Writable;

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/Trie2Writable;-><init>(II)V

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    const/16 v37, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v37, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V

    sget-object v37, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->parseExp:Ljava/lang/String;

    invoke-static/range {v37 .. v37}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v22

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v37

    const v38, 0xfeff

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    const/16 v37, 0x0

    const/16 v38, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    :cond_0
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v19

    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->find()Z

    move-result v37

    if-eqz v37, :cond_d

    add-int/lit8 v17, v17, 0x1

    const/16 v37, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v37

    if-gez v37, :cond_1

    const/16 v37, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v37

    if-ltz v37, :cond_2

    new-instance v37, Ljava/text/ParseException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "ConfusablesWholeScript, line "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": Unrecognized input: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v19 .. v19}, Ljava/util/regex/Matcher;->start()I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v37

    :cond_2
    const/16 v37, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v33

    const v37, 0x10ffff

    move/from16 v0, v33

    move/from16 v1, v37

    if-le v0, v1, :cond_3

    new-instance v37, Ljava/text/ParseException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "ConfusablesWholeScript, line "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": out of range code point: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v37

    :cond_3
    move/from16 v10, v33

    const/16 v37, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v37

    if-ltz v37, :cond_4

    const/16 v37, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x10

    invoke-static/range {v37 .. v38}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    :cond_4
    const v37, 0x10ffff

    move/from16 v0, v37

    if-le v10, v0, :cond_5

    new-instance v37, Ljava/text/ParseException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "ConfusablesWholeScript, line "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": out of range code point: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v37

    :cond_5
    const/16 v37, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v32

    const/16 v37, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x100a

    move/from16 v0, v37

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v31

    const/16 v37, 0x100a

    move/from16 v0, v37

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/icu/lang/UCharacter;->getPropertyValueEnum(ILjava/lang/CharSequence;)I

    move-result v35

    const/16 v37, -0x1

    move/from16 v0, v31

    move/from16 v1, v37

    if-ne v0, v1, :cond_6

    new-instance v37, Ljava/text/ParseException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "ConfusablesWholeScript, line "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": Invalid script code t: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x4

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v37

    :cond_6
    const/16 v37, -0x1

    move/from16 v0, v35

    move/from16 v1, v37

    if-ne v0, v1, :cond_7

    new-instance v37, Ljava/text/ParseException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "ConfusablesWholeScript, line "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": Invalid script code t: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v37

    :cond_7
    move-object/from16 v34, v5

    const/16 v37, 0x7

    move-object/from16 v0, v19

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v37

    if-ltz v37, :cond_8

    move-object/from16 v34, v18

    :cond_8
    move/from16 v8, v33

    :goto_0
    if-gt v8, v10, :cond_1

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Landroid/icu/impl/Trie2Writable;->get(I)I

    move-result v30

    const/4 v7, 0x0

    if-lez v30, :cond_b

    sget-boolean v37, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->-assertionsDisabled:Z

    if-nez v37, :cond_a

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v30

    move/from16 v1, v37

    if-ge v0, v1, :cond_9

    const/16 v37, 0x1

    :goto_1
    if-nez v37, :cond_a

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    :cond_9
    const/16 v37, 0x0

    goto :goto_1

    :cond_a
    invoke-virtual/range {v29 .. v30}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    :goto_2
    iget-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->Union(I)V

    iget-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->Union(I)V

    invoke-static {v8}, Landroid/icu/lang/UScript;->getScript(I)I

    move-result v9

    move/from16 v0, v31

    if-eq v9, v0, :cond_c

    new-instance v37, Ljava/text/ParseException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "ConfusablesWholeScript, line "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ": Mismatch between source script and code point "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0x10

    move/from16 v0, v39

    invoke-static {v8, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    const/16 v39, 0x5

    move-object/from16 v0, v19

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->start(I)I

    move-result v39

    invoke-direct/range {v37 .. v39}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v37

    :cond_b
    new-instance v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    invoke-direct {v7}, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;-><init>()V

    iput v8, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->codePoint:I

    move-object/from16 v0, v34

    iput-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->trie:Landroid/icu/impl/Trie2Writable;

    new-instance v37, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct/range {v37 .. v37}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    move-object/from16 v0, v37

    iput-object v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v30

    move/from16 v0, v30

    iput v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    const/16 v37, 0x0

    move/from16 v0, v37

    iput v0, v7, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    move/from16 v1, v30

    invoke-virtual {v0, v8, v1}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_d
    const/16 v27, 0x2

    const/16 v21, 0x2

    :goto_3
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_10

    move-object/from16 v0, v29

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_e
    add-int/lit8 v28, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    add-int/lit8 v15, v21, 0x1

    :goto_5
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v15, v0, :cond_18

    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    iget-object v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/icu/text/SpoofChecker$ScriptSet;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-eqz v37, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    iget-object v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    if-eq v0, v1, :cond_f

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iput-object v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move/from16 v0, v21

    iput v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->index:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    move/from16 v37, v0

    move/from16 v0, v37

    iput v0, v14, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    :cond_f
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_10
    const/4 v11, 0x2

    :goto_6
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v11, v0, :cond_12

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-eq v0, v11, :cond_11

    iget-object v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->trie:Landroid/icu/impl/Trie2Writable;

    move-object/from16 v37, v0

    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->codePoint:I

    move/from16 v38, v0

    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    move/from16 v39, v0

    invoke-virtual/range {v37 .. v39}, Landroid/icu/impl/Trie2Writable;->set(II)Landroid/icu/impl/Trie2Writable;

    :cond_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_12
    new-instance v12, Landroid/icu/text/UnicodeSet;

    invoke-direct {v12}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/16 v37, 0x100a

    const/16 v38, 0x0

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v12, v0, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    new-instance v13, Landroid/icu/text/UnicodeSet;

    invoke-direct {v13}, Landroid/icu/text/UnicodeSet;-><init>()V

    const/16 v37, 0x100a

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v13, v0, v1}, Landroid/icu/text/UnicodeSet;->applyIntPropertyValue(II)Landroid/icu/text/UnicodeSet;

    invoke-virtual {v12, v13}, Landroid/icu/text/UnicodeSet;->addAll(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    const/16 v26, 0x0

    :goto_7
    invoke-virtual {v12}, Landroid/icu/text/UnicodeSet;->getRangeCount()I

    move-result v37

    move/from16 v0, v26

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/icu/text/UnicodeSet;->getRangeStart(I)I

    move-result v24

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/icu/text/UnicodeSet;->getRangeEnd(I)I

    move-result v23

    const/16 v37, 0x1

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v23

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    const/16 v37, 0x1

    const/16 v38, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/Trie2Writable;->setRange(IIIZ)Landroid/icu/impl/Trie2Writable;

    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :cond_13
    invoke-virtual {v5}, Landroid/icu/impl/Trie2Writable;->toTrie2_16()Landroid/icu/impl/Trie2_16;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    invoke-virtual/range {v18 .. v18}, Landroid/icu/impl/Trie2Writable;->toTrie2_16()Landroid/icu/impl/Trie2_16;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    move/from16 v0, v27

    new-array v0, v0, [Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    new-instance v38, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct/range {v38 .. v38}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    const/16 v39, 0x0

    aput-object v38, v37, v39

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    new-instance v38, Landroid/icu/text/SpoofChecker$ScriptSet;

    invoke-direct/range {v38 .. v38}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    const/16 v39, 0x1

    aput-object v38, v37, v39

    const/16 v25, 0x2

    const/4 v11, 0x2

    :goto_8
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v11, v0, :cond_17

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;

    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    move/from16 v37, v0

    move/from16 v0, v37

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_14
    sget-boolean v37, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder;->-assertionsDisabled:Z

    if-nez v37, :cond_16

    iget v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->rindex:I

    move/from16 v37, v0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ne v0, v1, :cond_15

    const/16 v37, 0x1

    :goto_a
    if-nez v37, :cond_16

    new-instance v37, Ljava/lang/AssertionError;

    invoke-direct/range {v37 .. v37}, Ljava/lang/AssertionError;-><init>()V

    throw v37

    :cond_15
    const/16 v37, 0x0

    goto :goto_a

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v37, v0

    iget-object v0, v6, Landroid/icu/text/SpoofChecker$Builder$WSConfusableDataBuilder$BuilderScriptSet;->sset:Landroid/icu/text/SpoofChecker$ScriptSet;

    move-object/from16 v38, v0

    aput-object v38, v37, v25

    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    :cond_17
    return-void

    :cond_18
    move/from16 v27, v28

    goto/16 :goto_4
.end method

.method static readWholeFileToString(Ljava/io/Reader;Ljava/lang/StringBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/LineNumberReader;

    invoke-direct {v1, p0}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
