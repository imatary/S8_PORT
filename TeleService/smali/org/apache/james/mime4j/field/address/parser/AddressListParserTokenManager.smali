.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;


# static fields
.field static commentNest:I

.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v4

    const-string/jumbo v1, "\r"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\n"

    aput-object v1, v0, v7

    const-string/jumbo v1, ","

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, ":"

    aput-object v1, v0, v6

    const-string/jumbo v1, ";"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "<"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, ">"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "@"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "."

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string/jumbo v1, "INDOMAINLITERAL"

    aput-object v1, v0, v5

    const-string/jumbo v1, "INCOMMENT"

    aput-object v1, v0, v7

    const-string/jumbo v1, "NESTED_COMMENT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "INQUOTEDSTRING"

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide v2, 0x800443ffL

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/32 v2, 0x100400

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/16 v2, 0x400

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide/32 v2, 0x7feb8000

    aput-wide v2, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoMore:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x0
        0x2
        0x0
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const/4 v0, 0x3

    move v1, v0

    :goto_0
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x80000000

    aput v3, v2, v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final jjCheckNAdd(I)V
    .locals 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_0
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    const v5, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_9

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    :cond_3
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v3, v10, :cond_d

    return p2

    :pswitch_0
    const-wide v12, -0x5c00530600000000L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_6

    const/16 v11, 0xe

    if-le v5, v11, :cond_5

    const/16 v5, 0xe

    :cond_5
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_6
    const-wide v12, 0x100000200L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/16 v11, 0xa

    if-le v5, v11, :cond_7

    const/16 v5, 0xa

    :cond_7
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_1
    const-wide v12, 0x100000200L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/16 v5, 0xa

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_2
    const-wide v12, -0x5c00130600000000L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/16 v11, 0xe

    if-le v5, v11, :cond_8

    const/16 v5, 0xe

    :cond_8
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_c

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    :cond_a
    :goto_3
    if-eq v3, v10, :cond_3

    goto :goto_2

    :pswitch_3
    const-wide v12, 0x7fffffffc7fffffeL

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_a

    const/16 v11, 0xe

    if-le v5, v11, :cond_b

    const/16 v5, 0xe

    :cond_b
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v8, v12, v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    if-eq v3, v10, :cond_3

    goto :goto_4

    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    const v5, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    :cond_3
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v3, v10, :cond_a

    return p2

    :pswitch_0
    const/16 v11, 0x11

    if-le v5, v11, :cond_2

    const/16 v5, 0x11

    goto :goto_1

    :pswitch_1
    const/16 v11, 0x10

    if-le v5, v11, :cond_2

    const/16 v5, 0x10

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    :cond_6
    :goto_3
    if-eq v3, v10, :cond_3

    goto :goto_2

    :pswitch_2
    const-wide/32 v12, -0x38000001

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_7

    const/16 v11, 0x11

    if-le v5, v11, :cond_6

    const/16 v5, 0x11

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_3

    :pswitch_3
    const/16 v11, 0x10

    if-le v5, v11, :cond_6

    const/16 v5, 0x10

    goto :goto_3

    :pswitch_4
    const-wide/32 v12, -0x38000001

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_6

    const/16 v11, 0x11

    if-le v5, v11, :cond_6

    const/16 v5, 0x11

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v8, v12, v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    :cond_9
    :goto_5
    if-eq v3, v10, :cond_3

    goto :goto_4

    :pswitch_5
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x11

    if-le v5, v11, :cond_9

    const/16 v5, 0x11

    goto :goto_5

    :pswitch_6
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x10

    if-le v5, v11, :cond_9

    const/16 v5, 0x10

    goto :goto_5

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    const v5, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    :cond_3
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v3, v10, :cond_a

    return p2

    :pswitch_0
    const/16 v11, 0x17

    if-le v5, v11, :cond_2

    const/16 v5, 0x17

    goto :goto_1

    :pswitch_1
    const/16 v11, 0x15

    if-le v5, v11, :cond_2

    const/16 v5, 0x15

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    :cond_6
    :goto_3
    if-eq v3, v10, :cond_3

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x17

    if-le v5, v11, :cond_7

    const/16 v5, 0x17

    :cond_7
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_3

    :pswitch_3
    const/16 v11, 0x15

    if-le v5, v11, :cond_6

    const/16 v5, 0x15

    goto :goto_3

    :pswitch_4
    const/16 v11, 0x17

    if-le v5, v11, :cond_6

    const/16 v5, 0x17

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v8, v12, v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    :cond_9
    :goto_5
    if-eq v3, v10, :cond_3

    goto :goto_4

    :pswitch_5
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x17

    if-le v5, v11, :cond_9

    const/16 v5, 0x17

    goto :goto_5

    :pswitch_6
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x15

    if-le v5, v11, :cond_9

    const/16 v5, 0x15

    goto :goto_5

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    const v5, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_5

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    :cond_3
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v3, v10, :cond_a

    return p2

    :pswitch_0
    const/16 v11, 0x1b

    if-le v5, v11, :cond_2

    const/16 v5, 0x1b

    goto :goto_1

    :pswitch_1
    const/16 v11, 0x18

    if-le v5, v11, :cond_2

    const/16 v5, 0x18

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    :cond_6
    :goto_3
    if-eq v3, v10, :cond_3

    goto :goto_2

    :pswitch_2
    const/16 v11, 0x1b

    if-le v5, v11, :cond_7

    const/16 v5, 0x1b

    :cond_7
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_3

    :pswitch_3
    const/16 v11, 0x18

    if-le v5, v11, :cond_6

    const/16 v5, 0x18

    goto :goto_3

    :pswitch_4
    const/16 v11, 0x1b

    if-le v5, v11, :cond_6

    const/16 v5, 0x1b

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v8, v12, v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    :cond_9
    :goto_5
    if-eq v3, v10, :cond_3

    goto :goto_4

    :pswitch_5
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x1b

    if-le v5, v11, :cond_9

    const/16 v5, 0x1b

    goto :goto_5

    :pswitch_6
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x18

    if-le v5, v11, :cond_9

    const/16 v5, 0x18

    goto :goto_5

    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_4(II)I
    .locals 16

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v12, 0x0

    aput p1, v11, v12

    const v5, 0x7fffffff

    :goto_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjround:I

    const v12, 0x7fffffff

    if-ne v11, v12, :cond_0

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInitRounds()V

    :cond_0
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x40

    if-ge v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_0

    :cond_2
    :goto_1
    if-ne v3, v10, :cond_1

    :cond_3
    const v11, 0x7fffffff

    if-eq v5, v11, :cond_4

    move-object/from16 v0, p0

    iput v5, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    const v5, 0x7fffffff

    :cond_4
    add-int/lit8 p2, p2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    move-object/from16 v0, p0

    iput v10, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v10, v10, 0x3

    if-ne v3, v10, :cond_e

    return p2

    :pswitch_0
    const-wide v12, -0x400000001L

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/16 v11, 0x1e

    if-le v5, v11, :cond_5

    const/16 v5, 0x1e

    :cond_5
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :pswitch_1
    const/16 v11, 0x1d

    if-le v5, v11, :cond_2

    const/16 v5, 0x1d

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x80

    if-ge v11, v12, :cond_b

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v6, v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_1

    :cond_7
    :goto_3
    if-eq v3, v10, :cond_3

    goto :goto_2

    :pswitch_2
    const-wide/32 v12, -0x10000001

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_9

    const/16 v11, 0x1e

    if-le v5, v11, :cond_8

    const/16 v5, 0x1e

    :cond_8
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v12, 0x5c

    if-ne v11, v12, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v13, v12, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewStateCnt:I

    const/4 v13, 0x1

    aput v13, v11, v12

    goto :goto_3

    :pswitch_3
    const/16 v11, 0x1d

    if-le v5, v11, :cond_7

    const/16 v5, 0x1d

    goto :goto_3

    :pswitch_4
    const-wide/32 v12, -0x10000001

    and-long/2addr v12, v6

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_7

    const/16 v11, 0x1e

    if-le v5, v11, :cond_a

    const/16 v5, 0x1e

    :cond_a
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit16 v11, v11, 0xff

    shr-int/lit8 v4, v11, 0x6

    move-object/from16 v0, p0

    iget-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    const-wide/16 v12, 0x1

    shl-long v8, v12, v11

    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v11, v11, v3

    packed-switch v11, :pswitch_data_2

    :cond_c
    :goto_5
    if-eq v3, v10, :cond_3

    goto :goto_4

    :pswitch_5
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    const/16 v11, 0x1e

    if-le v5, v11, :cond_d

    const/16 v5, 0x1e

    :cond_d
    const/4 v11, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    :pswitch_6
    sget-object v11, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v12, v11, v4

    and-long/2addr v12, v8

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_c

    const/16 v11, 0x1d

    if-le v5, v11, :cond_c

    const/16 v5, 0x1d

    goto :goto_5

    :cond_e
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v11}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v11

    move-object/from16 v0, p0

    iput-char v11, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    return p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_1
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_2
    const/16 v0, 0x1c

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_3
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_5
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_6
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_7
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_8
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_a
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_b
    const/16 v0, 0xf

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_1
        0x22 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2c -> :sswitch_4
        0x2e -> :sswitch_5
        0x3a -> :sswitch_6
        0x3b -> :sswitch_7
        0x3c -> :sswitch_8
        0x3e -> :sswitch_9
        0x40 -> :sswitch_a
        0x5b -> :sswitch_b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x12

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x16

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x19

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0x1a

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_4()I
    .locals 2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x1f

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStopAtPos(II)I
    .locals 1

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    const/4 v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/address/parser/Token;)V
    .locals 4

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 18

    const/4 v14, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->BeginToken()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjimageLen:I

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const v4, 0x7fffffff

    if-eq v2, v4, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    sub-int v4, v10, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    :cond_1
    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoToken:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v8, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v2, v2, 0x3f

    const-wide/16 v16, 0x1

    shl-long v16, v16, v2

    and-long v8, v8, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v13

    iput-object v14, v13, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/address/parser/Token;)V

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_2
    return-object v13

    :catch_0
    move-exception v11

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v13

    iput-object v14, v13, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v13

    :pswitch_0
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v10

    goto :goto_2

    :pswitch_1
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v10

    goto/16 :goto_2

    :pswitch_2
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v10

    goto/16 :goto_2

    :pswitch_3
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v10

    goto/16 :goto_2

    :pswitch_4
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedPos:I

    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v10

    goto/16 :goto_2

    :cond_3
    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSkip:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v8, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v2, v2, 0x3f

    const-wide/16 v16, 0x1

    shl-long v16, v16, v2

    and-long v8, v8, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-eqz v2, :cond_6

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjtoSpecial:[J

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v8, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v2, v2, 0x3f

    const-wide/16 v16, 0x1

    shl-long v16, v16, v2

    and-long v8, v8, v16

    const-wide/16 v16, 0x0

    cmp-long v2, v8, v16

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v13

    if-nez v14, :cond_5

    move-object v14, v13

    :cond_4
    :goto_3
    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_0

    :cond_5
    iput-object v14, v13, Lorg/apache/james/mime4j/field/address/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v13, v14, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    move-object v14, v13

    goto :goto_3

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->MoreLexicalActions()V

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjnewLexState:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget v2, v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    :cond_7
    const/4 v10, 0x0

    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-result v2

    move-object/from16 v0, p0

    iput-char v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v12

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->readChar()C

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->backup(I)V

    const/4 v2, 0x1

    if-gt v10, v2, :cond_d

    const-string/jumbo v7, ""

    :cond_9
    :goto_5
    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curLexState:I

    move-object/from16 v0, p0

    iget-char v8, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v2

    :catch_2
    move-exception v12

    const/4 v3, 0x1

    const/4 v2, 0x1

    if-gt v10, v2, :cond_b

    const-string/jumbo v7, ""

    :goto_6
    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v4, 0xa

    if-eq v2, v4, :cond_a

    move-object/from16 v0, p0

    iget-char v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->curChar:C

    const/16 v4, 0xd

    if-ne v2, v4, :cond_c

    :cond_a
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .locals 4

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/address/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    sget-object v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput-object v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginLine:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->beginColumn:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->endLine:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->endColumn:I

    return-object v1
.end method
