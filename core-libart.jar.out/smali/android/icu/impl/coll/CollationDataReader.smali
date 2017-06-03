.class final Landroid/icu/impl/coll/CollationDataReader;
.super Ljava/lang/Object;
.source "CollationDataReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DATA_FORMAT:I = 0x55436f6c

.field private static final IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

.field static final IX_CE32S_OFFSET:I = 0xb

.field static final IX_CES_OFFSET:I = 0x9

.field static final IX_COMPRESSIBLE_BYTES_OFFSET:I = 0x11

.field static final IX_CONTEXTS_OFFSET:I = 0xd

.field static final IX_FAST_LATIN_TABLE_OFFSET:I = 0xf

.field static final IX_INDEXES_LENGTH:I = 0x0

.field static final IX_JAMO_CE32S_START:I = 0x4

.field static final IX_OPTIONS:I = 0x1

.field static final IX_REORDER_CODES_OFFSET:I = 0x5

.field static final IX_REORDER_TABLE_OFFSET:I = 0x6

.field static final IX_RESERVED10_OFFSET:I = 0xa

.field static final IX_RESERVED18_OFFSET:I = 0x12

.field static final IX_RESERVED2:I = 0x2

.field static final IX_RESERVED3:I = 0x3

.field static final IX_RESERVED8_OFFSET:I = 0x8

.field static final IX_ROOT_ELEMENTS_OFFSET:I = 0xc

.field static final IX_SCRIPTS_OFFSET:I = 0x10

.field static final IX_TOTAL_SIZE:I = 0x13

.field static final IX_TRIE_OFFSET:I = 0x7

.field static final IX_UNSAFE_BWD_OFFSET:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/icu/impl/coll/CollationDataReader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/coll/CollationDataReader;->-assertionsDisabled:Z

    new-instance v0, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;-><init>(Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;)V

    sput-object v0, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

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

.method static read(Landroid/icu/impl/coll/CollationTailoring;Ljava/nio/ByteBuffer;Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v43, Landroid/icu/impl/coll/CollationDataReader;->IS_ACCEPTABLE:Landroid/icu/impl/coll/CollationDataReader$IsAcceptable;

    const v44, 0x55436f6c

    move-object/from16 v0, p1

    move/from16 v1, v44

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p2

    iput v0, v1, Landroid/icu/impl/coll/CollationTailoring;->version:I

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v43

    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationTailoring;->getUCAVersion()I

    move-result v44

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_0

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Tailoring UCA version differs from base data UCA version"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v19

    const/16 v43, 0x8

    move/from16 v0, v19

    move/from16 v1, v43

    if-ge v0, v1, :cond_1

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "not enough bytes"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    const/16 v43, 0x2

    move/from16 v0, v21

    move/from16 v1, v43

    if-lt v0, v1, :cond_2

    mul-int/lit8 v43, v21, 0x4

    move/from16 v0, v19

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    :cond_2
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "not enough indexes"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_3
    const/16 v43, 0x14

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v43, 0x0

    aput v21, v18, v43

    const/16 v16, 0x1

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v43

    aput v43, v18, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_4
    move/from16 v16, v21

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_5

    const/16 v43, -0x1

    aput v43, v18, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v21

    move/from16 v1, v43

    if-le v0, v1, :cond_6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v43, v0

    sub-int v43, v21, v43

    mul-int/lit8 v43, v43, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :cond_6
    const/16 v43, 0x13

    move/from16 v0, v21

    move/from16 v1, v43

    if-le v0, v1, :cond_7

    const/16 v43, 0x13

    aget v24, v18, v43

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "not enough bytes"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_7
    const/16 v43, 0x5

    move/from16 v0, v21

    move/from16 v1, v43

    if-le v0, v1, :cond_8

    add-int/lit8 v43, v21, -0x1

    aget v24, v18, v43

    goto :goto_2

    :cond_8
    const/16 v24, 0x0

    goto :goto_2

    :cond_9
    if-nez p0, :cond_a

    const/4 v6, 0x0

    :goto_3
    const/16 v20, 0x5

    aget v25, v18, v20

    const/16 v43, 0x6

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x4

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_f

    if-nez v6, :cond_b

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Collation base data must not reorder scripts"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_3

    :cond_b
    div-int/lit8 v29, v24, 0x4

    and-int/lit8 v43, v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v28

    const/16 v30, 0x0

    :goto_4
    move/from16 v0, v30

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    sub-int v43, v29, v30

    add-int/lit8 v43, v43, -0x1

    aget v43, v28, v43

    const/high16 v44, -0x10000

    and-int v43, v43, v44

    if-eqz v43, :cond_c

    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    :cond_c
    sget-boolean v43, Landroid/icu/impl/coll/CollationDataReader;->-assertionsDisabled:Z

    if-nez v43, :cond_e

    move/from16 v0, v30

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    const/16 v43, 0x1

    :goto_5
    if-nez v43, :cond_e

    new-instance v43, Ljava/lang/AssertionError;

    invoke-direct/range {v43 .. v43}, Ljava/lang/AssertionError;-><init>()V

    throw v43

    :cond_d
    const/16 v43, 0x0

    goto :goto_5

    :cond_e
    sub-int v29, v29, v30

    :goto_6
    const/16 v31, 0x0

    const/16 v20, 0x6

    aget v25, v18, v20

    const/16 v43, 0x7

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x100

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_11

    if-nez v29, :cond_10

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Reordering table without reordering codes"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_f
    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    goto :goto_6

    :cond_10
    const/16 v43, 0x100

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move/from16 v0, v24

    add-int/lit16 v0, v0, -0x100

    move/from16 v24, v0

    :cond_11
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    if-eqz v6, :cond_12

    iget-wide v0, v6, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    move-wide/from16 v44, v0

    const/16 v43, 0x1

    aget v43, v18, v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0xff000000L

    and-long v46, v46, v48

    cmp-long v43, v44, v46

    if-eqz v43, :cond_12

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Tailoring numeric primary weight differs from base data"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_12
    const/4 v11, 0x0

    const/16 v20, 0x7

    aget v25, v18, v20

    const/16 v43, 0x8

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x8

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/icu/impl/coll/CollationTailoring;->ensureOwnedData()V

    move-object/from16 v0, p2

    iget-object v11, v0, Landroid/icu/impl/coll/CollationTailoring;->ownedData:Landroid/icu/impl/coll/CollationData;

    iput-object v6, v11, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    const/16 v43, 0x1

    aget v43, v18, v43

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0xff000000L

    and-long v44, v44, v46

    move-wide/from16 v0, v44

    iput-wide v0, v11, Landroid/icu/impl/coll/CollationData;->numericPrimary:J

    invoke-static/range {p1 .. p1}, Landroid/icu/impl/Trie2_32;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_32;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->trie:Landroid/icu/impl/Trie2_32;

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->trie:Landroid/icu/impl/Trie2_32;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/icu/impl/Trie2_32;->getSerializedLength()I

    move-result v40

    move/from16 v0, v40

    move/from16 v1, v24

    if-le v0, v1, :cond_13

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Not enough bytes for the mappings trie"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_13
    sub-int v24, v24, v40

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x8

    aget v25, v18, v20

    const/16 v43, 0x9

    aget v43, v18, v43

    sub-int v24, v43, v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x9

    aget v25, v18, v20

    const/16 v43, 0xa

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x8

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_17

    if-nez v11, :cond_16

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Tailored ces without tailored trie"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_14
    if-eqz v6, :cond_15

    move-object/from16 v0, p2

    iput-object v6, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    goto :goto_7

    :cond_15
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Missing collation data mappings"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_16
    div-int/lit8 v43, v24, 0x8

    and-int/lit8 v44, v24, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getLongs(Ljava/nio/ByteBuffer;II)[J

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->ces:[J

    :goto_8
    const/16 v20, 0xa

    aget v25, v18, v20

    const/16 v43, 0xb

    aget v43, v18, v43

    sub-int v24, v43, v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0xb

    aget v25, v18, v20

    const/16 v43, 0xc

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x4

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_1a

    if-nez v11, :cond_18

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Tailored ce32s without tailored trie"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_17
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    goto :goto_8

    :cond_18
    div-int/lit8 v43, v24, 0x4

    and-int/lit8 v44, v24, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    :goto_9
    const/16 v43, 0x4

    aget v22, v18, v43

    if-ltz v22, :cond_1d

    if-eqz v11, :cond_19

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    move-object/from16 v43, v0

    if-nez v43, :cond_1b

    :cond_19
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "JamoCE32sStart index into non-existent ce32s[]"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_1a
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    goto :goto_9

    :cond_1b
    const/16 v43, 0x43

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->ce32s:[I

    move-object/from16 v43, v0

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    move-object/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x43

    move-object/from16 v0, v43

    move/from16 v1, v22

    move-object/from16 v2, v44

    move/from16 v3, v45

    move/from16 v4, v46

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1c
    :goto_a
    const/16 v20, 0xc

    aget v25, v18, v20

    const/16 v43, 0xd

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x4

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_24

    div-int/lit8 v32, v24, 0x4

    if-nez v11, :cond_1f

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Root elements but no mappings"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_1d
    if-eqz v11, :cond_1c

    if-eqz v6, :cond_1e

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->jamoCE32s:[I

    goto :goto_a

    :cond_1e
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Missing Jamo CE32s for Hangul processing"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_1f
    const/16 v43, 0x4

    move/from16 v0, v32

    move/from16 v1, v43

    if-gt v0, v1, :cond_20

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Root elements array too short"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_20
    move/from16 v0, v32

    new-array v0, v0, [J

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    const/16 v16, 0x0

    :goto_b
    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_21

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    move-object/from16 v43, v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    aput-wide v44, v43, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    :cond_21
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    move-object/from16 v43, v0

    const/16 v44, 0x3

    aget-wide v8, v43, v44

    const-wide/32 v44, 0x5000500

    cmp-long v43, v8, v44

    if-eqz v43, :cond_22

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Common sec/ter weights in base data differ from the hardcoded value"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_22
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->rootElements:[J

    move-object/from16 v43, v0

    const/16 v44, 0x4

    aget-wide v36, v43, v44

    const/16 v43, 0x18

    ushr-long v44, v36, v43

    const-wide/16 v46, 0x45

    cmp-long v43, v44, v46

    if-gez v43, :cond_23

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "[fixed last secondary common byte] is too low"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_23
    and-int/lit8 v24, v24, 0x3

    :cond_24
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0xd

    aget v25, v18, v20

    const/16 v43, 0xe

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x2

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_26

    if-nez v11, :cond_25

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Tailored contexts without tailored trie"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_25
    div-int/lit8 v43, v24, 0x2

    and-int/lit8 v44, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->contexts:Ljava/lang/String;

    :goto_c
    const/16 v20, 0xe

    aget v25, v18, v20

    const/16 v43, 0xf

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x2

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_2d

    if-nez v11, :cond_27

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Unsafe-backward-set but no mappings"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_26
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    goto :goto_c

    :cond_27
    if-nez v6, :cond_28

    new-instance v43, Landroid/icu/text/UnicodeSet;

    const v44, 0xdc00

    const v45, 0xdfff

    invoke-direct/range {v43 .. v45}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    move-object/from16 v43, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Landroid/icu/impl/Normalizer2Impl;->addLcccChars(Landroid/icu/text/UnicodeSet;)V

    :goto_d
    new-instance v38, Landroid/icu/impl/USerializedSet;

    invoke-direct/range {v38 .. v38}, Landroid/icu/impl/USerializedSet;-><init>()V

    div-int/lit8 v43, v24, 0x2

    and-int/lit8 v44, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v42

    const/16 v24, 0x0

    const/16 v43, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v42

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/USerializedSet;->getSet([CI)Z

    invoke-virtual/range {v38 .. v38}, Landroid/icu/impl/USerializedSet;->countRanges()I

    move-result v10

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/16 v16, 0x0

    :goto_e
    move/from16 v0, v16

    if-ge v0, v10, :cond_29

    move-object/from16 v0, v38

    move/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/USerializedSet;->getRange(I[I)Z

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget v44, v27, v44

    const/16 v45, 0x1

    aget v45, v27, v45

    invoke-virtual/range {v43 .. v45}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v16, v16, 0x1

    goto :goto_e

    :cond_28
    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/icu/text/UnicodeSet;->cloneAsThawed()Landroid/icu/text/UnicodeSet;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    goto :goto_d

    :cond_29
    const/high16 v7, 0x10000

    const v23, 0xd800

    :goto_f
    const v43, 0xdc00

    move/from16 v0, v23

    move/from16 v1, v43

    if-ge v0, v1, :cond_2b

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    add-int/lit16 v0, v7, 0x3ff

    move/from16 v44, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v7, v1}, Landroid/icu/text/UnicodeSet;->containsNone(II)Z

    move-result v43

    if-nez v43, :cond_2a

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_2a
    add-int/lit8 v23, v23, 0x1

    add-int/lit16 v7, v7, 0x400

    goto :goto_f

    :cond_2b
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    :cond_2c
    :goto_10
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0xf

    aget v25, v18, v20

    const/16 v43, 0x10

    aget v43, v18, v43

    sub-int v24, v43, v25

    if-eqz v11, :cond_31

    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    const/16 v43, 0x1

    aget v43, v18, v43

    shr-int/lit8 v43, v43, 0x10

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_31

    const/16 v43, 0x2

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_30

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v14

    and-int/lit16 v15, v14, 0xff

    new-array v0, v15, [C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-char v14, v43, v44

    const/16 v16, 0x1

    :goto_11
    move/from16 v0, v16

    if-ge v0, v15, :cond_2f

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    move-object/from16 v43, v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v44

    aput-char v44, v43, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_11

    :cond_2d
    if-eqz v11, :cond_2c

    if-eqz v6, :cond_2e

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->unsafeBackwardSet:Landroid/icu/text/UnicodeSet;

    goto :goto_10

    :cond_2e
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Missing unsafe-backward-set"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_2f
    div-int/lit8 v43, v24, 0x2

    sub-int v39, v43, v15

    and-int/lit8 v43, v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v39

    move/from16 v2, v43

    invoke-static {v0, v1, v2}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v43

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    const/16 v24, 0x0

    shr-int/lit8 v43, v14, 0x8

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_31

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Fast-Latin table version differs from version in data header"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_30
    if-eqz v6, :cond_31

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->fastLatinTableHeader:[C

    :cond_31
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x10

    aget v25, v18, v20

    const/16 v43, 0x11

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x2

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_37

    if-nez v11, :cond_32

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Script order data but no mappings"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_32
    div-int/lit8 v34, v24, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/nio/CharBuffer;->get()C

    move-result v43

    move/from16 v0, v43

    iput v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iget v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    add-int/lit8 v43, v43, 0x10

    sub-int v33, v34, v43

    const/16 v43, 0x2

    move/from16 v0, v33

    move/from16 v1, v43

    if-gt v0, v1, :cond_33

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Script order data too short"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_33
    iget v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x10

    move/from16 v0, v43

    new-array v0, v0, [C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    move/from16 v0, v33

    new-array v0, v0, [C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aget-char v43, v43, v44

    if-nez v43, :cond_34

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-char v43, v43, v44

    const/16 v44, 0x300

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_35

    :cond_34
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Script order data not valid"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_35
    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v43, v0

    add-int/lit8 v44, v33, -0x1

    aget-char v43, v43, v44

    const v44, 0xff00

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_34

    :cond_36
    :goto_12
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x11

    aget v25, v18, v20

    const/16 v43, 0x12

    aget v43, v18, v43

    sub-int v24, v43, v25

    const/16 v43, 0x100

    move/from16 v0, v24

    move/from16 v1, v43

    if-lt v0, v1, :cond_3d

    if-nez v11, :cond_38

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Data for compressible primary lead bytes but no mappings"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_37
    if-eqz v11, :cond_36

    if-eqz v6, :cond_36

    iget v0, v6, Landroid/icu/impl/coll/CollationData;->numScripts:I

    move/from16 v43, v0

    move/from16 v0, v43

    iput v0, v11, Landroid/icu/impl/coll/CollationData;->numScripts:I

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptsIndex:[C

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->scriptStarts:[C

    goto :goto_12

    :cond_38
    const/16 v43, 0x100

    move/from16 v0, v43

    new-array v0, v0, [Z

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    const/16 v16, 0x0

    :goto_13
    const/16 v43, 0x100

    move/from16 v0, v16

    move/from16 v1, v43

    if-ge v0, v1, :cond_3a

    iget-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    move-object/from16 v44, v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v43

    if-eqz v43, :cond_39

    const/16 v43, 0x1

    :goto_14
    aput-boolean v43, v44, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_13

    :cond_39
    const/16 v43, 0x0

    goto :goto_14

    :cond_3a
    move/from16 v0, v24

    add-int/lit16 v0, v0, -0x100

    move/from16 v24, v0

    :cond_3b
    :goto_15
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    const/16 v20, 0x12

    aget v25, v18, v20

    const/16 v43, 0x13

    aget v43, v18, v43

    sub-int v24, v43, v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v41

    check-cast v41, Landroid/icu/impl/coll/CollationSettings;

    const/16 v43, 0x1

    aget v43, v18, v43

    const v44, 0xffff

    and-int v26, v43, v44

    const/16 v43, 0x180

    move/from16 v0, v43

    new-array v13, v0, [C

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-static {v0, v1, v13}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v12

    move-object/from16 v0, v41

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    move/from16 v43, v0

    move/from16 v0, v26

    move/from16 v1, v43

    if-ne v0, v1, :cond_3f

    move-object/from16 v0, v41

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-eqz v43, :cond_3f

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    move-object/from16 v43, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v43

    if-eqz v43, :cond_3f

    move-object/from16 v0, v41

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ne v12, v0, :cond_3f

    if-ltz v12, :cond_3c

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-static {v13, v0}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v43

    if-eqz v43, :cond_3f

    :cond_3c
    return-void

    :cond_3d
    if-eqz v11, :cond_3b

    if-eqz v6, :cond_3e

    iget-object v0, v6, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v0, v11, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    goto/16 :goto_15

    :cond_3e
    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "Missing data for compressible primary lead bytes"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_3f
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object v35

    check-cast v35, Landroid/icu/impl/coll/CollationSettings;

    move/from16 v0, v26

    move-object/from16 v1, v35

    iput v0, v1, Landroid/icu/impl/coll/CollationSettings;->options:I

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v43, v0

    invoke-virtual/range {v35 .. v35}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v44

    move/from16 v0, v44

    add-int/lit16 v0, v0, 0x1000

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v44

    move-wide/from16 v0, v44

    move-object/from16 v2, v35

    iput-wide v0, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v43, v44, v46

    if-nez v43, :cond_40

    new-instance v43, Landroid/icu/util/ICUException;

    const-string/jumbo v44, "The maxVariable could not be mapped to a variableTop"

    invoke-direct/range {v43 .. v44}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v43

    :cond_40
    if-eqz v29, :cond_41

    move-object/from16 v0, v35

    move-object/from16 v1, v28

    move/from16 v2, v29

    move-object/from16 v3, v31

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->aliasReordering(Landroid/icu/impl/coll/CollationData;[II[B)V

    :cond_41
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    move-object/from16 v43, v0

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v35

    move-object/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, v35

    iput v0, v1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    return-void
.end method
