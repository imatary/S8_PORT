.class Ljava/lang/CaseMapper;
.super Ljava/lang/Object;
.source "CaseMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/CaseMapper$1;
    }
.end annotation


# static fields
.field private static final EL_UPPER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/icu/text/Transliterator;",
            ">;"
        }
    .end annotation
.end field

.field private static final GREEK_CAPITAL_SIGMA:C = '\u03a3'

.field private static final GREEK_SMALL_FINAL_SIGMA:C = '\u03c2'

.field private static final LATIN_CAPITAL_I_WITH_DOT:C = '\u0130'

.field private static final upperValues:[C

.field private static final upperValues2:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "SS\u0000\u02bcN\u0000J\u030c\u0000\u0399\u0308\u0301\u03a5\u0308\u0301\u0535\u0552\u0000H\u0331\u0000T\u0308\u0000W\u030a\u0000Y\u030a\u0000A\u02be\u0000\u03a5\u0313\u0000\u03a5\u0313\u0300\u03a5\u0313\u0301\u03a5\u0313\u0342\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1fba\u0399\u0000\u0391\u0399\u0000\u0386\u0399\u0000\u0391\u0342\u0000\u0391\u0342\u0399\u0391\u0399\u0000\u1fca\u0399\u0000\u0397\u0399\u0000\u0389\u0399\u0000\u0397\u0342\u0000\u0397\u0342\u0399\u0397\u0399\u0000\u0399\u0308\u0300\u0399\u0308\u0301\u0399\u0342\u0000\u0399\u0308\u0342\u03a5\u0308\u0300\u03a5\u0308\u0301\u03a1\u0313\u0000\u03a5\u0342\u0000\u03a5\u0308\u0342\u1ffa\u0399\u0000\u03a9\u0399\u0000\u038f\u0399\u0000\u03a9\u0342\u0000\u03a9\u0342\u0399\u03a9\u0399\u0000FF\u0000FI\u0000FL\u0000FFIFFLST\u0000ST\u0000\u0544\u0546\u0000\u0544\u0535\u0000\u0544\u053b\u0000\u054e\u0546\u0000\u0544\u053d\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    const-string/jumbo v0, "\u000b\u0000\u000c\u0000\r\u0000\u000e\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>\u0000\u0000?@A\u0000BC\u0000\u0000\u0000\u0000D\u0000\u0000\u0000\u0000\u0000EFG\u0000HI\u0000\u0000\u0000\u0000J\u0000\u0000\u0000\u0000\u0000KL\u0000\u0000MN\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000OPQ\u0000RS\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000TUV\u0000WX\u0000\u0000\u0000\u0000Y"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues2:[C

    new-instance v0, Ljava/lang/CaseMapper$1;

    invoke-direct {v0}, Ljava/lang/CaseMapper$1;-><init>()V

    sput-object v0, Ljava/lang/CaseMapper;->EL_UPPER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isFinalSigma(Ljava/lang/String;I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-gtz p1, :cond_0

    return v5

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    :goto_0
    if-nez v2, :cond_2

    return v5

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    return v5

    :cond_5
    return v3
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "tr"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "az"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "lt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    invoke-static {p1, p0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0x130

    if-eq v0, v6, :cond_2

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    invoke-static {p1, p0}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_3
    const/16 v6, 0x3a3

    if-ne v0, v6, :cond_6

    invoke-static {p1, v2}, Ljava/lang/CaseMapper;->isFinalSigma(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v4, 0x3c2

    :goto_1
    if-eq v0, v4, :cond_5

    if-nez v5, :cond_4

    invoke-static {p1}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->setCharAt(IC)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    goto :goto_1

    :cond_7
    if-eqz v5, :cond_8

    :goto_2
    return-object v5

    :cond_8
    move-object v5, p1

    goto :goto_2
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;
    .locals 20

    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v17, "tr"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "az"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string/jumbo v17, "lt"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_1
    const-string/jumbo v17, "el"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    sget-object v17, Ljava/lang/CaseMapper;->EL_UPPER:Ljava/lang/ThreadLocal;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/icu/text/Transliterator;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/Transliterator;->transliterate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_2
    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move/from16 v4, p2

    move v6, v5

    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_c

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_3
    invoke-static {v3}, Ljava/lang/CaseMapper;->upperIndex(I)I

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_8

    if-eqz v12, :cond_4

    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v6, v0, :cond_4

    array-length v0, v12

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x6

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [C

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v12, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    move-object v12, v10

    :cond_4
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v14

    if-eqz v12, :cond_6

    add-int/lit8 v5, v6, 0x1

    aput-char v14, v12, v6

    :cond_5
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move v6, v5

    goto :goto_0

    :cond_6
    if-eq v3, v14, :cond_12

    if-nez v9, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/StringFactory;->newStringFromString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_7
    invoke-virtual {v9, v11, v14}, Ljava/lang/String;->setCharAt(IC)V

    move v5, v6

    goto :goto_1

    :cond_8
    mul-int/lit8 v13, v7, 0x3

    sget-object v17, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v18, v13, 0x2

    aget-char v16, v17, v18

    if-nez v12, :cond_a

    div-int/lit8 v17, p2, 0x6

    add-int v17, v17, p2

    add-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [C

    move v5, v11

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    :goto_2
    sget-object v17, Ljava/lang/CaseMapper;->upperValues:[C

    aget-char v15, v17, v13

    add-int/lit8 v6, v5, 0x1

    aput-char v15, v12, v5

    sget-object v17, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v18, v13, 0x1

    aget-char v15, v17, v18

    add-int/lit8 v5, v6, 0x1

    aput-char v15, v12, v6

    if-eqz v16, :cond_5

    add-int/lit8 v6, v5, 0x1

    aput-char v16, v12, v5

    move v5, v6

    goto :goto_1

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v12, v2, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_2

    :cond_a
    if-nez v16, :cond_b

    const/16 v17, 0x1

    :goto_3
    add-int v17, v17, v6

    array-length v0, v12

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_11

    array-length v0, v12

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x6

    add-int v17, v17, v18

    add-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    new-array v10, v0, [C

    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-static {v12, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    move-object v12, v10

    move v5, v6

    goto :goto_2

    :cond_b
    const/16 v17, 0x2

    goto :goto_3

    :cond_c
    if-nez v12, :cond_e

    if-eqz v9, :cond_d

    return-object v9

    :cond_d
    return-object p1

    :cond_e
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v6, :cond_f

    array-length v0, v12

    move/from16 v17, v0

    sub-int v17, v17, v6

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_10

    :cond_f
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v1, v6, v12}, Ljava/lang/String;-><init>(II[C)V

    :goto_4
    return-object v17

    :cond_10
    new-instance v17, Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v12, v1, v6}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    :cond_11
    move v5, v6

    goto/16 :goto_2

    :cond_12
    move v5, v6

    goto/16 :goto_1
.end method

.method private static upperIndex(I)I
    .locals 5

    const v4, 0xfb13

    const v3, 0xfb00

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/16 v1, 0xdf

    if-lt p0, v1, :cond_0

    const/16 v1, 0x587

    if-gt p0, v1, :cond_1

    sparse-switch p0, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    return v2

    :sswitch_1
    const/4 v1, 0x1

    return v1

    :sswitch_2
    const/4 v1, 0x2

    return v1

    :sswitch_3
    const/4 v1, 0x3

    return v1

    :sswitch_4
    const/4 v1, 0x4

    return v1

    :sswitch_5
    const/4 v1, 0x5

    return v1

    :cond_1
    const/16 v1, 0x1e96

    if-lt p0, v1, :cond_0

    const/16 v1, 0x1e9a

    if-gt p0, v1, :cond_2

    add-int/lit8 v1, p0, 0x6

    add-int/lit16 v0, v1, -0x1e96

    goto :goto_0

    :cond_2
    const/16 v1, 0x1f50

    if-lt p0, v1, :cond_3

    const/16 v1, 0x1ffc

    if-gt p0, v1, :cond_3

    sget-object v1, Ljava/lang/CaseMapper;->upperValues2:[C

    add-int/lit16 v2, p0, -0x1f50

    aget-char v0, v1, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    if-lt p0, v3, :cond_0

    const v1, 0xfb06

    if-gt p0, v1, :cond_4

    add-int/lit8 v1, p0, 0x5a

    sub-int v0, v1, v3

    goto :goto_0

    :cond_4
    if-lt p0, v4, :cond_0

    const v1, 0xfb17

    if-gt p0, v1, :cond_0

    add-int/lit8 v1, p0, 0x61

    sub-int v0, v1, v4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xdf -> :sswitch_0
        0x149 -> :sswitch_1
        0x1f0 -> :sswitch_2
        0x390 -> :sswitch_3
        0x3b0 -> :sswitch_4
        0x587 -> :sswitch_5
    .end sparse-switch
.end method
